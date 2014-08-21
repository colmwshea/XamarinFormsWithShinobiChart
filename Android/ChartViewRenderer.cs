using System;
using Xamarin.Forms;
using XamarinFormsWithShinobiCharts;
using XamarinFormsWithShinobiCharts.Android;
using Android.App;
using Android.Widget;
using Android.Views;
using Android.Content;
using Android.Graphics.Drawables;
using Android.Graphics;
using Com.ShinobiControls.Charts;
using Android.OS;
using System.Drawing;
using Xamarin.Forms.Platform.Android;
using System.Diagnostics;

[assembly: ExportRenderer(typeof(ChartPage), typeof(ChartViewRenderer))]

namespace XamarinFormsWithShinobiCharts.Android
{
	public class ChartViewRenderer : PageRenderer
	{
		public ChartView chartView;
		public IShinobiChart chart;

		public ChartViewRenderer ()
		{
		}

		protected override void OnElementChanged(ElementChangedEventArgs<Page> e)
		{
			base.OnElementChanged (e);
			chartView = new ChartView (this.Context);

			chart = chartView.ShinobiChart;

			chart.Title = "Test Chart";
			chart.SetLicenseKey (@" ENTER LICENSE KEY HERE ");
			chart.Crosshair.TooltipEnabled = true;

			NumberAxis xAxis = new NumberAxis();
			chart.XAxis = xAxis;

			NumberAxis yAxis = new NumberAxis();
			chart.YAxis = yAxis;

			xAxis.GesturePanningEnabled = true;
			xAxis.GestureZoomingEnabled = true;
			yAxis.GesturePanningEnabled = true;
			yAxis.GestureZoomingEnabled = true;

			SimpleDataAdapter dataAdapter1 = new SimpleDataAdapter();
			SimpleDataAdapter dataAdapter2 = new SimpleDataAdapter();

			for ( int i=0 ; i<100 ; i++) 
			{
				double radians = i * Math.PI / 25.0;
				dataAdapter1.Add(new DataPoint(radians, Math.Sin(radians)));
				dataAdapter2.Add(new DataPoint(radians, Math.Cos(radians)));
			}


			LineSeries series1 = new LineSeries();
			series1.DataAdapter = dataAdapter1;
			chart.AddSeries(series1);

			LineSeries series2 = new LineSeries();
			series2.DataAdapter = dataAdapter2;
			chart.AddSeries(series2);

			LineSeriesStyle style1 = series1.Style;
			style1.FillStyle = SeriesStyle.FillStyle.Gradient;
			style1.AreaColor = global::Android.Graphics.Color.Argb(179,  94,  51,  95);
			style1.AreaColorGradient = global::Android.Graphics.Color.Argb(255,  94,  51,  95);
			style1.AreaColorBelowBaseline = global::Android.Graphics.Color.Argb(179,  94,  51,  95);
			style1.AreaColorGradientBelowBaseline = global::Android.Graphics.Color.Argb(255,  94,  51,  95);

			LineSeriesStyle style2 = series2.Style;
			style2.FillStyle = SeriesStyle.FillStyle.Gradient;
			style2.AreaColor = global::Android.Graphics.Color.Argb(179,  26,  96, 164);
			style2.AreaColorGradient = global::Android.Graphics.Color.Argb(255,  26,  96, 164);
			style2.AreaColorBelowBaseline = global::Android.Graphics.Color.Argb(179,  26,  96, 164);
			style2.AreaColorGradientBelowBaseline = global::Android.Graphics.Color.Argb(255,  26,  96, 164);

			yAxis.DefaultRange = new NumberRange(-1.05, 1.05);

			AddView (chartView);
			chart.RedrawChart ();
		}
			
		protected override void OnLayout (bool changed, int l, int t, int r, int b)
		{
			base.OnLayout (changed, l, t, r, b);
			var msw = MeasureSpec.MakeMeasureSpec (r - l, MeasureSpecMode.Exactly);
			var msh = MeasureSpec.MakeMeasureSpec (b - t, MeasureSpecMode.Exactly);
			chartView.Measure(msw, msh);
			chartView.Layout (0, 0, r - l, b - t);
		}


	}
}

