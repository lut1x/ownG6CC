using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Microsoft.Win32;
using G6ControlCenter.Core;
using G6ControlCenter.Hardware;
using Forms = System.Windows.Forms;

namespace G6ControlCenter;

public partial class MainWindow : Window
{
    private readonly ControlSession session;
    private readonly CancellationTokenSource stop = new();
    private Task? polling;
    private Forms.NotifyIcon? tray;
    private Forms.ToolStripMenuItem? trayGame;
    private readonly Dictionary<Profile,System.Drawing.Icon> trayIcons=new();
    private Profile? displayedIcon;
    private bool startupSync;
    private bool initialized, busy, onAc, exiting;
    private QuickPanel? quick;
    private PanelSnapshot? lastSnapshot;
    private readonly bool smoke;
    private readonly string? screenshot;
    private readonly string? trayCheckReport;
    public MainWindow(bool preview, bool smoke = false, string? screenshot = null,string? trayCheckReport=null)
    {
        session = new(preview); this.smoke = smoke; this.screenshot = screenshot;this.trayCheckReport=trayCheckReport;
        InitializeComponent();
        Icon=IconArtwork.ApplicationIcon;BrandIcon.Source=IconArtwork.ApplicationIcon;
        ProfileIcon.Source=IconArtwork.ProfileImage(Profile.Work);
        AutoSportToggle.IsChecked = session.Settings.AutoSport;
        RefreshToggle.IsChecked = session.Settings.ManageRefresh;
        LightingToggle.IsChecked = session.Settings.ProfileLighting;
        NvidiaBatteryToggle.IsChecked = session.Settings.DisableNvidiaOnBattery;
        CpuCurveEditor.Edited += UpdateCurveLabels; GpuCurveEditor.Edited += UpdateCurveLabels;
        Loaded += OnLoaded; Closing += OnClosing;
        SourceInitialized += (_, _) => SetDarkTitle(this);
        StateChanged += (_, _) => MaximizeButton.Content=WindowState==WindowState.Maximized?"\uE923":"\uE922";
        SystemEvents.PowerModeChanged += PowerEvent;
        CreateTray(); UpdateEnabled();
    }
    [DllImport("dwmapi.dll")] private static extern int DwmSetWindowAttribute(IntPtr window, int attribute, ref int value, int size);
    internal static void SetDarkTitle(Window window){int dark=1;DwmSetWindowAttribute(new System.Windows.Interop.WindowInteropHelper(window).Handle,20,ref dark,4);}
    private async void OnLoaded(object sender, RoutedEventArgs e)
    {
        try
        {
            await session.Initialize(); initialized = true;
            await RefreshStartup();
            if(session.StockCpu is not null && session.StockGpu is not null)
            {
                CpuCurveEditor.Curve = Draft(session.Settings.CpuCurve, session.StockCpu);
                GpuCurveEditor.Curve = Draft(session.Settings.GpuCurve, session.StockGpu);
                UpdateCurveLabels(); CpuCurveEditor.InvalidateVisual(); GpuCurveEditor.InvalidateVisual();
            }
            RefreshCharge();
            var snapshot = await session.Poll(false); UpdateSnapshot(snapshot);
            if (!session.Preview && session.Ready) await Run(() => session.Apply(snapshot.Battery.OnAc ? Profile.Work : Profile.Battery));
            else SetStatus(session.Preview ? "Предпросмотр · реальные датчики, изменение настроек отключено" : session.HardwareError ?? "Нет доступа к контроллеру", !session.Preview);
            if(trayCheckReport is not null)
            {
                bool hidden=!IsVisible&&!ShowInTaskbar&&tray?.Visible==true;
                ShowPanel();await Task.Delay(100);bool opened=IsVisible&&ShowInTaskbar&&WindowState==WindowState.Normal;
                File.WriteAllText(trayCheckReport,System.Text.Json.JsonSerializer.Serialize(new{ok=hidden&&opened,startedHidden=hidden,openedFromTray=opened,hardwareReady=session.Ready}));
                await ExitAsync();return;
            }
            if(smoke)
            {
                MaximizeClick(this,new RoutedEventArgs());await Task.Delay(100);
                if(WindowState!=WindowState.Maximized)throw new InvalidOperationException("Не сработало разворачивание окна.");
                MaximizeClick(this,new RoutedEventArgs());await Task.Delay(100);
                if(WindowState!=WindowState.Normal)throw new InvalidOperationException("Не сработало восстановление окна.");
                MinimizeClick(this,new RoutedEventArgs());await Task.Delay(100);SystemCommands.RestoreWindow(this);await Task.Delay(100);
                if(WindowState!=WindowState.Normal)throw new InvalidOperationException("Не сработала кнопка сворачивания.");
                await Task.Delay(500); if(screenshot is not null) SaveScreenshot(screenshot);
                CoolingClick(this,new RoutedEventArgs()); await Task.Delay(200);
                if(screenshot is not null) SaveScreenshot(Path.Combine(Path.GetDirectoryName(screenshot)!,"cooling.png"));
                ContentScroll.ScrollToEnd();await Task.Delay(150);
                if(screenshot is not null)SaveScreenshot(Path.Combine(Path.GetDirectoryName(screenshot)!,"charge.png"));
                ChargeLimitBox.IsEnabled=true;ChargeLimitBox.IsDropDownOpen=true;await Task.Delay(100);
                if(screenshot is not null && ChargeLimitBox.Template.FindName("PART_Popup",ChargeLimitBox) is System.Windows.Controls.Primitives.Popup popup && popup.Child is FrameworkElement options)
                    SaveElement(options,Path.Combine(Path.GetDirectoryName(screenshot)!,"charge-options.png"));
                ChargeLimitBox.IsDropDownOpen=false;
                HomeClick(this,new RoutedEventArgs());
                quick=new QuickPanel(this);quick.Update(snapshot,session.Selected,false);quick.Show();await Task.Delay(150);
                if(screenshot is not null) SaveVisual(quick,Path.Combine(Path.GetDirectoryName(screenshot)!,"quick.png"));
                await ExitAsync(); return;
            }
            polling = PollLoop();
            if(screenshot is not null){await Task.Delay(1500);SaveScreenshot(screenshot);}
        }
        catch(Exception error) { SetStatus(error.Message,true); initialized=true; UpdateEnabled(); if(smoke) await ExitAsync(); }
    }
    private static FanCurve Draft(FanCurve? saved,FanCurve stock)
    {
        var curve=saved?.Copy()??stock.Copy();curve.First=stock.First;
        curve.High=new(Math.Min(90,Math.Max(curve.Middle.Temperature+3,curve.High.Temperature)),Math.Max(60,curve.High.Duty));
        try{curve.Validate();return curve;}catch{return new FanCurve{First=stock.First,Middle=new(60,Math.Max(stock.First.Duty,50)),High=new(80,80)};}
    }
    private async Task PollLoop()
    {
        while(!stop.IsCancellationRequested)
        {
            try { var value=await session.Poll(true); if(!exiting)UpdateSnapshot(value); }
            catch(Exception error) { if(!exiting)SetStatus(error.Message,true); }
            try { await Task.Delay(IsVisible ? (onAc?2000:4000) : (session.CurveActive||session.Cooling?2000:7000),stop.Token); }
            catch(OperationCanceledException){break;}
        }
    }
    private void UpdateSnapshot(PanelSnapshot s)
    {
        lastSnapshot=s;
        onAc=s.Battery.OnAc; SourceText.Text=onAc?"Питание от сети":"От батареи";
        if(s.Thermal is not null)
        {
            CpuTemperature.Text=s.Thermal.Cpu.Temperature+" °C";
            GpuTemperature.Text=s.Thermal.Gpu.Temperature==0?"Нет данных":s.Thermal.Gpu.Temperature+" °C";
            CpuFan.Text=$"{s.Thermal.Cpu.Rpm:N0} об/мин · {s.Thermal.Cpu.Percent:0}%";
            GpuFan.Text=$"{s.Thermal.Gpu.Rpm:N0} об/мин · {s.Thermal.Gpu.Percent:0}%";
            SampleTime.Text="Обновлено "+s.Thermal.At.ToLocalTime().ToString("HH:mm:ss");
        }
        else {CpuTemperature.Text=GpuTemperature.Text="— °C";CpuFan.Text=GpuFan.Text="Данные недоступны";SampleTime.Text="Нет свежих данных";}
        CpuLoadText.Text=double.IsFinite(s.CpuLoad)?$"Нагрузка {s.CpuLoad:0}%":"Нагрузка —";
        RefreshText.Text=s.Refresh>0?s.Refresh+" Гц":"Не определена";
        BatteryPercent.Text=s.Battery.Percent>=0?$"Батарея {s.Battery.Percent}%":"Батарея —";
        string capacity=s.Battery.RemainingWh.HasValue&&s.Battery.FullWh.HasValue?$"{s.Battery.RemainingWh:0.0} / {s.Battery.FullWh:0.0} Вт·ч":"Ёмкость недоступна";
        BatteryDetail.Text=capacity+(s.Battery.Seconds.HasValue&&!onAc?$" · около {s.Battery.Seconds.Value/3600} ч {s.Battery.Seconds.Value%3600/60} мин":s.Battery.Charging?" · заряжается":"");
        BatteryRate.Text=!onAc&&s.Battery.Watts.HasValue?$"Расход {s.Battery.Watts:0.0} Вт":onAc?"От сети":"Расход —";
        RefreshProfile(); UpdateEnabled();
        quick?.Update(s,session.Selected,session.Ready&&!session.Preview&&!busy);
        CurveStateText.Text=session.CurveActive?"Сейчас: пользовательская кривая":session.Cooling?"Сейчас: максимальное охлаждение":"Сейчас: штатное автоматическое охлаждение";
        if(s.Warning is not null)SetStatus(s.Warning);
        if(tray is not null)tray.Text=$"G6 · {ControlSession.Name(session.Selected)} · CPU {s.Thermal?.Cpu.Temperature.ToString()??"—"}°C";
    }
    private void RefreshProfile()
    {
        Profile p=session.Selected;
        if(displayedIcon!=p)
        {
            ProfileIcon.Source=IconArtwork.ProfileImage(p);
            if(tray is not null&&trayIcons.TryGetValue(p,out var selectedIcon))tray.Icon=selectedIcon;
            displayedIcon=p;
        }
        ProfileTitle.Text=ControlSession.Name(p);
        ProfileSubtitle.Text=p switch{Profile.Work=>"Тихо. Прохладно. Без лишнего.",Profile.Game=>"Штатная производительность. Питание от сети.",_=>"Экономия энергии без лишних фоновых опросов."};
        Color accent=(Color)ColorConverter.ConvertFromString(p switch{Profile.Work=>"#81B0FF",Profile.Game=>"#F2958D",_=>"#76D6AC"});
        Color soft=(Color)ColorConverter.ConvertFromString(p switch{Profile.Work=>"#263A55",Profile.Game=>"#482E33",_=>"#233E35"});
        Resources["AccentBrush"]=new SolidColorBrush(accent);Resources["SoftAccentBrush"]=new SolidColorBrush(soft);
        WorkButton.Background=p==Profile.Work?new SolidColorBrush(soft):new SolidColorBrush(Color.FromRgb(41,49,62));
        GameButton.Background=p==Profile.Game?new SolidColorBrush(soft):new SolidColorBrush(Color.FromRgb(41,49,62));
        BatteryButton.Background=p==Profile.Battery?new SolidColorBrush(soft):new SolidColorBrush(Color.FromRgb(41,49,62));
        CpuPolicy.Text=p==Profile.Game?"CPU до 100% · boost включён":p==Profile.Battery?"CPU до 85% · boost выключен":"Boost выключен · меньше нагрева";
        GpuPolicy.Text=p==Profile.Battery&&session.Settings.DisableNvidiaOnBattery?"RTX отключена штатным компонентом":"Энергосбережение GPU: управляет Windows";
        if(!session.Applied)CpuPolicy.Text="Профиль ещё не применялся";
        CoolButton.Content=session.Cooling?"Охлаждение включено":"Охладить · 60 с";
    }
    private void UpdateEnabled()
    {
        bool can=initialized&&session.Ready&&!session.Preview&&!busy;
        WorkButton.IsEnabled=can&&onAc;GameButton.IsEnabled=can&&onAc;
        GameHint.Text=onAc?"Только от сети":"Подключи питание";
        CoolButton.IsEnabled=AutoButton.IsEnabled=can;
        ApplyCurveButton.IsEnabled=can&&session.SupportsCurve;
        ChargeApplyButton.IsEnabled=can&&session.Charge is not null;
        ChargeLimitBox.IsEnabled=ChargeApplyButton.IsEnabled;
        AutoSportToggle.IsEnabled=initialized&&onAc&&!session.Preview;
        if(trayGame is not null)trayGame.Enabled=can&&onAc;
    }
    private void RefreshCharge()
    {
        var charge=session.Charge;ChargeAvailability.Text=charge is null?session.ChargeStatus:"Батарея перестанет заряжаться на выбранном уровне";
        ChargeText.Text=charge is null?"Порог заряда недоступен":charge.Enabled?$"Лимит {charge.Stop}%":"Заряд до 100%";
        ChargeLimitBox.Items.Clear();
        if(charge is not null)
        {
            foreach(int value in charge.Stops.Select(v=>(int)v).Where(v=>v>=50).Append(100).Distinct().Order())ChargeLimitBox.Items.Add(value);
            ChargeLimitBox.SelectedItem=charge.Enabled?charge.Stop:100;
        }
    }
    private async Task Run(Func<Task<string>> action)
    {
        if(busy||exiting)return;busy=true;UpdateEnabled();SetStatus("Применяем настройки…");
        try{SetStatus(await action());RefreshProfile();RefreshCharge();}
        catch(Exception error){SetStatus(error.Message,true);}
        finally{busy=false;UpdateEnabled();}
    }
    private void SetStatus(string text,bool error=false){StatusText.Text=text;StatusText.Foreground=new SolidColorBrush((Color)ColorConverter.ConvertFromString(error?"#F5A59E":"#A6B0C1"));}
    private async void WorkClick(object sender,RoutedEventArgs e)=>await Run(()=>session.Apply(Profile.Work));
    private async void GameClick(object sender,RoutedEventArgs e)=>await Run(()=>session.Apply(Profile.Game));
    private async void CoolClick(object sender,RoutedEventArgs e)=>await Run(session.Cool);
    private async void AutoClick(object sender,RoutedEventArgs e)=>await Run(session.Automatic);
    private void HomeClick(object sender,RoutedEventArgs e){HomePage.Visibility=Visibility.Visible;CoolingPage.Visibility=Visibility.Collapsed;PageHeading.Text="Главная";HomeNav.SetResourceReference(System.Windows.Controls.Control.BackgroundProperty,"SoftAccentBrush");CoolingNav.Background=Brushes.Transparent;ContentScroll.ScrollToTop();}
    private void CoolingClick(object sender,RoutedEventArgs e){HomePage.Visibility=Visibility.Collapsed;CoolingPage.Visibility=Visibility.Visible;PageHeading.Text="Охлаждение";CoolingNav.SetResourceReference(System.Windows.Controls.Control.BackgroundProperty,"SoftAccentBrush");HomeNav.Background=Brushes.Transparent;ContentScroll.ScrollToTop();CpuCurveEditor.InvalidateVisual();GpuCurveEditor.InvalidateVisual();}
    private void MinimizeClick(object sender,RoutedEventArgs e)=>SystemCommands.MinimizeWindow(this);
    private void MaximizeClick(object sender,RoutedEventArgs e){if(WindowState==WindowState.Maximized)SystemCommands.RestoreWindow(this);else SystemCommands.MaximizeWindow(this);}
    private void CloseClick(object sender,RoutedEventArgs e)=>Close();
    private void UpdateCurveLabels()
    {
        string Label(FanCurve? c)=>c is null?"Нет данных":$"{c.Middle.Temperature}° → {c.Middle.Duty}%   ·   {c.High.Temperature}° → {c.High.Duty}%";
        CpuCurveText.Text=Label(CpuCurveEditor.Curve);GpuCurveText.Text=Label(GpuCurveEditor.Curve);
    }
    private void ResetCurveClick(object sender,RoutedEventArgs e)
    {
        if(session.StockCpu is null||session.StockGpu is null)return;
        CpuCurveEditor.Curve=Draft(null,session.StockCpu);GpuCurveEditor.Curve=Draft(null,session.StockGpu);
        CpuCurveEditor.InvalidateVisual();GpuCurveEditor.InvalidateVisual();UpdateCurveLabels();
    }
    private async void ApplyCurveClick(object sender,RoutedEventArgs e)
    {
        if(CpuCurveEditor.Curve is not null&&GpuCurveEditor.Curve is not null)
            await Run(()=>session.Curve(CpuCurveEditor.Curve.Copy(),GpuCurveEditor.Curve.Copy()));
    }
    private async void ChargeClick(object sender,RoutedEventArgs e){if(ChargeLimitBox.SelectedItem is int value)await Run(()=>session.ChargeLimit(value));}
    private void SettingsChanged(object sender,RoutedEventArgs e)
    {
        if(!initialized)return;
        session.Settings.AutoSport=AutoSportToggle.IsChecked==true;
        session.Settings.ManageRefresh=RefreshToggle.IsChecked==true;
        session.Settings.ProfileLighting=LightingToggle.IsChecked==true;
        try{session.Settings.Save();SetStatus("Настройки сохранены · питание и подсветка применятся при выборе профиля");}catch(Exception error){SetStatus(error.Message,true);}
    }
    private async void NvidiaBatteryChanged(object sender,RoutedEventArgs e)
    {
        if(!initialized)return;
        session.Settings.DisableNvidiaOnBattery=NvidiaBatteryToggle.IsChecked==true;
        try { session.Settings.Save(); await Run(session.ApplyBatteryGpuPolicy); RefreshProfile(); }
        catch(Exception error){SetStatus(error.Message,true);}
    }
    private async Task RefreshStartup()
    {
        try
        {
            var state=await Task.Run(StartupRegistration.Read);
            startupSync=true;StartupToggle.IsChecked=state.Enabled;
            StartupDescription.Text=state.Enabled&&!state.CurrentLocation?"Папка изменилась: выключи и включи автозапуск заново":"В трее, через 10 секунд после входа в Windows";
        }
        catch(Exception error){StartupDescription.Text="Автозапуск недоступен: "+error.Message;}
        finally{startupSync=false;StartupToggle.IsEnabled=!session.Preview;}
    }
    private async void StartupChanged(object sender,RoutedEventArgs e)
    {
        if(!initialized||startupSync||session.Preview)return;
        bool enabled=StartupToggle.IsChecked==true;StartupToggle.IsEnabled=false;
        try{await Task.Run(()=>StartupRegistration.SetEnabled(enabled));SetStatus(enabled?"Автозапуск включён · запуск в трее при входе в Windows":"Автозапуск выключен");}
        catch(Exception error){SetStatus(error.Message,true);}
        finally{await RefreshStartup();}
    }
    private void CreateTray()
    {
        foreach(var p in new[]{Profile.Work,Profile.Game,Profile.Battery})trayIcons[p]=IconArtwork.Tray(p);
        tray=new Forms.NotifyIcon{Icon=trayIcons[Profile.Work],Text="G6 Control",Visible=!smoke};
        var menu=new Forms.ContextMenuStrip();
        menu.Items.Add("Открыть панель",null,(_,_)=>ShowPanel());
        menu.Items.Add("Компактный вид",null,(_,_)=>{quick??=new QuickPanel(this);if(lastSnapshot is not null)quick.Update(lastSnapshot,session.Selected,session.Ready&&!session.Preview&&!busy);Hide();quick.Show();quick.Activate();});
        menu.Items.Add(new Forms.ToolStripSeparator());
        menu.Items.Add("Работа",null,async(_,_)=>await Dispatcher.InvokeAsync(async()=>await Run(()=>session.Apply(Profile.Work))));
        trayGame=new Forms.ToolStripMenuItem("Игра",null,async(_,_)=>await Dispatcher.InvokeAsync(async()=>await Run(()=>session.Apply(Profile.Game))));menu.Items.Add(trayGame);
        menu.Items.Add("Вернуть автомат",null,async(_,_)=>await Dispatcher.InvokeAsync(async()=>await Run(session.Automatic)));
        menu.Items.Add(new Forms.ToolStripSeparator());menu.Items.Add("Выход",null,async(_,_)=>await Dispatcher.InvokeAsync(ExitAsync));
        tray.ContextMenuStrip=menu;tray.DoubleClick+=(_,_)=>ShowPanel();
    }
    private void ShowPanel(){ShowInTaskbar=true;ShowActivated=true;Show();WindowState=WindowState.Normal;Activate();}
    public void OpenPanel()=>ShowPanel();
    public Task QuickProfile(Profile p)=>Run(()=>session.Apply(p));
    public Task QuickCool()=>Run(session.Cool);
    public Task QuickAuto()=>Run(session.Automatic);
    private async void PowerEvent(object sender,PowerModeChangedEventArgs e)
    {
        if(exiting||!initialized)return;
        try
        {
            if(e.Mode==PowerModes.Suspend)await session.Suspend();
            else if(e.Mode==PowerModes.StatusChange)
            {
                string? message=await session.PowerSignal();
                if(message is not null){var state=await session.Poll(false);await Dispatcher.InvokeAsync(()=>{if(!exiting){UpdateSnapshot(state);SetStatus(message);}});}
            }
            else if(e.Mode==PowerModes.Resume&&!session.Preview)await Dispatcher.InvokeAsync(async()=>await Run(()=>session.Apply(WindowsBattery.Read().OnAc?Profile.Work:Profile.Battery)));
        }
        catch(Exception error){await Dispatcher.InvokeAsync(()=>SetStatus(error.Message,true));}
    }
    private void OnClosing(object? sender,CancelEventArgs e)
    {
        if(exiting)return;e.Cancel=true;Hide();
        if(tray is not null){tray.BalloonTipTitle="G6 Control";tray.BalloonTipText="Панель работает в трее. Для завершения выбери «Выход».";tray.ShowBalloonTip(1500);}
    }
    private async void ExitClick(object sender,RoutedEventArgs e)=>await ExitAsync();
    public async Task ExitAsync()
    {
        if(exiting)return;exiting=true;stop.Cancel();SystemEvents.PowerModeChanged-=PowerEvent;
        if(polling is not null)try{await polling;}catch{}
        await Task.Run(session.Dispose);tray?.Dispose();foreach(var icon in trayIcons.Values)icon.Dispose();if(quick is not null){quick.AllowClose=true;quick.Close();}Close();System.Windows.Application.Current.Shutdown();
    }
    private void SaveScreenshot(string path)
        => SaveVisual(this,path);
    private static void SaveVisual(Window window,string path)
    {
        window.UpdateLayout();SaveElement((FrameworkElement)window.Content,path);
    }
    private static void SaveElement(FrameworkElement visual,string path)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(Path.GetFullPath(path))!);visual.UpdateLayout();
        var bitmap=new RenderTargetBitmap((int)visual.ActualWidth,(int)visual.ActualHeight,96,96,PixelFormats.Pbgra32);bitmap.Render(visual);
        var encoder=new PngBitmapEncoder();encoder.Frames.Add(BitmapFrame.Create(bitmap));using var output=File.Create(path);encoder.Save(output);
    }
}
