.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,17,1,18,1,64,10,0,0
	.byte 3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0,11,11,62,11,3,8,0
	.byte 0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73,19,56,10,0,0,7,22
	.byte 0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13,0,0,10,57,1,3,8
	.byte 0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13,15,0,73,19,0,0,14
	.byte 16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0,0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 3.6.0 (mono-3.6.0-branch/0d48422 Fri Aug  1 15:20:07 EDT 2014)"
	.asciz "XamarinFormsWithShinobiCharts.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
methods:
	.space 16
.text
	.align 2
	.no_dead_strip _XamarinFormsWithShinobiCharts_App__ctor
_XamarinFormsWithShinobiCharts_App__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 4
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21
	.byte 20,208,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip _XamarinFormsWithShinobiCharts_App_GetMainPage
_XamarinFormsWithShinobiCharts_App_GetMainPage:

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,16,208,77,226,0,0,159,229,0,0,0,234
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 8
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,160,160,227,0,224,157,229,60,224,158,229
	.byte 0,0,94,227,0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 12
	.byte 0,0,159,231
bl _p_1

	.byte 8,0,141,229
bl _p_2

	.byte 8,0,157,229,0,160,160,225,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21,10,0,160,225,10,0,160,225
	.byte 0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,16,208,141,226,0,5,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip _XamarinFormsWithShinobiCharts_ChartPage__ctor
_XamarinFormsWithShinobiCharts_ChartPage__ctor:

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,128,208,77,226,13,176,160,225,116,0,139,229,0,0,159,229,0,0,0,234
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 16
	.byte 0,0,159,231,48,0,139,229,48,224,155,229,0,224,158,229,52,224,139,229,48,224,155,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,52,224,155,229,0,224,158,229,48,224,155,229,88,224,158,229,0,0,94,227,0,224,158,21,116,0,155,229
bl _p_3

	.byte 48,224,155,229,112,224,158,229,0,0,94,227,0,224,158,21,48,224,155,229,128,224,158,229,0,0,94,227,0,224,158,21
	.byte 116,0,155,229,120,0,139,229,0,16,159,229,0,0,0,234
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 20
	.byte 1,16,159,231,56,0,139,226,60,32,160,227,60,32,160,227
bl _p_4

	.byte 48,224,155,229,184,224,158,229,0,0,94,227,0,224,158,21,120,0,155,229,56,16,139,226,56,16,155,229,60,32,155,229
	.byte 64,48,155,229,68,192,155,229,0,192,141,229,72,192,155,229,4,192,141,229,76,192,155,229,8,192,141,229,80,192,155,229
	.byte 12,192,141,229,84,192,155,229,16,192,141,229,88,192,155,229,20,192,141,229,92,192,155,229,24,192,141,229,96,192,155,229
	.byte 28,192,141,229,100,192,155,229,32,192,141,229,104,192,155,229,36,192,141,229,108,192,155,229,40,192,141,229,112,192,155,229
	.byte 44,192,141,229
bl _p_5

	.byte 48,224,155,229,64,225,158,229,0,0,94,227,0,224,158,21,48,224,155,229,80,225,158,229,0,0,94,227,0,224,158,21
	.byte 128,208,139,226,0,9,189,232,128,128,189,232

Lme_2:
.text
	.align 3
methods_end:

	.long 0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl _XamarinFormsWithShinobiCharts_App__ctor
bl _XamarinFormsWithShinobiCharts_App_GetMainPage
bl _XamarinFormsWithShinobiCharts_ChartPage__ctor
bl method_addresses
method_addresses_end:
.section __TEXT, __const
	.align 3
code_offsets:

	.long 0

.text
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 4,10,1,2
	.short 0
	.byte 1,3,4,255,255,255,255,248
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 11,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 0
.section __TEXT, __const
	.align 3
class_name_table:

	.short 11, 1, 11, 0, 0, 0, 0, 0
	.short 0, 0, 0, 3, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 2
	.short 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 9,10,1,2
	.short 0
	.byte 12,2,1,1,1,1,1,3,1
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 4,10,1,2
	.short 0
	.byte 74,46,63,255,255,255,255,73
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32,20,12,13,0,72,14,8,135,2,68,14,16,136
	.byte 4,138,3,142,1,68,14,32,24,12,13,0,72,14,8,135,2,68,14,16,136,4,139,3,142,1,68,14,144,1,68,13
	.byte 11
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 3,10,1,2
	.short 0
	.byte 129,2,7,23

