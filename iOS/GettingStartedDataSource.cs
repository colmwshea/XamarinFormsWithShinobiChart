using System;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using MonoTouch.UIKit;
using System.Drawing;
using XamarinFormsWithShinobiCharts.iOS;
using XamarinFormsWithShinobiCharts;
using ShinobiCharts;
using System.Collections.Generic;
using MonoTouch.Foundation;
using MonoTouch.ObjCRuntime;
using System.Diagnostics;


namespace XamarinFormsWithShinobiCharts.iOS
{
	public class GettingStartedDataSource : SChartDataSource
	{
		public GettingStartedDataSource ()
		{
		}

		public override int GetNumberOfSeries (ShinobiChart chart)
		{
			return 2;
		}

		public override SChartSeries GetSeries (ShinobiChart chart, int dataSeriesIndex)
		{
			SChartLineSeries series = new SChartLineSeries ();

			// The first series is a cosine curve, the second is a sine curve
			series.Title = dataSeriesIndex == 0 ? "y = cos(x)" : "y = sin(x)";

			return series;
		}

		public override int GetNumberOfDataPoints (ShinobiChart chart, int dataSeriesIndex)
		{
			return 100;
		}

		public override SChartData GetDataPoint (ShinobiChart chart, int dataIndex, int dataSeriesIndex)
		{
			SChartDataPoint datapoint = new SChartDataPoint ();

			// both functions share the same x-values
			double xValue = dataIndex / 10.0;
			datapoint.XValue = new NSNumber(xValue);

			// compute the y-value for each series
			datapoint.YValue = new NSNumber(dataSeriesIndex == 0 ? Math.Cos(xValue) : Math.Sin(xValue));

			return datapoint;
		}
	}
}


