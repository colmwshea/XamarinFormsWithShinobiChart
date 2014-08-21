using System;
using MonoTouch.UIKit;
using System.Drawing;
using MonoTouch.CoreGraphics;

namespace XamarinFormsWithShinobiCharts.iOS
{
	public class ChartView : UIView
	{
		public ChartView ()
		{
			BackgroundColor = UIColor.White;
			Opaque = false;
		}


		public override void Draw (RectangleF rect)
		{
			base.Draw (rect);
		}
	}
}