.text
	.align 4
plt:
_mono_aot_XamarinFormsWithShinobiCharts_plt:
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 36,30
	.no_dead_strip plt_XamarinFormsWithShinobiCharts_ChartPage__ctor
plt_XamarinFormsWithShinobiCharts_ChartPage__ctor:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 40,57
	.no_dead_strip plt_Xamarin_Forms_ContentPage__ctor
plt_Xamarin_Forms_ContentPage__ctor:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 44,59
	.no_dead_strip plt_string_memcpy_byte__byte__int
plt_string_memcpy_byte__byte__int:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 48,64
	.no_dead_strip plt_Xamarin_Forms_VisualElement_set_BackgroundColor_Xamarin_Forms_Color
plt_Xamarin_Forms_VisualElement_set_BackgroundColor_Xamarin_Forms_Color:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_XamarinFormsWithShinobiCharts_got - . + 52,69
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 3
	.asciz "XamarinFormsWithShinobiCharts"
	.asciz "A1117148-87E4-4DDD-B679-787C95270D28"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,1,0,5338,31212
	.asciz "Xamarin.Forms.Core"
	.asciz "D5060BB7-24CC-4EA0-991F-97FA607FC1A9"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,1,2,2,0
	.asciz "mscorlib"
	.asciz "E6325DA6-A6D2-47F2-A82F-6EC2A45E50DC"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
_mono_aot_XamarinFormsWithShinobiCharts_got:
	.space 60
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "A1117148-87E4-4DDD-B679-787C95270D28"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "XamarinFormsWithShinobiCharts"
.data
	.align 3
_mono_aot_file_info:

	.long 100,0
	.align 2
	.long _mono_aot_XamarinFormsWithShinobiCharts_got
	.align 2
	.long methods
	.align 2
	.long 0
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long code_offsets
	.align 2
	.long method_addresses
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long methods_end
	.align 2
	.long unwind_info
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end

	.long 9,60,6,4,14,387000831,0,420
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,4,4,14
	.long 0,0,0,0,0
	.globl _mono_aot_module_XamarinFormsWithShinobiCharts_info
	.align 2
_mono_aot_module_XamarinFormsWithShinobiCharts_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,1,4,0,2,5,6,0,2,7,8,12,0,39,42,47,40,40,14,1,3,40,16,2,128,129,1,129,254,7,24
	.byte 109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,3,3,193,0,10,21
	.byte 3,194,0,21,11,3,193,0,3,106,10,0,4,255,255,255,255,255,52,0,0,1,24,0,1,2,6,20,0,0,192,255
	.byte 255,249,16,0,0,18,128,128,68,128,140,208,0,0,13,8,0,3,0,68,6,28,1,32,10,19,5,255,255,255,255,255
	.byte 52,0,0,1,24,0,1,2,1,16,0,1,3,11,52,0,0,192,255,255,243,24,0,0,30,128,184,68,128,196,10,0
	.byte 11,0,68,1,24,0,16,0,16,0,4,0,4,5,8,6,4,0,16,1,4,1,20,10,40,7,255,255,255,255,255,56
	.byte 0,0,1,24,0,1,2,6,24,0,1,3,1,16,0,1,4,6,56,1,1,5,5,128,136,0,0,192,255,255,237,16
	.byte 0,0,31,129,88,72,129,100,208,0,0,11,116,0,9,0,72,1,28,5,4,1,16,1,24,5,32,0,128,132,5,4
	.byte 1,32,0,128,144,8,0,0,1,4,128,144,8,0,0,1,194,0,20,22,194,0,20,19,194,0,20,18,194,0,20,16
	.byte 31,128,160,129,12,0,0,4,194,0,20,22,194,0,20,19,194,0,20,18,194,0,20,16,193,0,0,10,193,0,0,11
	.byte 193,0,0,36,193,0,0,35,193,0,4,18,193,0,0,59,193,0,0,60,193,0,0,78,193,0,0,80,193,0,0,79
	.byte 193,0,0,81,193,0,0,67,193,0,0,65,193,0,3,252,193,0,3,233,193,0,3,140,193,0,3,141,193,0,3,149
	.byte 193,0,4,16,193,0,3,145,193,0,3,143,193,0,3,230,193,0,3,231,193,0,4,17,193,0,4,11,193,0,4,10
	.byte 193,0,4,3,98,111,101,104,109,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "XamarinFormsWithShinobiCharts_App"

	.byte 8,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "XamarinFormsWithShinobiCharts_App"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "XamarinFormsWithShinobiCharts.App:.ctor"
	.long _XamarinFormsWithShinobiCharts_App__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long _XamarinFormsWithShinobiCharts_App__ctor

