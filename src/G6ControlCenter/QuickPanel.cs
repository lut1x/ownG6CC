using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using G6ControlCenter.Core;

namespace G6ControlCenter;

public sealed class QuickPanel : Window
{
    private readonly TextBlock mode=new(),source=new(),cpu=new(),gpu=new(),battery=new();
    private readonly Button work=new(){Content="Работа"},game=new(){Content="Игра"},cool=new(){Content="Охладить"},auto=new(){Content="Автомат"};
    public bool AllowClose { get; set; }
    public QuickPanel(MainWindow owner)
    {
        Title="G6 Control · быстро";Width=400;Height=410;ResizeMode=ResizeMode.NoResize;ShowInTaskbar=false;
        Icon=IconArtwork.ApplicationIcon;
        Background=(Brush)FindResource("WindowBrush");Foreground=(Brush)FindResource("ForegroundBrush");FontFamily=new FontFamily("Segoe UI");FontSize=13;
        var panel=new StackPanel{Margin=new Thickness(20)};
        mode.FontSize=25;mode.FontWeight=FontWeights.SemiBold;source.FontSize=12;source.Foreground=(Brush)FindResource("MutedBrush");
        panel.Children.Add(source);panel.Children.Add(mode);mode.Margin=new Thickness(0,7,0,16);
        var readings=new Grid();readings.ColumnDefinitions.Add(new());readings.ColumnDefinitions.Add(new());
        cpu.FontSize=gpu.FontSize=21;Grid.SetColumn(gpu,1);readings.Children.Add(cpu);readings.Children.Add(gpu);panel.Children.Add(readings);
        battery.Margin=new Thickness(0,14,0,15);battery.Foreground=(Brush)FindResource("MutedBrush");panel.Children.Add(battery);
        var profiles=new Grid();profiles.ColumnDefinitions.Add(new());profiles.ColumnDefinitions.Add(new());Grid.SetColumn(game,1);work.Margin=new Thickness(0,0,5,0);game.Margin=new Thickness(5,0,0,0);profiles.Children.Add(work);profiles.Children.Add(game);panel.Children.Add(profiles);
        var actions=new Grid{Margin=new Thickness(0,9,0,0)};actions.ColumnDefinitions.Add(new());actions.ColumnDefinitions.Add(new());Grid.SetColumn(auto,1);cool.Margin=new Thickness(0,0,5,0);auto.Margin=new Thickness(5,0,0,0);actions.Children.Add(cool);actions.Children.Add(auto);panel.Children.Add(actions);
        var open=new Button{Content="Открыть полную панель",Margin=new Thickness(0,12,0,0),Background=Brushes.Transparent,Padding=new Thickness(8,7,8,7)};panel.Children.Add(open);Content=new Border{Background=(Brush)FindResource("WindowBrush"),Child=panel};
        SourceInitialized+=(_,_)=>MainWindow.SetDarkTitle(this);
        work.Click+=async(_,_)=>await owner.QuickProfile(Profile.Work);game.Click+=async(_,_)=>await owner.QuickProfile(Profile.Game);
        cool.Click+=async(_,_)=>await owner.QuickCool();auto.Click+=async(_,_)=>await owner.QuickAuto();open.Click+=(_,_)=>{Hide();owner.OpenPanel();};
        Closing+=(_,e)=>{if(!AllowClose){e.Cancel=true;Hide();}};
    }
    public void Update(PanelSnapshot s,Profile profile,bool writable)
    {
        source.Text=s.Battery.OnAc?"Питание от сети":"От батареи";mode.Text=ControlSession.Name(profile);
        cpu.Text="CPU  "+(s.Thermal?.Cpu.Temperature.ToString()??"—")+"°";gpu.Text="GPU  "+(s.Thermal?.Gpu.Temperature.ToString()??"—")+"°";
        battery.Text=$"Батарея {s.Battery.Percent}% · {s.Refresh} Гц";
        work.IsEnabled=game.IsEnabled=writable&&s.Battery.OnAc;cool.IsEnabled=auto.IsEnabled=writable;
    }
}
