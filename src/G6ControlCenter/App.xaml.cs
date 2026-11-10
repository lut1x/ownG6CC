using System;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using G6ControlCenter.Core;
using G6ControlCenter.Hardware;

namespace G6ControlCenter;

public partial class App : System.Windows.Application
{
    private Mutex? instance;
    protected override async void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);
        string? Argument(string key){int i=Array.IndexOf(e.Args,key);return i>=0&&i+1<e.Args.Length?e.Args[i+1]:null;}
        string ReportPath(){string path=Path.GetFullPath(Argument("--report")??Path.Combine(AppContext.BaseDirectory,"diagnostic.json"));Directory.CreateDirectory(Path.GetDirectoryName(path)!);return path;}
        if(e.Args.Contains("--startup-check"))
        {
            string report=ReportPath();
            try{var result=await Task.Run(StartupRegistration.CheckRoundTrip);File.WriteAllText(report,JsonSerializer.Serialize(result,new JsonSerializerOptions{WriteIndented=true}));Shutdown(0);}
            catch(Exception error){File.WriteAllText(report,JsonSerializer.Serialize(new{ok=false,error=error.ToString()}));Shutdown(1);}
            return;
        }
        bool diagnose=e.Args.Contains("--diagnose"),check=e.Args.Contains("--hardware-check"),integration=e.Args.Contains("--integration-check"),profiles=e.Args.Contains("--profile-check");
        if(diagnose||check||integration||profiles)
        {
            string report=ReportPath();
            try
            {
                object result;
                if(check)result=await Task.Run(HardwareCheck);
                else if(integration||profiles)result=await IntegrationCheck(profiles);
                else
                {
                    using var session=new ControlSession(true);await session.Initialize();var data=await session.Poll(false);
                    result=new{ok=session.Ready,error=session.HardwareError,snapshot=new{thermal=data.Thermal,battery=data.Battery,cpuLoad=double.IsFinite(data.CpuLoad)?(double?)data.CpuLoad:null,refresh=data.Refresh,warning=data.Warning},charge=session.Charge,chargeStatus=session.ChargeStatus,curveSupported=session.SupportsCurve};
                }
                File.WriteAllText(report,JsonSerializer.Serialize(result,new JsonSerializerOptions{WriteIndented=true}));Shutdown(0);
            }
            catch(Exception error){File.WriteAllText(report,JsonSerializer.Serialize(new{ok=false,error=error.ToString()}));Shutdown(1);}
            return;
        }
        bool smoke=e.Args.Contains("--smoke"),trayCheck=e.Args.Contains("--tray-check"),preview=e.Args.Contains("--preview")||smoke||trayCheck;
        instance=new Mutex(true,preview?@"Local\G6ControlCenter-preview":@"Local\G6ControlCenter-v01",out bool created);
        bool startInTray=e.Args.Contains("--tray")||trayCheck;
        if(!created){if(!startInTray)MessageBox.Show("G6 Control уже работает. Открой панель из трея.","G6 Control");Shutdown();return;}
        var window=new MainWindow(preview,smoke,Argument("--screenshot"),trayCheck?ReportPath():null){ShowActivated=!startInTray};MainWindow=window;
        if(startInTray){window.ShowInTaskbar=false;window.WindowState=WindowState.Minimized;}
        window.Show();if(startInTray)window.Hide();
    }
    private static object HardwareCheck()
    {
        using var device=new DchuDevice();var before=device.ReadThermals();int modeResult=0;ThermalSample? maximum=null,after=null;bool restored=false;
        try{modeResult=device.SetFanMode(1);Thread.Sleep(4000);maximum=device.ReadThermals();}
        finally{device.RestoreAutomatic();restored=true;after=device.ReadThermals();}
        return new{ok=restored,before,maximum,after,modeResult,restored,scope="Fan maximum for four seconds, then firmware auto; no power/display/RGB changes"};
    }
    private static async Task<object> IntegrationCheck(bool profilesOnly=false)
    {
        using var session=new ControlSession(false);await session.Initialize();
        if(!session.Ready)throw new InvalidOperationException(session.HardwareError);
        string work=await session.Apply(Profile.Work);await Task.Delay(3000);var workSnapshot=await session.Poll(false);
        if(profilesOnly)
        {
            if(!WindowsBattery.Read().OnAc)return new{ok=true,work,game="not tested on battery"};
            string game=await session.Apply(Profile.Game);await Task.Delay(500);
            var gameSnapshot=await session.Poll(false);
            string back=await session.Apply(Profile.Work);
            return new{ok=true,work,game,back,refresh=gameSnapshot.Refresh,restoration="Session disposal restores original plan and firmware mode"};
        }
        using var d=new DchuDevice();d.ProbeCharge();var originalCharge=d.Charge;
        string chargeResult="not supported",curveResult="not checked";bool chargeRestored=true,curveRestored=false;
        if(originalCharge is not null&&originalCharge.Stops.Contains((byte)80))
        {
            try{d.SetChargeLimit(80);chargeResult=$"verified {d.Charge?.Start}..{d.Charge?.Stop}, enabled={d.Charge?.Enabled}";}
            catch(Exception error){chargeResult=error.Message;}
            finally{d.RestoreChargeWindow(originalCharge);chargeRestored=true;}
        }
        byte[] beforeCurve=d.ReadPackage(13),afterCurve=beforeCurve;
        try
        {
            var cpu=d.StockCpu.Copy();var gpu=d.StockGpu.Copy();cpu.High=new(cpu.High.Temperature,Math.Max(80,cpu.High.Duty));gpu.High=new(gpu.High.Temperature,Math.Max(80,gpu.High.Duty));
            d.ApplyCurve(cpu,gpu);afterCurve=d.ReadPackage(13);curveResult="confirmed";
        }
        catch(Exception error){curveResult=error.Message;afterCurve=d.ReadPackage(13);}
        finally
        {
            d.RestoreAutomatic();
            var restored=d.ReadPackage(13);
            curveRestored=beforeCurve[16..30].SequenceEqual(restored[16..30]);
            if(!curveRestored)throw new InvalidOperationException("Исходные байты кривой не совпали после восстановления.");
        }
        return new{ok=true,work,workSnapshot=new{thermal=workSnapshot.Thermal,battery=workSnapshot.Battery,refresh=workSnapshot.Refresh},chargeResult,chargeRestored,curveResult,curveRestored,beforeCurve=Convert.ToHexString(beforeCurve[..44]),afterCurve=Convert.ToHexString(afterCurve[..44])};
    }
    protected override void OnExit(ExitEventArgs e){instance?.Dispose();base.OnExit(e);}
}