LDIFF_SYM12=Lme_0 - _XamarinFormsWithShinobiCharts_App__ctor
	.long LDIFF_SYM12
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_11:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 8,16
LDIFF_SYM13=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM14=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM15=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM16=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_10:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 8,16
LDIFF_SYM17=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM18=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM19=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM20=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_9:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 8,16
LDIFF_SYM21=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM22=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_13:

	.byte 5
	.asciz "System_Type"

	.byte 12,16
LDIFF_SYM25=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM26=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,35,8,0,7
	.asciz "System_Type"

LDIFF_SYM27=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM28=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM29=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_12:

	.byte 5
	.asciz "System_DelegateData"

	.byte 16,16
LDIFF_SYM30=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM31=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,8,6
	.asciz "method_name"

LDIFF_SYM32=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,12,0,7
	.asciz "System_DelegateData"

LDIFF_SYM33=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_8:

	.byte 5
	.asciz "System_Delegate"

	.byte 44,16
LDIFF_SYM36=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM37=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,8,6
	.asciz "invoke_impl"

LDIFF_SYM38=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,12,6
	.asciz "m_target"

LDIFF_SYM39=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,16,6
	.asciz "method"

LDIFF_SYM40=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,20,6
	.asciz "delegate_trampoline"

LDIFF_SYM41=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,24,6
	.asciz "method_code"

LDIFF_SYM42=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,28,6
	.asciz "method_info"

LDIFF_SYM43=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,32,6
	.asciz "original_method_info"

LDIFF_SYM44=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,36,6
	.asciz "data"

LDIFF_SYM45=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,40,0,7
	.asciz "System_Delegate"

LDIFF_SYM46=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_7:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 52,16
LDIFF_SYM49=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "prev"

LDIFF_SYM50=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,44,6
	.asciz "kpm_next"

LDIFF_SYM51=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,48,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM52=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM53=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM54=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_6:

	.byte 5
	.asciz "Xamarin_Forms_PropertyChangingEventHandler"

	.byte 52,16
LDIFF_SYM55=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,0,0,7
	.asciz "Xamarin_Forms_PropertyChangingEventHandler"

LDIFF_SYM56=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM57=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM58=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_14:

	.byte 5
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

	.byte 52,16
LDIFF_SYM59=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

LDIFF_SYM60=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM61=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM62=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_15:

	.byte 5
	.asciz "System_EventHandler"

	.byte 52,16
LDIFF_SYM63=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM64=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM65=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM66=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_17:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM67=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM68=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM69=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_19:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM70=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM71=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM72=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM73=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_18:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM74=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM75=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM76=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM77=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM78=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_16:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM79=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM80=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,8,6
	.asciz "linkSlots"

LDIFF_SYM81=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,12,6
	.asciz "keySlots"

LDIFF_SYM82=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,16,6
	.asciz "valueSlots"

LDIFF_SYM83=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,20,6
	.asciz "hcp"

LDIFF_SYM84=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,24,6
	.asciz "touchedSlots"

LDIFF_SYM85=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,28,6
	.asciz "emptySlot"

LDIFF_SYM86=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,32,6
	.asciz "count"

LDIFF_SYM87=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,36,6
	.asciz "threshold"

LDIFF_SYM88=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,40,6
	.asciz "generation"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,44,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM90=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM91=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM92=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_20:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM93=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM94=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,8,6
	.asciz "linkSlots"

LDIFF_SYM95=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,12,6
	.asciz "keySlots"

LDIFF_SYM96=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,35,16,6
	.asciz "valueSlots"

LDIFF_SYM97=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,35,20,6
	.asciz "hcp"

LDIFF_SYM98=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,24,6
	.asciz "touchedSlots"

