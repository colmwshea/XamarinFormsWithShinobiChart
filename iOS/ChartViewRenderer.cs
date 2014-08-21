using System;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using MonoTouch.UIKit;
using System.Drawing;
using XamarinFormsWithShinobiCharts;
using XamarinFormsWithShinobiCharts.iOS;
using ShinobiCharts;

[assembly: ExportRenderer(typeof(ChartPage), typeof(ChartViewRenderer))]

namespace XamarinFormsWithShinobiCharts.iOS
{
	public class ChartViewRenderer : PageRenderer
	{
		public ShinobiChart chart = new ShinobiChart (new RectangleF (0, 65, 320, 335),
			SChartAxisType.Number, SChartAxisType.Number);

		public ChartViewRenderer ()
		{
		}

		protected override void OnElementChanged (VisualElementChangedEventArgs e)
		{
			base.OnElementChanged (e);

			var view = NativeView;
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			chart.LicenseKey = @""; // Enter license key here.
			chart.AutoresizingMask = UIViewAutoresizing.FlexibleDimensions;
			chart.TitlePosition = SChartTitlePosition.Center; // COS
			chart.Crosshair.InterpolatePoints = false;
			chart.Title = "Test Chart";


			SChartNumberAxis xAxis = new SChartNumberAxis ();
			SChartNumberAxis yAxis = new SChartNumberAxis ();

			chart.XAxis = xAxis;
			chart.YAxis = yAxis;

			ChartView cView = new ChartView { Frame = View.Frame };	

			cView.BackgroundColor = UIColor.White;

			chart.Draw(new RectangleF(0, 65, 320, 335));

			chart.DataSource = new GettingStartedDataSource();

			chart.BackgroundColor = UIColor.White;

			cView.Add (chart);

			Add (cView);

			chart.RedrawChart ();
		}
	}
}



