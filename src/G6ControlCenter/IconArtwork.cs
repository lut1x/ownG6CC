using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using G6ControlCenter.Core;

namespace G6ControlCenter;

public static class IconArtwork
{
    public static ImageSource ApplicationIcon { get; } = LoadApplicationIcon();
    private static ImageSource LoadApplicationIcon()
    {
        var decoder=BitmapDecoder.Create(new Uri("pack://application:,,,/Assets/app.ico"),BitmapCreateOptions.PreservePixelFormat,BitmapCacheOption.OnLoad);
        BitmapFrame largest=decoder.Frames[0];
        foreach(var frame in decoder.Frames)if(frame.PixelWidth>largest.PixelWidth)largest=frame;
        largest.Freeze();return largest;
    }
    public static System.Drawing.Icon Tray(Profile profile)
    {
        string name=profile switch{Profile.Game=>"game",Profile.Battery=>"battery",_=>"work"};
        using var stream=Application.GetResourceStream(new Uri($"pack://application:,,,/Assets/tray-{name}.ico"))!.Stream;
        using var icon=new System.Drawing.Icon(stream,new System.Drawing.Size(32,32));
        return (System.Drawing.Icon)icon.Clone();
    }
    public static ImageSource ProfileImage(Profile profile)
    {
        Color color=(Color)ColorConverter.ConvertFromString(profile switch{Profile.Game=>"#F2958D",Profile.Battery=>"#76D6AC",_=>"#81B0FF"});
        var brush=new SolidColorBrush(color);var group=new DrawingGroup();
        group.Children.Add(new GeometryDrawing(Brushes.Transparent,null,new RectangleGeometry(new Rect(0,0,24,24))));
        if(profile==Profile.Work)group.Children.Add(new GeometryDrawing(brush,null,Geometry.Parse("M20.4,15.5 A8.8,8.8 0 0 1 8.5,3.5 A9,9 0 1 0 20.4,15.5 Z")));
        else if(profile==Profile.Game)group.Children.Add(new GeometryDrawing(brush,null,Geometry.Parse("M14,2 L4,13 L10,13 L8,22 L20,9 L13,9 Z")));
        else
        {
            group.Children.Add(new GeometryDrawing(null,new Pen(brush,1.8),new RectangleGeometry(new Rect(2,6,17,12),2,2)));
            group.Children.Add(new GeometryDrawing(brush,null,new RectangleGeometry(new Rect(5,9,8,6),1,1)));
            group.Children.Add(new GeometryDrawing(brush,null,new RectangleGeometry(new Rect(20,10,2,4),.6,.6)));
        }
        var image=new DrawingImage(group);image.Freeze();return image;
    }
}