LDIFF_SYM99=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,28,6
	.asciz "emptySlot"

LDIFF_SYM100=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,32,6
	.asciz "count"

LDIFF_SYM101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,36,6
	.asciz "threshold"

LDIFF_SYM102=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,40,6
	.asciz "generation"

LDIFF_SYM103=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,44,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM104=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM105=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM106=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_21:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 20,16
LDIFF_SYM107=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM108=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,8,6
	.asciz "_size"

LDIFF_SYM109=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,12,6
	.asciz "_version"

LDIFF_SYM110=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,16,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM111=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM112=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM113=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_22:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM114=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM115=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,35,8,6
	.asciz "linkSlots"

LDIFF_SYM116=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,12,6
	.asciz "keySlots"

LDIFF_SYM117=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,16,6
	.asciz "valueSlots"

LDIFF_SYM118=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,20,6
	.asciz "hcp"

LDIFF_SYM119=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,24,6
	.asciz "touchedSlots"

LDIFF_SYM120=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,28,6
	.asciz "emptySlot"

LDIFF_SYM121=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,32,6
	.asciz "count"

LDIFF_SYM122=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,36,6
	.asciz "threshold"

LDIFF_SYM123=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,40,6
	.asciz "generation"

LDIFF_SYM124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,44,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM125=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM126=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM127=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_23:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM128=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM129=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM130=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM131=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM132=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_5:

	.byte 5
	.asciz "Xamarin_Forms_BindableObject"

	.byte 44,16
LDIFF_SYM133=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,0,6
	.asciz "PropertyChanging"

LDIFF_SYM134=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,8,6
	.asciz "PropertyChanged"

LDIFF_SYM135=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,12,6
	.asciz "BindingContextChanged"

LDIFF_SYM136=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,16,6
	.asciz "inheritedContext"

LDIFF_SYM137=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,20,6
	.asciz "bindings"

LDIFF_SYM138=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM139=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,28,6
	.asciz "manuallySetValues"

LDIFF_SYM140=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,32,6
	.asciz "delayedSetters"

LDIFF_SYM141=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,36,6
	.asciz "applying"

LDIFF_SYM142=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,40,0,7
	.asciz "Xamarin_Forms_BindableObject"

LDIFF_SYM143=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM144=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM145=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_24:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 52,16
LDIFF_SYM146=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM147=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM148=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM149=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_25:

	.byte 17
	.asciz "Xamarin_Forms_IPlatform"

	.byte 8,7
	.asciz "Xamarin_Forms_IPlatform"

LDIFF_SYM150=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_27:

	.byte 5
	.asciz "System_Func`1"

	.byte 52,16
LDIFF_SYM153=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM154=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM155=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM156=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_29:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 8,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM157=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM158=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM159=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_28:

	.byte 5
	.asciz "System_Exception"

	.byte 60,16
LDIFF_SYM160=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,0,6
	.asciz "trace_ips"

LDIFF_SYM161=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,8,6
	.asciz "inner_exception"

LDIFF_SYM162=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,12,6
	.asciz "message"

LDIFF_SYM163=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,16,6
	.asciz "help_link"

LDIFF_SYM164=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,20,6
	.asciz "class_name"

LDIFF_SYM165=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,24,6
	.asciz "stack_trace"

LDIFF_SYM166=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,28,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM167=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,32,6
	.asciz "remote_stack_index"

LDIFF_SYM168=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,36,6
	.asciz "hresult"

LDIFF_SYM169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,40,6
	.asciz "source"

LDIFF_SYM170=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,44,6
	.asciz "_data"

LDIFF_SYM171=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,48,6
	.asciz "captured_traces"

LDIFF_SYM172=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,52,6
	.asciz "native_trace_ips"

LDIFF_SYM173=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,56,0,7
	.asciz "System_Exception"

LDIFF_SYM174=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM175=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM176=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_30:

	.byte 8
	.asciz "System_Threading_LazyThreadSafetyMode"

	.byte 4
LDIFF_SYM177=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "PublicationOnly"

	.byte 1,9
	.asciz "ExecutionAndPublication"

	.byte 2,0,7
	.asciz "System_Threading_LazyThreadSafetyMode"

LDIFF_SYM178=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM179=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM180=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM180
LTDIE_26:

	.byte 5
	.asciz "System_Lazy`1"

	.byte 44,16
