#include "monotouch/main.h"


void monotouch_register_modules ()
{

}

void monotouch_register_assemblies ()
{
	monotouch_open_and_register ("monotouch.dll");
	monotouch_open_and_register ("ShinobiCharts.dll");
	monotouch_open_and_register ("Xamarin.Forms.Platform.iOS.dll");

}

void monotouch_setup ()
{
	use_old_dynamic_registrar = FALSE;
	monotouch_enable_debug_tracking = TRUE;
	monotouch_assembly_name = "XamarinFormsWithShinobiChartsiOS.exe";
	monotouch_use_new_assemblies = 0;
	mono_use_llvm = FALSE;
	monotouch_log_level = 0;
	monotouch_debug_mode = TRUE;
	monotouch_new_refcount = FALSE;
	monotouch_sgen = FALSE;
}

