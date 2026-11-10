using G6ControlCenter.Core;

int passed=0;
void Check(bool value,string name){if(!value)throw new Exception(name);passed++;Console.WriteLine("PASS "+name);}
void Reject(Action action,string name){try{action();}catch(ArgumentException){passed++;Console.WriteLine("PASS "+name);return;}throw new Exception(name);}
var p=new ProfilePolicy();var now=DateTimeOffset.UtcNow;
Check(p.PowerChanged(true)==Profile.Work,"Start on AC selects Work");
Check(p.Select(Profile.Game)==Profile.Game,"Manual Game on AC");
Check(p.PowerChanged(false)==Profile.Battery,"Unplug overrides Game immediately");
try{p.Select(Profile.Game);throw new Exception("Game allowed on battery");}catch(InvalidOperationException){passed++;}
Check(p.PowerChanged(true)==Profile.Work,"Reconnect always returns Work, not previous Game");
Check(p.AutoSport(true,99,now) is null,"Burst does not trigger auto sport");
Check(p.AutoSport(true,20,now.AddSeconds(10)) is null,"Load interruption resets entry timer");
p.AutoSport(true,99,now.AddSeconds(20));
Check(p.AutoSport(true,99,now.AddSeconds(36))==Profile.Game,"Sustained load activates Game");
Check(p.AutoSport(true,5,now.AddSeconds(37)) is null,"Short idle does not leave Game");
Check(p.AutoSport(true,5,now.AddSeconds(83))==Profile.Work,"Sustained idle returns Work");
p.Select(Profile.Game);p.AutoSport(true,5,now);
Check(p.AutoSport(true,5,now.AddMinutes(2)) is null && p.Selected==Profile.Game,"Automation does not override manually selected Game");
p.PowerChanged(false);
Check(p.AutoSport(true,99,now) is null && p.Selected==Profile.Battery,"No auto Game on battery");
var curve=new FanCurve();var packet=DchuProtocol.CurvePacket(curve,curve);
Check(packet.Length==256 && packet[2]==60 && packet[4]==80,"Curve packet length and temperature layout");
Check(packet[3]==128 && packet[5]==191,"Curve uses 0..255 raw duty");
Check(packet[14]*256+packet[15]==60,"Slope is correctly scaled and big endian");
var overlap=curve.Copy();overlap.High=new(60,80);Reject(()=>DchuProtocol.CurvePacket(overlap,curve),"Reject coincident temperatures");
var descending=curve.Copy();descending.High=new(80,30);Reject(()=>DchuProtocol.CurvePacket(descending,curve),"Reject descending duty");
var hot=curve.Copy();hot.High=new(96,80);Reject(()=>DchuProtocol.CurvePacket(hot,curve),"Reject upper point too near shutdown temperature");
var low=curve.Copy();low.High=new(80,50);Reject(()=>DchuProtocol.CurvePacket(low,curve),"Reject unsafe high-temperature duty");
var raw=new byte[256];raw[2]=3;raw[3]=132;raw[4]=3;raw[5]=171;raw[18]=55;raw[21]=45;raw[16]=71;raw[19]=71;
var sample=DchuProtocol.Decode(raw,2);Check(sample.Cpu.Rpm==2396&&sample.Gpu.Temperature==45,"OEM telemetry decodes big-endian tach and channel offsets");
raw[18]=0;Reject(()=>DchuProtocol.Decode(raw,2),"Reject missing CPU sensor");
Reject(()=>DchuProtocol.Decode(new byte[10],2),"Reject truncated telemetry");
var scalar=DchuProtocol.Scalar(25,2);Check(scalar.SequenceEqual(new byte[]{2,0,0,25}),"Power mode subcommand occupies high byte");
Console.WriteLine($"{passed} checks passed.");