LDIFF_SYM181=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,20,6
	.asciz "factory"

LDIFF_SYM183=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,8,6
	.asciz "monitor"

LDIFF_SYM184=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,12,6
	.asciz "exception"

LDIFF_SYM185=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,16,6
	.asciz "mode"

LDIFF_SYM186=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,36,6
	.asciz "inited"

LDIFF_SYM187=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,40,0,7
	.asciz "System_Lazy`1"

LDIFF_SYM188=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM189=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM190=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_4:

	.byte 5
	.asciz "Xamarin_Forms_Element"

	.byte 84,16
LDIFF_SYM191=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,0,6
	.asciz "ChildAdded"

LDIFF_SYM192=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,44,6
	.asciz "ChildRemoved"

LDIFF_SYM193=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,48,6
	.asciz "DescendantAdded"

LDIFF_SYM194=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,52,6
	.asciz "DescendantRemoved"

LDIFF_SYM195=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,56,6
	.asciz "PlatformSet"

LDIFF_SYM196=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,60,6
	.asciz "parent"

LDIFF_SYM197=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,64,6
	.asciz "canvas"

LDIFF_SYM198=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,68,6
	.asciz "styleId"

LDIFF_SYM199=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,72,6
	.asciz "id"

LDIFF_SYM200=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,76,6
	.asciz "<Owned>k__BackingField"

LDIFF_SYM201=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,80,0,7
	.asciz "Xamarin_Forms_Element"

LDIFF_SYM202=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM203=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM204=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_31:

	.byte 5
	.asciz "System_Double"

	.byte 16,16
LDIFF_SYM205=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM206=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,8,0,7
	.asciz "System_Double"

LDIFF_SYM207=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_34:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM210=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM211=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM212=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_33:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM213=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM214=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,8,6
	.asciz "linkSlots"

LDIFF_SYM215=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,12,6
	.asciz "keySlots"

LDIFF_SYM216=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,16,6
	.asciz "valueSlots"

LDIFF_SYM217=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,20,6
	.asciz "hcp"

LDIFF_SYM218=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,24,6
	.asciz "touchedSlots"

LDIFF_SYM219=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,28,6
	.asciz "emptySlot"

LDIFF_SYM220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,32,6
	.asciz "count"

LDIFF_SYM221=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,36,6
	.asciz "threshold"

LDIFF_SYM222=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,40,6
	.asciz "generation"

LDIFF_SYM223=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,44,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM224=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM224
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM225=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM226=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_32:

	.byte 5
	.asciz "Xamarin_Forms_ResourceDictionary"

	.byte 12,16
LDIFF_SYM227=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,0,6
	.asciz "innerDictionary"

LDIFF_SYM228=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,8,0,7
	.asciz "Xamarin_Forms_ResourceDictionary"

LDIFF_SYM229=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM230=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM231=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_35:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 52,16
LDIFF_SYM232=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM233=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM234=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM234
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM235=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_36:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 52,16
LDIFF_SYM236=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM237=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM238=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM239=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_37:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 52,16
LDIFF_SYM240=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM241=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM242=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM243=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_3:

	.byte 5
	.asciz "Xamarin_Forms_VisualElement"

	.byte 200,1,16
LDIFF_SYM244=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,0,6
	.asciz "isNativeStateConsistent"

LDIFF_SYM245=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,120,6
	.asciz "mockX"

LDIFF_SYM246=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,124,6
	.asciz "mockY"

LDIFF_SYM247=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 3,35,132,1,6
	.asciz "mockWidth"

LDIFF_SYM248=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 3,35,140,1,6
	.asciz "mockHeight"

LDIFF_SYM249=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 3,35,148,1,6
	.asciz "widthRequest"

LDIFF_SYM250=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 3,35,156,1,6
	.asciz "heightRequest"

LDIFF_SYM251=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 3,35,164,1,6
	.asciz "minimumWidthRequest"

LDIFF_SYM252=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 3,35,172,1,6
	.asciz "minimumHeightRequest"

LDIFF_SYM253=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 3,35,180,1,6
	.asciz "resourceDictionary"

LDIFF_SYM254=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,35,84,6
	.asciz "ChildrenReordered"

LDIFF_SYM255=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,88,6
	.asciz "BatchCommitted"

