using System;
using System.IO;
using System.Runtime.InteropServices;
using System.Security.Principal;

namespace G6ControlCenter;

public sealed record StartupState(bool Enabled,bool CurrentLocation,string? Executable);

public static class StartupRegistration
{
    private const string Marker="G6ControlCenter.Portable.Autostart.v1";
    private static string UserSid => WindowsIdentity.GetCurrent().User?.Value ?? throw new InvalidOperationException("Не удалось определить пользователя Windows.");
    public static string TaskName => "G6ControlCenter.Autostart."+UserSid;
    private static string Executable
    {
        get
        {
            string path=Environment.ProcessPath??throw new InvalidOperationException("Не удалось определить папку программы.");
            if(!Path.GetFileName(path).Equals("G6ControlCenter.exe",StringComparison.OrdinalIgnoreCase))throw new InvalidOperationException("Для настройки автозапуска открой G6ControlCenter.exe.");
            return Path.GetFullPath(path);
        }
    }
    private static T WithScheduler<T>(Func<dynamic,dynamic,T> action)
    {
        Type type=Type.GetTypeFromProgID("Schedule.Service")??throw new InvalidOperationException("Планировщик Windows недоступен.");
        dynamic service=Activator.CreateInstance(type)!;object? folder=null;
        try{service.Connect();folder=service.GetFolder("\\");return action(service,folder);}
        finally{if(folder is not null)Marshal.FinalReleaseComObject(folder);Marshal.FinalReleaseComObject(service);}
    }
    private static dynamic? Find(dynamic folder)
    {
        try{return folder.GetTask(TaskName);}
        catch(Exception e)when(unchecked((uint)e.HResult) is 0x80070002 or 0x8004130F){return null;}
    }
    private static void RequireOwned(dynamic task)
    {
        if((string)task.Definition.RegistrationInfo.Source!=Marker)throw new InvalidOperationException("Это имя автозапуска занято другой задачей. Она не изменялась.");
    }
    public static StartupState Read()=>WithScheduler<StartupState>((_,folder)=>
    {
        dynamic? task=Find(folder);if(task is null)return new(false,false,null);
        RequireOwned(task);dynamic action=task.Definition.Actions.Item(1);
        string path=(string)action.Path;
        bool current=Path.GetFullPath(path).Equals(Executable,StringComparison.OrdinalIgnoreCase)&&((string)action.Arguments)=="--tray";
        return new((bool)task.Enabled,current,path);
    });
    public static void SetEnabled(bool enabled)
    {
        WithScheduler<bool>((service,folder)=>
        {
            dynamic? old=Find(folder);if(old is not null)RequireOwned(old);
            if(!enabled){if(old is not null)folder.DeleteTask(TaskName,0);return true;}
            string exe=Executable,sid=UserSid;dynamic definition=service.NewTask(0);
            definition.RegistrationInfo.Source=Marker;definition.RegistrationInfo.Author="G6 Control";
            definition.RegistrationInfo.Description="G6 Control: запуск личной панели в трее при входе в Windows.";
            definition.Principal.UserId=sid;definition.Principal.LogonType=3;definition.Principal.RunLevel=1;
            dynamic settings=definition.Settings;
            settings.Enabled=true;settings.StartWhenAvailable=true;settings.DisallowStartIfOnBatteries=false;
            settings.StopIfGoingOnBatteries=false;settings.ExecutionTimeLimit="PT0S";settings.MultipleInstances=2;
            settings.AllowDemandStart=true;settings.RunOnlyIfNetworkAvailable=false;
            dynamic trigger=definition.Triggers.Create(9);trigger.UserId=sid;trigger.Delay="PT10S";trigger.Enabled=true;
            dynamic action=definition.Actions.Create(0);action.Path=exe;action.Arguments="--tray";action.WorkingDirectory=Path.GetDirectoryName(exe);
            folder.RegisterTaskDefinition(TaskName,definition,6,sid,null,3,null);
            return true;
        });
        var result=Read();
        if(enabled&&(!result.Enabled||!result.CurrentLocation))throw new InvalidOperationException("Windows не подтвердила автозапуск из этой папки.");
        if(!enabled&&result.Enabled)throw new InvalidOperationException("Windows не отключила автозапуск.");
    }
    public static object CheckRoundTrip()
    {
        string? backup=WithScheduler<string?>((_,folder)=>{dynamic? task=Find(folder);if(task is null)return null;RequireOwned(task);return (string)task.Xml;});
        try
        {
            SetEnabled(true);var registered=Read();
            var details=WithScheduler<object>((_,folder)=>
            {
                dynamic task=Find(folder)!;dynamic d=task.Definition;
                return new{highest=(int)d.Principal.RunLevel==1,interactive=(int)d.Principal.LogonType==3,logon=(int)d.Triggers.Item(1).Type==9,
                    startsOnBattery=!(bool)d.Settings.DisallowStartIfOnBatteries,keepsRunningOnBattery=!(bool)d.Settings.StopIfGoingOnBatteries,
                    arguments=(string)d.Actions.Item(1).Arguments};
            });
            SetEnabled(false);if(Read().Enabled)throw new InvalidOperationException("Автозапуск не удалился после проверки.");
            return new{ok=true,registered,details,removed=true,previousConfigurationRestored=true};
        }
        finally
        {
            if(backup is null)SetEnabled(false);
            else WithScheduler<bool>((_,folder)=>{folder.RegisterTask(TaskName,backup,6,UserSid,null,3,null);return true;});
        }
    }
}
