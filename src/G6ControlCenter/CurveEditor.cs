using System;
using System.Globalization;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using G6ControlCenter.Core;

namespace G6ControlCenter;

public sealed class CurveEditor : FrameworkElement
{
    public FanCurve? Curve { get; set; }
    public event Action? Edited;
    private int drag = -1;
    private Rect Plot => new(30, 14, Math.Max(10, ActualWidth - 42), Math.Max(10, ActualHeight - 40));
    private Point Map(CurvePoint p) { var r = Plot; return new(r.Left + (p.Temperature - 30) / 70.0 * r.Width, r.Bottom - p.Duty / 100.0 * r.Height); }
    protected override void OnRender(DrawingContext dc)
    {
        base.OnRender(dc); var r = Plot;
        dc.DrawRectangle(Brushes.Transparent, null, new Rect(RenderSize));
        var muted = (Brush)FindResource("MutedBrush"); var accent = (Brush)FindResource("AccentBrush"); var line = new Pen((Brush)FindResource("LineBrush"), 1);
        void Text(string s, double x, double y) => dc.DrawText(new FormattedText(s, CultureInfo.CurrentCulture, FlowDirection.LeftToRight, new Typeface("Segoe UI"), 10, muted, VisualTreeHelper.GetDpi(this).PixelsPerDip), new Point(x,y));
        for (int d=0; d<=100; d+=50) { double y=r.Bottom-d/100.0*r.Height; dc.DrawLine(line,new(r.Left,y),new(r.Right,y));Text(d.ToString(),0,y-7); }
        foreach(int t in new[]{40,70,100}) { double x=r.Left+(t-30)/70.0*r.Width;Text(t+"°",x-10,r.Bottom+6); }
        if(Curve is null) { Text("Нет данных",r.Left+30,r.Top+50);return; }
        var points=new[]{Curve.First,Curve.Middle,Curve.High,Curve.Last};
        for(int i=0;i<3;i++)dc.DrawLine(new Pen(accent,2.2),Map(points[i]),Map(points[i+1]));
        for(int i=0;i<4;i++) { var p=Map(points[i]);dc.DrawEllipse(i is 1 or 2?accent:muted,null,p,i is 1 or 2?5:3,i is 1 or 2?5:3); }
    }
    protected override void OnMouseLeftButtonDown(MouseButtonEventArgs e)
    {
        if(Curve is null)return;var p=e.GetPosition(this);
        drag=(p-Map(Curve.Middle)).Length<17?1:(p-Map(Curve.High)).Length<17?2:-1;
        if(drag!=-1){CaptureMouse();e.Handled=true;}
    }
    protected override void OnMouseMove(MouseEventArgs e)
    {
        if(drag==-1||Curve is null)return;
        var p=e.GetPosition(this);var r=Plot;
        int t=(int)Math.Round(30+(p.X-r.Left)/r.Width*70),d=(int)Math.Round((r.Bottom-p.Y)/r.Height*100);
        if(drag==1)Curve.Middle=new(Math.Clamp(t,Curve.First.Temperature+3,Curve.High.Temperature-3),Math.Clamp(d,Curve.First.Duty,Curve.High.Duty));
        else Curve.High=new(Math.Clamp(t,Curve.Middle.Temperature+3,90),Math.Clamp(d,Math.Max(60,Curve.Middle.Duty),100));
        InvalidateVisual();Edited?.Invoke();
    }
    protected override void OnMouseLeftButtonUp(MouseButtonEventArgs e){drag=-1;ReleaseMouseCapture();}
}