LDIFF_SYM256=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,92,6
	.asciz "SizeChanged"

LDIFF_SYM257=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,96,6
	.asciz "MeasureInvalidated"

LDIFF_SYM258=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,100,6
	.asciz "Focused"

LDIFF_SYM259=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,104,6
	.asciz "Unfocused"

LDIFF_SYM260=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,108,6
	.asciz "isFocused"

LDIFF_SYM261=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 3,35,188,1,6
	.asciz "FocusRequested"

LDIFF_SYM262=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,112,6
	.asciz "UnfocusRequested"

LDIFF_SYM263=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,116,6
	.asciz "batched"

LDIFF_SYM264=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 3,35,192,1,6
	.asciz "isPlatformEnabled"

LDIFF_SYM265=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 3,35,196,1,0,7
	.asciz "Xamarin_Forms_VisualElement"

LDIFF_SYM266=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM267=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM268=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_40:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM269=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM269
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM270=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM271=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_39:

	.byte 5
	.asciz "System_Collections_ObjectModel_Collection`1"

	.byte 16,16
LDIFF_SYM272=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,35,0,6
	.asciz "items"

LDIFF_SYM273=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,8,6
	.asciz "syncRoot"

LDIFF_SYM274=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,12,0,7
	.asciz "System_Collections_ObjectModel_Collection`1"

LDIFF_SYM275=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM275
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM276=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM277=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_41:

	.byte 5
	.asciz "_SimpleMonitor"

	.byte 12,16
LDIFF_SYM278=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,35,0,6
	.asciz "_busyCount"

LDIFF_SYM279=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,8,0,7
	.asciz "_SimpleMonitor"

LDIFF_SYM280=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM281=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM282=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_42:

	.byte 5
	.asciz "System_Collections_Specialized_NotifyCollectionChangedEventHandler"

	.byte 52,16
LDIFF_SYM283=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,0,0,7
	.asciz "System_Collections_Specialized_NotifyCollectionChangedEventHandler"

LDIFF_SYM284=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM284
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM285=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM286=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_38:

	.byte 5
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

	.byte 28,16
LDIFF_SYM287=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,0,6
	.asciz "_monitor"

LDIFF_SYM288=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,16,6
	.asciz "CollectionChanged"

LDIFF_SYM289=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,20,6
	.asciz "PropertyChanged"

LDIFF_SYM290=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,35,24,0,7
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

LDIFF_SYM291=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM292=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM293=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_43:

	.byte 5
	.asciz "System_Collections_ObjectModel_ReadOnlyCollection`1"

	.byte 12,16
LDIFF_SYM294=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,0,6
	.asciz "list"

LDIFF_SYM295=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,8,0,7
	.asciz "System_Collections_ObjectModel_ReadOnlyCollection`1"

LDIFF_SYM296=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM296
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM297=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM297
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM298=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_44:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM299=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM300=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM300
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM301=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM301
LTDIE_2:

	.byte 5
	.asciz "Xamarin_Forms_Page"

	.byte 136,2,16
LDIFF_SYM302=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,0,6
	.asciz "LayoutChanged"

LDIFF_SYM303=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 3,35,200,1,6
	.asciz "internalChildren"

LDIFF_SYM304=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 3,35,204,1,6
	.asciz "logicalChildren"

LDIFF_SYM305=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 3,35,208,1,6
	.asciz "containerAreaSet"

LDIFF_SYM306=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 3,35,224,1,6
	.asciz "containerArea"

LDIFF_SYM307=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 3,35,228,1,6
	.asciz "Appearing"

LDIFF_SYM308=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 3,35,212,1,6
	.asciz "Disappearing"

LDIFF_SYM309=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 3,35,216,1,6
	.asciz "hasAppeared"

LDIFF_SYM310=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 3,35,132,2,6
	.asciz "allocatedFlag"

LDIFF_SYM311=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 3,35,133,2,6
	.asciz "<ToolbarItems>k__BackingField"

LDIFF_SYM312=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 3,35,220,1,0,7
	.asciz "Xamarin_Forms_Page"

LDIFF_SYM313=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM313
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM314=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM314
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM315=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2
	.asciz "XamarinFormsWithShinobiCharts.App:GetMainPage"
	.long _XamarinFormsWithShinobiCharts_App_GetMainPage
	.long Lme_1

	.byte 2,118,16,11
	.asciz ""

LDIFF_SYM316=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM317=Lfde1_end - Lfde1_start
	.long LDIFF_SYM317
Lfde1_start:

	.long 0
	.align 2
	.long _XamarinFormsWithShinobiCharts_App_GetMainPage

LDIFF_SYM318=Lme_1 - _XamarinFormsWithShinobiCharts_App_GetMainPage
	.long LDIFF_SYM318
	.byte 12,13,0,72,14,8,135,2,68,14,16,136,4,138,3,142,1,68,14,32
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_50:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM319=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM319
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM320=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM320
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM321=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_49:

	.byte 5
	.asciz "System_Collections_ObjectModel_Collection`1"

	.byte 16,16
LDIFF_SYM322=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,0,6
	.asciz "items"

LDIFF_SYM323=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,8,6
	.asciz "syncRoot"

LDIFF_SYM324=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,12,0,7
	.asciz "System_Collections_ObjectModel_Collection`1"

LDIFF_SYM325=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM325
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM326=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM326
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM327=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM327
LTDIE_51:

	.byte 5
	.asciz "_SimpleMonitor"

	.byte 12,16
LDIFF_SYM328=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,0,6
	.asciz "_busyCount"

LDIFF_SYM329=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,8,0,7
	.asciz "_SimpleMonitor"

LDIFF_SYM330=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM331=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM332=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_48:

	.byte 5
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

	.byte 28,16
LDIFF_SYM333=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,0,6
	.asciz "_monitor"

LDIFF_SYM334=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,35,16,6
	.asciz "CollectionChanged"

LDIFF_SYM335=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,20,6
	.asciz "PropertyChanged"

LDIFF_SYM336=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,24,0,7
	.asciz "System_Collections_ObjectModel_ObservableCollection`1"

LDIFF_SYM337=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM338=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM339=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_47:

	.byte 5
	.asciz "Xamarin_Forms_View"

	.byte 204,1,16
LDIFF_SYM340=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,0,6
	.asciz "gestureRecognizers"

LDIFF_SYM341=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 3,35,200,1,0,7
	.asciz "Xamarin_Forms_View"

LDIFF_SYM342=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM343=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM343
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM344=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM344
LTDIE_46:

	.byte 5
	.asciz "Xamarin_Forms_ContentPage"

	.byte 140,2,16
LDIFF_SYM345=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,0,6
	.asciz "content"

LDIFF_SYM346=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 3,35,136,2,0,7
	.asciz "Xamarin_Forms_ContentPage"

LDIFF_SYM347=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM347
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM348=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM348
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM349=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_45:

	.byte 5
	.asciz "XamarinFormsWithShinobiCharts_ChartPage"

	.byte 140,2,16
LDIFF_SYM350=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,0,0,7
	.asciz "XamarinFormsWithShinobiCharts_ChartPage"

LDIFF_SYM351=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM351
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM352=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM352
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM353=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2
	.asciz "XamarinFormsWithShinobiCharts.ChartPage:.ctor"
	.long _XamarinFormsWithShinobiCharts_ChartPage__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM354=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 3,123,244,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM355=Lfde2_end - Lfde2_start
	.long LDIFF_SYM355
Lfde2_start:

	.long 0
	.align 2
	.long _XamarinFormsWithShinobiCharts_ChartPage__ctor

LDIFF_SYM356=Lme_2 - _XamarinFormsWithShinobiCharts_ChartPage__ctor
	.long LDIFF_SYM356
	.byte 12,13,0,72,14,8,135,2,68,14,16,136,4,139,3,142,1,68,14,144,1,68,13,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/jogorman/Projects/XamarinFormsWithShinobiCharts/XamarinFormsWithShinobiCharts"

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0
	.asciz "App.cs"

	.byte 1,0,0
	.asciz "ChartPage.cs"

	.byte 1,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _XamarinFormsWithShinobiCharts_App_GetMainPage

	.byte 3,8,4,2,1,3,8,2,196,0,1,8,117,3,1,2,52,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _XamarinFormsWithShinobiCharts_ChartPage__ctor

	.byte 3,13,4,3,1,3,13,2,200,0,1,8,229,243,3,1,2,192,1,1,2,44,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
