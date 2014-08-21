#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#define DEBUG 1
#include <stdarg.h>
#include <monotouch/monotouch.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAEmitterBehavior.h>
#import <GLKit/GLKit.h>

struct trampoline_struct_dd {
	double v0;
	double v8;
};
struct trampoline_struct_ffff {
	float v0;
	float v4;
	float v8;
	float v12;
};

bool native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


bool native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &self);
	mono_field_set_value (mthis, monotouch_nsobject_flags_field, &flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (self, mthis, true);

	return self;
}


void native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


int native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


int native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, int p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


int native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = monotouch_get_inative_object_static (p0, false, "MonoTouch.UIKit.UIBarPositioningWrapper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.IUIBarPositioning, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065");

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	int res;
	res = *(int *) mono_object_unbox (retval);

	return res;
}


bool native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, NSString * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, SEL p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = p0 ? monotouch_get_selector (p0) : NULL;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, bool p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, CGPoint p1, CGPoint* p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, float p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


id native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_generic_method_direct (mthis, r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_generic_method_direct (mthis, r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


CGSize native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGSize p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_generic_method_direct (mthis, r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	CGSize res;
	res = *(CGSize *) mono_object_unbox (retval);

	return res;
}


bool native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_generic_method_direct (mthis, r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


void native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, true);
	}
	if (!managed_method) {
		managed_method = get_generic_method_direct (mthis, r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


CGRect native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	CGRect res;
	res = *(CGRect *) mono_object_unbox (retval);

	return res;
}


CGSize native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGSize p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	CGSize res;
	res = *(CGSize *) mono_object_unbox (retval);

	return res;
}


id native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_33 (id self, SEL _cmd, MonoMethod **managed_method_ptr, int p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


id native_to_managed_trampoline_34 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


NSArray * native_to_managed_trampoline_35 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSArray * res;
	if (retval) {
		int length = mono_array_length ((MonoArray *) retval);
		int i;
		void **buf = malloc (sizeof (void *) * length);
		for (i = 0; i < length; i++) {
			void *value = mono_array_get ((MonoArray *) retval, MonoObject *, i);
			char *str = mono_string_to_utf8 ((MonoString *) value);
			NSString *sv = [[NSString alloc] initWithUTF8String:str];
			[sv autorelease];
			mono_free (str);
			buf [i] = sv;
		}
		NSArray *arr = [[NSArray alloc] initWithObjects: (void *) buf count: length];
		free (buf);
		[arr autorelease];
		res = arr;
	} else {
		res = NULL;
	}
	monotouch_framework_peer_lock ();
	mt_dummy_use (retval);
	monotouch_framework_peer_unlock ();

	return res;
}


NSString * native_to_managed_trampoline_36 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSString * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}

	return res;
}


float native_to_managed_trampoline_37 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	float res;
	res = *(float *) mono_object_unbox (retval);

	return res;
}


float native_to_managed_trampoline_38 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	float res;
	res = *(float *) mono_object_unbox (retval);

	return res;
}


void native_to_managed_trampoline_39 (id self, SEL _cmd, MonoMethod **managed_method_ptr, int p0, double p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


id native_to_managed_trampoline_40 (id self, SEL _cmd, MonoMethod **managed_method_ptr, CGRect p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (self))
		return self;
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	arg_ptrs [0] = &p0;

	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = 2;
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &self);
	mono_field_set_value (mthis, monotouch_nsobject_flags_field, &flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (self, mthis, true);

	return self;
}


NSArray * native_to_managed_trampoline_41 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		managed_method = get_method_direct(r0, r1, 0, NULL)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSArray * res;
	if (retval) {
		int length = mono_array_length ((MonoArray *) retval);
		int i;
		void **buf = malloc (sizeof (void *) * length);
		for (i = 0; i < length; i++) {
			void *value = mono_array_get ((MonoArray *) retval, MonoObject *, i);
			void *v;
			mono_field_get_value (value, monotouch_nsobject_handle_field, &v);
			buf [i] = v;
		}
		NSArray *arr = [[NSArray alloc] initWithObjects: (void *) buf count: length];
		free (buf);
		[arr autorelease];
		res = arr;
	} else {
		res = NULL;
	}
	monotouch_framework_peer_lock ();
	mt_dummy_use (retval);
	monotouch_framework_peer_unlock ();

	return res;
}


void native_to_managed_trampoline_42 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSArray * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	if (p0) {
		NSArray *arr = (NSArray *) p0;
		monotouch_check_objc_type (p0, [NSArray class], _cmd, self, 0, managed_method);
		MonoClass *e_class;
		MonoArray *marr;
		MonoType *p;
		int j;
		p = monotouch_get_parameter_type (managed_method, 0);
		e_class = mono_class_get_element_class (mono_class_from_mono_type (p));
		marr = mono_array_new (mono_domain_get (), e_class, [arr count]);
		for (j = 0; j < [arr count]; j++) {
			NSObject *nobj = [arr objectAtIndex: j];
			MonoObject *mobj0 = NULL;
			if (nobj) {
				mobj0 = get_managed_object_for_ptr_fast (nobj, false);
				monotouch_verify_parameter (mobj0, _cmd, self, nobj, 0, e_class, managed_method);
			}
			mono_array_set (marr, MonoObject *, j, mobj0);
		}
		arg_ptrs [0] = marr;
	} else {
		arg_ptrs [0] = NULL;
	}

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


id native_to_managed_trampoline_43 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = get_method_direct(r1, r2, 1, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value ((MonoObject *) retval, monotouch_nsobject_handle_field, (void **) &retobj);
		monotouch_framework_peer_lock ();
		[retobj retain];
		monotouch_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


void native_to_managed_trampoline_44 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, CGRect p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = get_method_direct(r2, r3, 2, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_45 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, id p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = monotouch_get_parameter_type (managed_method, 2);
		mobj2 = get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		monotouch_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


void native_to_managed_trampoline_46 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, id p2, id p3, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4, const char *r5)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [4];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[4] = { r0, r1, r2, r3 };
		managed_method = get_method_direct(r4, r5, 4, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	bool created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = monotouch_get_parameter_type (managed_method, 2);
		mobj2 = get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		monotouch_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;
	NSObject *nsobj3 = (NSObject *) p3;
	MonoObject *mobj3 = NULL;
	bool created3 = false;
	if (nsobj3) {
		MonoType *paramtype3 = monotouch_get_parameter_type (managed_method, 3);
		mobj3 = get_nsobject_with_type_for_ptr_created (nsobj3, false, paramtype3, &created3);
		monotouch_verify_parameter (mobj3, _cmd, self, nsobj3, 3, mono_class_from_mono_type (paramtype3), managed_method);
	}
	arg_ptrs [3] = mobj3;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


bool native_to_managed_trampoline_47 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, id p1, int p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	bool created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = monotouch_get_parameter_type (managed_method, 1);
		mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		monotouch_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	bool res;
	res = *(bool *) mono_object_unbox (retval);

	return res;
}


NSString * native_to_managed_trampoline_48 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, int p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	void * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSString * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}

	return res;
}


void native_to_managed_trampoline_49 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, int p1, int p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = get_managed_object_for_ptr_fast (self, false);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = get_method_direct(r3, r4, 3, paramptr)->method;
		*managed_method_ptr = managed_method;
	}
	check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	bool created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = monotouch_get_parameter_type (managed_method, 0);
		mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		monotouch_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}



@interface AppDelegate : NSObject/*<UIApplicationDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) application:(id)p0 didFinishLaunchingWithOptions:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) application:(id)p0 didFinishLaunchingWithOptions:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSDictionary, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "XamarinFormsWithShinobiCharts.iOS.AppDelegate, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "FinishedLaunching");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "XamarinFormsWithShinobiCharts.iOS.AppDelegate, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface XamarinFormsWithShinobiCharts_iOS_ChartView : UIView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) drawRect:(CGRect)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation XamarinFormsWithShinobiCharts_iOS_ChartView { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) drawRect:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Drawing.RectangleF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "XamarinFormsWithShinobiCharts.iOS.ChartView, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "Draw");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "XamarinFormsWithShinobiCharts.iOS.ChartView, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_PageRenderer : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(void) viewWillDisappear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_PageRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(void) viewWillDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillDisappear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface XamarinFormsWithShinobiCharts_iOS_ChartViewRenderer : Xamarin_Forms_Platform_iOS_PageRenderer {
}
	-(void) viewDidLoad;
	-(id) init;
@end
@implementation XamarinFormsWithShinobiCharts_iOS_ChartViewRenderer { } 

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "XamarinFormsWithShinobiCharts.iOS.ChartViewRenderer, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "XamarinFormsWithShinobiCharts.iOS.ChartViewRenderer, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@protocol SChartDatasource/* <NSObject>*/
@end

@interface XamarinFormsWithShinobiCharts_iOS_GettingStartedDataSource : NSObject/*<SChartDatasource>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(int) numberOfSeriesInSChart:(id)p0;
	-(id) sChart:(id)p0 seriesAtIndex:(int)p1;
	-(int) sChart:(id)p0 numberOfDataPointsForSeriesAtIndex:(int)p1;
	-(id) sChart:(id)p0 dataPointAtIndex:(int)p1 forSeriesAtIndex:(int)p2;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation XamarinFormsWithShinobiCharts_iOS_GettingStartedDataSource { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(int) numberOfSeriesInSChart:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "ShinobiCharts.ShinobiChart, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetNumberOfSeries");
	}

	-(id) sChart:(id)p0 seriesAtIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, p1, "ShinobiCharts.ShinobiChart, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetSeries");
	}

	-(int) sChart:(id)p0 numberOfDataPointsForSeriesAtIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "ShinobiCharts.ShinobiChart, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetNumberOfDataPoints");
	}

	-(id) sChart:(id)p0 dataPointAtIndex:(int)p1 forSeriesAtIndex:(int)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, p1, p2, "ShinobiCharts.ShinobiChart, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", "GetDataPoint");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface MonoTouch_Foundation_InternalNSNotificationHandler : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) post:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_Foundation_InternalNSNotificationHandler { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) post:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSNotification, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.InternalNSNotificationHandler, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Post");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) xamarinApplySelector;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Apply");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface __Xamarin_NSTimerActionDispatcher : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) xamarinFireSelector:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation __Xamarin_NSTimerActionDispatcher { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) xamarinFireSelector:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSTimer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSTimerActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Fire");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) xamarinApplySelector;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSAsyncActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Apply");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface MonoTouch_UIKit_UIControlEventProxy : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) BridgeSelector;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_UIKit_UIControlEventProxy { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIControlEventProxy, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface __NSObject_Disposer : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	+(void) drain:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	+(void) drain:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Drain");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate : NSObject/*<UIActionSheetDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) actionSheetCancel:(id)p0;
	-(void) actionSheet:(id)p0 clickedButtonAtIndex:(int)p1;
	-(void) actionSheet:(id)p0 didDismissWithButtonIndex:(int)p1;
	-(void) didPresentActionSheet:(id)p0;
	-(void) actionSheet:(id)p0 willDismissWithButtonIndex:(int)p1;
	-(void) willPresentActionSheet:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) actionSheetCancel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Canceled");
	}

	-(void) actionSheet:(id)p0 clickedButtonAtIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Clicked");
	}

	-(void) actionSheet:(id)p0 didDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Dismissed");
	}

	-(void) didPresentActionSheet:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Presented");
	}

	-(void) actionSheet:(id)p0 willDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillDismiss");
	}

	-(void) willPresentActionSheet:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillPresent");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate : NSObject/*<UIAlertViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) alertViewCancel:(id)p0;
	-(void) alertView:(id)p0 clickedButtonAtIndex:(int)p1;
	-(void) alertView:(id)p0 didDismissWithButtonIndex:(int)p1;
	-(void) didPresentAlertView:(id)p0;
	-(bool) alertViewShouldEnableFirstOtherButton:(id)p0;
	-(void) alertView:(id)p0 willDismissWithButtonIndex:(int)p1;
	-(void) willPresentAlertView:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) alertViewCancel:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Canceled");
	}

	-(void) alertView:(id)p0 clickedButtonAtIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Clicked");
	}

	-(void) alertView:(id)p0 didDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Dismissed");
	}

	-(void) didPresentAlertView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Presented");
	}

	-(bool) alertViewShouldEnableFirstOtherButton:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldEnableFirstOtherButton");
	}

	-(void) alertView:(id)p0 willDismissWithButtonIndex:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillDismiss");
	}

	-(void) willPresentAlertView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillPresent");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface MonoTouch_UIKit_UIBarButtonItem_Callback : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) InvokeAction:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UIBarButtonItem_Callback { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) InvokeAction:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Call");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIGestureRecognizer+Token, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
	-(void) target;
@end
@implementation __UIGestureRecognizerParameterlessToken { } 

	-(void) target
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIGestureRecognizer+ParameterlessDispatch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
	-(void) target:(id)p0;
@end
@implementation __UIGestureRecognizerParametrizedToken { } 

	-(void) target:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+ParametrizedDispatch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}
@end

@interface MonoTouch_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate : NSObject/*<UIGestureRecognizerDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) gestureRecognizerShouldBegin:(id)p0;
	-(bool) gestureRecognizer:(id)p0 shouldBeRequiredToFailByGestureRecognizer:(id)p1;
	-(bool) gestureRecognizer:(id)p0 shouldReceiveTouch:(id)p1;
	-(bool) gestureRecognizer:(id)p0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)p1;
	-(bool) gestureRecognizer:(id)p0 shouldRequireFailureOfGestureRecognizer:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) gestureRecognizerShouldBegin:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBegin");
	}

	-(bool) gestureRecognizer:(id)p0 shouldBeRequiredToFailByGestureRecognizer:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBeRequiredToFailBy");
	}

	-(bool) gestureRecognizer:(id)p0 shouldReceiveTouch:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITouch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldReceiveTouch");
	}

	-(bool) gestureRecognizer:(id)p0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldRecognizeSimultaneously");
	}

	-(bool) gestureRecognizer:(id)p0 shouldRequireFailureOfGestureRecognizer:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_1 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldRequireFailureOf");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface __UILongPressGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(id)p0;
@end
@implementation __UILongPressGestureRecognizer { } 

	-(void) target:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UILongPressGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UILongPressGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}
@end

@interface __UITapGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(id)p0;
@end
@implementation __UITapGestureRecognizer { } 

	-(void) target:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITapGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITapGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}
@end

@interface __UIPanGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(id)p0;
@end
@implementation __UIPanGestureRecognizer { } 

	-(void) target:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIPanGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIPanGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Activated");
	}
@end

@interface MonoTouch_UIKit_UISearchBar__UISearchBarDelegate : NSObject/*<UISearchBarDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) searchBarBookmarkButtonClicked:(id)p0;
	-(void) searchBarCancelButtonClicked:(id)p0;
	-(int) positionForBar:(id)p0;
	-(void) searchBarResultsListButtonClicked:(id)p0;
	-(void) searchBarTextDidBeginEditing:(id)p0;
	-(void) searchBarTextDidEndEditing:(id)p0;
	-(void) searchBarSearchButtonClicked:(id)p0;
	-(void) searchBar:(id)p0 selectedScopeButtonIndexDidChange:(int)p1;
	-(bool) searchBarShouldBeginEditing:(id)p0;
	-(bool) searchBar:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(bool) searchBarShouldEndEditing:(id)p0;
	-(void) searchBar:(id)p0 textDidChange:(NSString *)p1;
	-(bool) respondsToSelector:(SEL)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UISearchBar__UISearchBarDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) searchBarBookmarkButtonClicked:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "BookmarkButtonClicked");
	}

	-(void) searchBarCancelButtonClicked:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "CancelButtonClicked");
	}

	-(int) positionForBar:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.IUIBarPositioning, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "GetPositionForBar");
	}

	-(void) searchBarResultsListButtonClicked:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ListButtonClicked");
	}

	-(void) searchBarTextDidBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "OnEditingStarted");
	}

	-(void) searchBarTextDidEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "OnEditingStopped");
	}

	-(void) searchBarSearchButtonClicked:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "SearchButtonClicked");
	}

	-(void) searchBar:(id)p0 selectedScopeButtonIndexDidChange:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "SelectedScopeButtonIndexChanged");
	}

	-(bool) searchBarShouldBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBeginEditing");
	}

	-(bool) searchBar:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.String, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldChangeTextInRange");
	}

	-(bool) searchBarShouldEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldEndEditing");
	}

	-(void) searchBar:(id)p0 textDidChange:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.String, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "TextChanged");
	}

	-(bool) respondsToSelector:(SEL)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, "MonoTouch.ObjCRuntime.Selector, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "RespondsToSelector");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface MonoTouch_UIKit_UITextField__UITextFieldDelegate : NSObject/*<UITextFieldDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) textFieldDidEndEditing:(id)p0;
	-(void) textFieldDidBeginEditing:(id)p0;
	-(bool) textFieldShouldBeginEditing:(id)p0;
	-(bool) textField:(id)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(bool) textFieldShouldClear:(id)p0;
	-(bool) textFieldShouldEndEditing:(id)p0;
	-(bool) textFieldShouldReturn:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UITextField__UITextFieldDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) textFieldDidEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingEnded");
	}

	-(void) textFieldDidBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingStarted");
	}

	-(bool) textFieldShouldBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBeginEditing");
	}

	-(bool) textField:(id)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.String, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldChangeCharacters");
	}

	-(bool) textFieldShouldClear:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldClear");
	}

	-(bool) textFieldShouldEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldEndEditing");
	}

	-(bool) textFieldShouldReturn:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldReturn");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface MonoTouch_UIKit_UITextView__UITextViewDelegate : NSObject/*<UITextViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) textViewDidChange:(id)p0;
	-(void) scrollViewDidEndDecelerating:(id)p0;
	-(void) scrollViewWillBeginDecelerating:(id)p0;
	-(void) scrollViewDidZoom:(id)p0;
	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1;
	-(void) scrollViewWillBeginDragging:(id)p0;
	-(void) textViewDidEndEditing:(id)p0;
	-(void) textViewDidBeginEditing:(id)p0;
	-(void) scrollViewDidEndScrollingAnimation:(id)p0;
	-(void) scrollViewDidScroll:(id)p0;
	-(void) scrollViewDidScrollToTop:(id)p0;
	-(void) textViewDidChangeSelection:(id)p0;
	-(bool) textViewShouldBeginEditing:(id)p0;
	-(bool) textView:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(bool) textViewShouldEndEditing:(id)p0;
	-(bool) textView:(id)p0 shouldInteractWithTextAttachment:(id)p1 inRange:(NSRange)p2;
	-(bool) textView:(id)p0 shouldInteractWithURL:(id)p1 inRange:(NSRange)p2;
	-(bool) scrollViewShouldScrollToTop:(id)p0;
	-(id) viewForZoomingInScrollView:(id)p0;
	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2;
	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UITextView__UITextViewDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) textViewDidChange:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Changed");
	}

	-(void) scrollViewDidEndDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingStarted");
	}

	-(void) textViewDidEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingEnded");
	}

	-(void) textViewDidBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "EditingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrolledToTop");
	}

	-(void) textViewDidChangeSelection:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "SelectionChanged");
	}

	-(bool) textViewShouldBeginEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldBeginEditing");
	}

	-(bool) textView:(id)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.String, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldChangeText");
	}

	-(bool) textViewShouldEndEditing:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldEndEditing");
	}

	-(bool) textView:(id)p0 shouldInteractWithTextAttachment:(id)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.NSTextAttachment, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldInteractWithTextAttachment");
	}

	-(bool) textView:(id)p0 shouldInteractWithURL:(id)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSUrl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSRange, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldInteractWithUrl");
	}

	-(bool) scrollViewShouldScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldScrollToTop");
	}

	-(id) viewForZoomingInScrollView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF&, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Single, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingStarted");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface MonoTouch_UIKit_UIScrollView__UIScrollViewDelegate : NSObject/*<UIScrollViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) scrollViewDidEndDecelerating:(id)p0;
	-(void) scrollViewWillBeginDecelerating:(id)p0;
	-(void) scrollViewDidZoom:(id)p0;
	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1;
	-(void) scrollViewWillBeginDragging:(id)p0;
	-(void) scrollViewDidEndScrollingAnimation:(id)p0;
	-(void) scrollViewDidScroll:(id)p0;
	-(void) scrollViewDidScrollToTop:(id)p0;
	-(bool) scrollViewShouldScrollToTop:(id)p0;
	-(id) viewForZoomingInScrollView:(id)p0;
	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2;
	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MonoTouch_UIKit_UIScrollView__UIScrollViewDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) scrollViewDidEndDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(id)p0 willDecelerate:(bool)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "DraggingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ScrolledToTop");
	}

	-(bool) scrollViewShouldScrollToTop:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ShouldScrollToTop");
	}

	-(id) viewForZoomingInScrollView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(id)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.PointF&, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(id)p0 withView:(id)p1 atScale:(float)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Single, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(id)p0 withView:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "ZoomingStarted");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@protocol SChartAnimationCurveProtocol/* <NSObject>*/
@end

@interface SChartBounceAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBounceDelayAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDelayBounceAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDelayBounceWithMinimumAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartEaseInAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartEaseInOutAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartEaseOutAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartFlatAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLinearAnimationCurve : NSObject/*<SChartAnimationCurveProtocol>*/ {
}
	-(float) valueAtTime:(float)p0;
	-(id) copy;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartAxis : NSObject {
}
	-(bool) allowPanningOutOfDefaultRange;
	-(void) setAllowPanningOutOfDefaultRange:(bool)p0;
	-(bool) allowPanningOutOfMaxRange;
	-(void) setAllowPanningOutOfMaxRange:(bool)p0;
	-(id) anchorPoint;
	-(void) setAnchorPoint:(id)p0;
	-(bool) animationEdgeBouncing;
	-(void) setAnimationEdgeBouncing:(bool)p0;
	-(bool) animationEnabled;
	-(void) setAnimationEnabled:(bool)p0;
	-(CGRect) axisFrame;
	-(void) setAxisFrame:(CGRect)p0;
	-(bool) axisLabelsAreFixed;
	-(void) setAxisLabelsAreFixed:(bool)p0;
	-(int) axisOrientation;
	-(int) axisPosition;
	-(void) setAxisPosition:(int)p0;
	-(id) axisPositionValue;
	-(void) setAxisPositionValue:(id)p0;
	-(id) axisRange;
	-(id) barColMax;
	-(id) barColMin;
	-(double) barColSpacing;
	-(void) setBarColSpacing:(double)p0;
	-(id) chart;
	-(void) setChart:(id)p0;
	-(id) currentMajorTickFrequency;
	-(id) currentMinorTickFrequency;
	-(id) dataRange;
	-(id) defaultRange;
	-(void) setDefaultRange:(id)p0;
	-(bool) enableGesturePanning;
	-(void) setEnableGesturePanning:(bool)p0;
	-(bool) enableGestureZooming;
	-(void) setEnableGestureZooming:(bool)p0;
	-(bool) enableMomentumPanning;
	-(void) setEnableMomentumPanning:(bool)p0;
	-(bool) enableMomentumZooming;
	-(void) setEnableMomentumZooming:(bool)p0;
	-(bool) isMomentumPanning;
	-(bool) isMomentumZooming;
	-(id) labelFormatString;
	-(void) setLabelFormatString:(id)p0;
	-(id) labelFormatter;
	-(void) setLabelFormatter:(id)p0;
	-(id) majorTickFrequency;
	-(void) setMajorTickFrequency:(id)p0;
	-(id) minorTickFrequency;
	-(void) setMinorTickFrequency:(id)p0;
	-(double) panMomentumDelay;
	-(void) setPanMomentumDelay:(double)p0;
	-(double) panMomentumFactor;
	-(void) setPanMomentumFactor:(double)p0;
	-(id) rangePaddingLow;
	-(void) setRangePaddingLow:(id)p0;
	-(id) rangePaddingHigh;
	-(void) setRangePaddingHigh:(id)p0;
	-(float) secondaryAxisOffset;
	-(void) setSecondaryAxisOffset:(float)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(int) tickLabelClippingModeHigh;
	-(void) setTickLabelClippingModeHigh:(int)p0;
	-(int) tickLabelClippingModeLow;
	-(void) setTickLabelClippingModeLow:(int)p0;
	-(int) discontinuousTickLabelClipping;
	-(void) setDiscontinuousTickLabelClipping:(int)p0;
	-(bool) calculateMajorTickFrequencyFromDiscontinuousRange;
	-(void) setCalculateMajorTickFrequencyFromDiscontinuousRange:(bool)p0;
	-(NSString *) title;
	-(void) setTitle:(NSString *)p0;
	-(id) titleLabel;
	-(void) setTitleLabel:(id)p0;
	-(id) width;
	-(void) setWidth:(id)p0;
	-(double) zoomMomentumDelay;
	-(void) setZoomMomentumDelay:(double)p0;
	-(double) zoomMomentumFactor;
	-(void) setZoomMomentumFactor:(double)p0;
	-(id) visibleRange;
	-(void) configureBars:(double)p0 withMinY:(id)p1 withMaxY:(id)p2;
	-(void) configureColumns:(double)p0 withMinX:(id)p1 withMaxX:(id)p2;
	-(id) getNewRangeWithMinimum:(id)p0 withMaximum:(id)p1;
	-(bool) isXAxis;
	-(float) pixelValueForDataValue:(id)p0;
	-(float) dataValueForPixelValue:(float)p0;
	-(id) offsetForSeries:(id)p0;
	-(bool) panByValue:(double)p0;
	-(bool) panByValue:(double)p0 withAnimation:(bool)p1;
	-(bool) panByValue:(double)p0 withAnimation:(bool)p1 withBounceLimits:(bool)p2;
	-(bool) panByValue:(double)p0 withAnimation:(bool)p1 withBounceLimits:(bool)p2 andRedraw:(bool)p3;
	-(bool) resetZoomLevel;
	-(bool) resetZoomLevelWithAnimation:(bool)p0;
	-(bool) setRangeWithMinimum:(id)p0 andMaximum:(id)p1;
	-(bool) setRangeWithMinimum:(id)p0 andMaximum:(id)p1 withAnimation:(bool)p2;
	-(bool) setZoom:(double)p0 fromPosition:(double*)p1 withAnimation:(bool)p2 andBounceLimits:(bool)p3;
	-(bool) setZoom:(double)p0 fromPosition:(double*)p1 withAnimation:(bool)p2;
	-(bool) setZoom:(double)p0 fromPosition:(double*)p1;
	-(bool) setZoom:(double)p0 withAnimation:(bool)p1;
	-(bool) setZoom:(double)p0;
	-(bool) setZoomLevel:(int)p0;
	-(NSString *) stringForId:(id)p0;
	-(double) zoom;
	-(void) zoomToPoint:(double)p0 withRange:(double)p1 withAnimation:(bool)p2 usingBounceLimits:(bool)p3;
	-(void) zoomToPoint:(double)p0 withRange:(double)p1;
	-(void) alterTickMark:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithRange:(id)p0;
@end

@protocol SChartLegendItem/* <NSObject>*/
@end

@interface SChartSeries : NSObject/*<SChartLegendItem>*/ {
}
	-(id) dataSeries;
	-(void) setDataSeries:(id)p0;
	-(int) orientation;
	-(void) setOrientation:(int)p0;
	-(int) selectionMode;
	-(void) setSelectionMode:(int)p0;
	-(bool) toggleSelection;
	-(void) setToggleSelection:(bool)p0;
	-(bool) togglePointSelection;
	-(void) setTogglePointSelection:(bool)p0;
	-(bool) selected;
	-(void) setSelected:(bool)p0;
	-(bool) crosshairEnabled;
	-(void) setCrosshairEnabled:(bool)p0;
	-(NSString *) title;
	-(void) setTitle:(NSString *)p0;
	-(bool) showInLegend;
	-(void) setShowInLegend:(bool)p0;
	-(id) legendItem;
	-(void) setLegendItem:(id)p0;
	-(NSArray *) xValueKeys;
	-(NSArray *) yValueKeys;
	-(bool) hidden;
	-(void) setHidden:(bool)p0;
	-(id) entryAnimation;
	-(void) setEntryAnimation:(id)p0;
	-(id) exitAnimation;
	-(void) setExitAnimation:(id)p0;
	-(bool) animationEnabled;
	-(void) setAnimationEnabled:(bool)p0;
	-(NSArray *) valueKeys;
	-(bool) shouldBeDrawn;
	-(NSString *) stringForValueWithKey:(NSString *)p0 withDataPoint:(id)p1 usingAxis:(id)p2;
	-(NSString *) stringForKey:(NSString *)p0 withDataPoint:(id)p1;
	-(id) centreXOfDataPointAtIndex:(int)p0 onChart:(id)p1;
	-(id) centreYOfDataPointAtIndex:(int)p0 onChart:(id)p1;
	-(id) widthOfDataPointAtIndex:(int)p0 onChart:(id)p1;
	-(id) heightOfDataPointAtIndex:(int)p0 onChart:(id)p1;
	-(void) resetForReuse;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMappedSeries : SChartSeries {
}
	-(id) rangeOfDataInX;
	-(id) rangeOfDataInY;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCartesianSeries : SChartMappedSeries {
}
	-(id) baseline;
	-(void) setBaseline:(id)p0;
	-(id) stackIndex;
	-(void) setStackIndex:(id)p0;
	-(bool) animated;
	-(void) setAnimated:(bool)p0;
	-(float) animationDuration;
	-(void) setAnimationDuration:(float)p0;
	-(int) animationCurve;
	-(void) setAnimationCurve:(int)p0;
	-(id) rangeOfDataInX;
	-(id) rangeOfDataInY;
	-(id) dataPointWithMaxY;
	-(id) dataPointWithMinY;
	-(id) dataPointWithMaxX;
	-(id) dataPointWithMinX;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBandSeries : SChartCartesianSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBarColumnSeries : SChartCartesianSeries {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartOHLCSeries : SChartBarColumnSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0 previousPoint:(id)p1;
	-(id) fillColorForPoint:(id)p0 previousPoint:(id)p1 style:(id)p2;
	-(id) gradientColorForPoint:(id)p0 previousPoint:(id)p1 style:(id)p2;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCandlestickSeries : SChartOHLCSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0 previousPoint:(id)p1;
	-(id) fillColorForPoint:(id)p0 previousPoint:(id)p1 style:(id)p2;
	-(id) gradientColorForPoint:(id)p0 previousPoint:(id)p1 style:(id)p2;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCrosshairTooltip : UIView {
}
	-(id) label;
	-(void) setLabel:(id)p0;
	-(float) inset;
	-(void) setInset:(float)p0;
	-(void) setDefaults;
	-(void) layoutContents;
	-(void) setTooltipStyle:(id)p0;
	-(void) setDataPoint:(id)p0 fromSeries:(id)p1 fromChart:(id)p2;
	-(void) setPosition:(struct trampoline_struct_dd)p0 onCanvas:(id)p1;
	-(void) setResolvedDataPoint:(struct trampoline_struct_dd)p0 fromSeries:(id)p1 fromChart:(id)p2;
	-(void) floatingAt:(CGPoint)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCrosshairMultiValueTooltip : SChartCrosshairTooltip {
}
	-(id) labels;
	-(void) setLabels:(id)p0;
	-(id) keyValueDisplayPairsForDataPoint:(id)p0 onSeries:(id)p1 withXAxis:(id)p2 withYAxis:(id)p3;
	-(NSString *) mainLabelStringForDataPoint:(id)p0 onSeries:(id)p1 withXAxis:(id)p2 withYAxis:(id)p3;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDateTimeAxis : SChartAxis {
}
	-(NSString *) formatStringForFrequency:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithRange:(id)p0;
@end

@interface SChartDiscontinuousDateTimeAxis : SChartDateTimeAxis {
}
	-(NSArray *) excludedTimePeriods;
	-(NSArray *) excludedRepeatedTimePeriods;
	-(void) addExcludedTimePeriod:(id)p0;
	-(void) addExcludedRepeatedTimePeriod:(id)p0;
	-(void) removeExcludedTimePeriod:(id)p0;
	-(void) removeExcludedRepeatedTimePeriod:(id)p0;
	-(unsigned int) cacheCount;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartNumberAxis : SChartAxis {
}
	-(double) zoomInLimit;
	-(void) setZoomInLimit:(double)p0;
	-(double) zoomOutLimit;
	-(void) setZoomOutLimit:(double)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithRange:(id)p0;
@end

@interface SChartDiscontinuousNumberAxis : SChartNumberAxis {
}
	-(NSArray *) skips;
	-(void) addSkip:(struct trampoline_struct_dd)p0;
	-(void) removeSkip:(struct trampoline_struct_dd)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLegendSymbol : UIView {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLegendSymbolDonutSeries : SChartLegendSymbol {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0 andSliceIndex:(int)p1;
@end

@interface SChartLegendSymbolPieSeries : SChartLegendSymbolDonutSeries {
}
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLogarithmicAxis : SChartNumberAxis {
}
	-(id) base;
	-(void) setBase:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartRange : NSObject {
}
	-(id) minimum;
	-(id) maximum;
	-(id) span;
	-(id) initWithCoder:(id)p0;
	-(id) initWithMinimum:(id)p0 andMaximum:(id)p1;
@end

@interface SChartNumberRange : SChartRange {
}
	-(id) initWithCoder:(id)p0;
@end

@interface SChartRadialSeries : SChartSeries {
}
	-(NSString *) labelFormatString;
	-(void) setLabelFormatString:(NSString *)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartSeriesStyle : NSObject {
}
	-(bool) useSeriesSymbols;
	-(id) dataPointLabelStyle;
	-(void) setDataPointLabelStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDateFrequency : NSObject {
}
	-(int) denomination;
	-(void) setDenomination:(int)p0;
	-(int) year;
	-(int) month;
	-(int) week;
	-(int) day;
	-(int) hour;
	-(int) minute;
	-(int) second;
	-(void) setYear:(int)p0;
	-(void) setMonth:(int)p0;
	-(void) setWeek:(int)p0;
	-(void) setDay:(int)p0;
	-(void) setHour:(int)p0;
	-(void) setMinute:(int)p0;
	-(void) setSecond:(int)p0;
	-(double) toSeconds;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartAnimation : NSObject {
}
	-(id) curve;
	-(void) setCurve:(id)p0;
	-(id) xScaleCurve;
	-(void) setXScaleCurve:(id)p0;
	-(id) yScaleCurve;
	-(void) setYScaleCurve:(id)p0;
	-(id) angleCurve;
	-(void) setAngleCurve:(id)p0;
	-(id) radiusCurve;
	-(void) setRadiusCurve:(id)p0;
	-(id) alphaCurve;
	-(void) setAlphaCurve:(id)p0;
	-(id) duration;
	-(void) setDuration:(id)p0;
	-(id) absoluteOriginX;
	-(void) setAbsoluteOriginX:(id)p0;
	-(id) absoluteOriginY;
	-(void) setAbsoluteOriginY:(id)p0;
	-(float) normalisedOriginX;
	-(void) setNormalisedOriginX:(float)p0;
	-(float) normalisedOriginY;
	-(void) setNormalisedOriginY:(float)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartAnnotation : UIView {
}
	-(id) xAxis;
	-(void) setXAxis:(id)p0;
	-(id) yAxis;
	-(void) setYAxis:(id)p0;
	-(id) xValue;
	-(void) setXValue:(id)p0;
	-(id) yValue;
	-(void) setYValue:(id)p0;
	-(int) position;
	-(void) setPosition:(int)p0;
	-(id) label;
	-(void) setLabel:(id)p0;
	-(void) updateViewWithCanvas:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0;
@end

@interface SChartAnnotationZooming : SChartAnnotation {
}
	-(id) xValueMax;
	-(void) setXValueMax:(id)p0;
	-(id) yValueMax;
	-(void) setYValueMax:(id)p0;
	-(bool) stretchToBoundsOnX;
	-(void) setStretchToBoundsOnX:(bool)p0;
	-(bool) stretchToBoundsOnY;
	-(void) setStretchToBoundsOnY:(bool)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0;
@end

@interface SChartAxisStyle : NSObject {
}
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) interSeriesPadding;
	-(void) setInterSeriesPadding:(id)p0;
	-(id) interSeriesSetPadding;
	-(void) setInterSeriesSetPadding:(id)p0;
	-(id) majorTickStyle;
	-(void) setMajorTickStyle:(id)p0;
	-(id) minorTickStyle;
	-(void) setMinorTickStyle:(id)p0;
	-(id) majorGridLineStyle;
	-(void) setMajorGridLineStyle:(id)p0;
	-(id) gridStripeStyle;
	-(void) setGridStripeStyle:(id)p0;
	-(id) titleStyle;
	-(void) setTitleStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartTitleStyle : NSObject {
}
	-(id) textColor;
	-(void) setTextColor:(id)p0;
	-(id) font;
	-(void) setFont:(id)p0;
	-(float) minimumScaleFactor;
	-(void) setMinimumScaleFactor:(float)p0;
	-(int) textAlign;
	-(void) setTextAlign:(int)p0;
	-(id) backgroundColor;
	-(void) setBackgroundColor:(id)p0;
	-(int) position;
	-(void) setPosition:(int)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartAxisTitleStyle : SChartTitleStyle {
}
	-(int) titleOrientation;
	-(void) setTitleOrientation:(int)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBandSeriesStyle : SChartSeriesStyle {
}
	-(bool) showFill;
	-(void) setShowFill:(bool)p0;
	-(id) lineColorHigh;
	-(void) setLineColorHigh:(id)p0;
	-(id) lineColorLow;
	-(void) setLineColorLow:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) areaColorNormal;
	-(void) setAreaColorNormal:(id)p0;
	-(id) areaColorInverted;
	-(void) setAreaColorInverted:(id)p0;
	-(id) pointStyle;
	-(void) setPointStyle:(id)p0;
	-(id) selectedPointStyle;
	-(void) setSelectedPointStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBarColumnSeriesStyle : SChartSeriesStyle {
}
	-(bool) showArea;
	-(void) setShowArea:(bool)p0;
	-(bool) showAreaWithGradient;
	-(void) setShowAreaWithGradient:(bool)p0;
	-(id) areaColor;
	-(void) setAreaColor:(id)p0;
	-(id) areaColorGradient;
	-(void) setAreaColorGradient:(id)p0;
	-(id) areaColorBelowBaseline;
	-(void) setAreaColorBelowBaseline:(id)p0;
	-(id) areaColorGradientBelowBaseline;
	-(void) setAreaColorGradientBelowBaseline:(id)p0;
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) lineColorBelowBaseline;
	-(void) setLineColorBelowBaseline:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBarSeries : SChartBarColumnSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBarSeriesStyle : SChartBarColumnSeriesStyle {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBasePointStyle : NSObject {
}
	-(bool) showPoints;
	-(void) setShowPoints:(bool)p0;
	-(id) color;
	-(void) setColor:(id)p0;
	-(id) radius;
	-(void) setRadius:(id)p0;
	-(id) texture;
	-(void) setTexture:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBaselinePointStyle : SChartBasePointStyle {
}
	-(id) colorBelowBaseline;
	-(void) setColorBelowBaseline:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBoxGestureStyle : NSObject {
}
	-(id) boxLineColor;
	-(void) setBoxLineColor:(id)p0;
	-(float) boxLineWidth;
	-(void) setBoxLineWidth:(float)p0;
	-(id) trackingLineColor;
	-(void) setTrackingLineColor:(id)p0;
	-(float) trackingLineWidth;
	-(void) setTrackingLineWidth:(float)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@protocol SChartData/* <NSObject>*/
@end

@interface SChartDataPoint : NSObject/*<SChartData>*/ {
}
	-(id) sChartXValue;
	-(void) setSChartXValue:(id)p0;
	-(id) sChartYValue;
	-(void) setSChartYValue:(id)p0;
	-(bool) selected;
	-(void) setSelected:(bool)p0;
	-(int) index;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMultiValueDataPoint : SChartDataPoint {
}
	-(id) values;
	-(void) setValues:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBubbleDataPoint : SChartMultiValueDataPoint {
}
	-(double) area;
	-(void) setArea:(double)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBubblePointStyle : SChartBaselinePointStyle {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartPointSeries : SChartCartesianSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBubbleSeries : SChartPointSeries {
}
	-(id) scale;
	-(void) setScale:(id)p0;
	-(id) biggestBubbleDiameterForAutoScaling;
	-(void) setBiggestBubbleDiameterForAutoScaling:(id)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) currentScale;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartPointSeriesStyle : SChartSeriesStyle {
}
	-(id) pointStyle;
	-(void) setPointStyle:(id)p0;
	-(id) selectedPointStyle;
	-(void) setSelectedPointStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartBubbleSeriesStyle : SChartPointSeriesStyle {
}
	-(id) pointStyle;
	-(void) setPointStyle:(id)p0;
	-(id) selectedPointStyle;
	-(void) setSelectedPointStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartOHLCSeriesStyle : SChartSeriesStyle {
}
	-(id) risingColor;
	-(void) setRisingColor:(id)p0;
	-(id) risingColorGradient;
	-(void) setRisingColorGradient:(id)p0;
	-(id) fallingColor;
	-(void) setFallingColor:(id)p0;
	-(id) fallingColorGradient;
	-(void) setFallingColorGradient:(id)p0;
	-(id) trunkWidth;
	-(void) setTrunkWidth:(id)p0;
	-(id) armWidth;
	-(void) setArmWidth:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCandlestickSeriesStyle : SChartOHLCSeriesStyle {
}
	-(id) outlineColor;
	-(void) setOutlineColor:(id)p0;
	-(id) stickColor;
	-(void) setStickColor:(id)p0;
	-(id) stickWidth;
	-(void) setStickWidth:(id)p0;
	-(id) outlineWidth;
	-(void) setOutlineWidth:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCanvas : UIView {
}
	-(id) chart;
	-(void) setChart:(id)p0;
	-(id) underlay;
	-(void) setUnderlay:(id)p0;
	-(id) underlayForAnnotations;
	-(void) setUnderlayForAnnotations:(id)p0;
	-(id) glView;
	-(void) setGlView:(id)p0;
	-(id) overlay;
	-(void) setOverlay:(id)p0;
	-(bool) redrawGL;
	-(void) setRedrawGL:(bool)p0;
	-(bool) reloadedData;
	-(void) setReloadedData:(bool)p0;
	-(bool) orientationChanged;
	-(void) setOrientationChanged:(bool)p0;
	-(void) enablePanning:(bool)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0 usingChart:(id)p1;
@end

@interface SChartCanvasOverlay : UIView {
}
	-(id) chart;
	-(void) setChart:(id)p0;
	-(id) crosshair;
	-(void) setCrosshair:(id)p0;
	-(bool) gesturePinchAspectLock;
	-(void) setGesturePinchAspectLock:(bool)p0;
	-(int) gesturePanType;
	-(void) setGesturePanType:(int)p0;
	-(void) positionCrosshairIfVisible;
	-(void) enablePanning:(bool)p0;
	-(void) axisFinishedMomentumZooming:(id)p0;
	-(void) axisFinishedMomentumPanning:(id)p0;
	-(void) enableAppropriateGestureRecognisers;
	-(void) createGestureRecognizers;
	-(void) axisIsZooming:(id)p0;
	-(void) axisIsPanning:(id)p0;
	-(void) viewStartRotateWithDuration:(id)p0;
	-(void) viewEndRotateWithDuration:(id)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0 usingChart:(id)p1 andCanvas:(id)p2;
@end

@interface SChartCanvasUnderlay : UIView {
}
	-(id) chart;
	-(void) setChart:(id)p0;
	-(id) borderColor;
	-(void) setBorderColor:(id)p0;
	-(float) borderThickness;
	-(void) setBorderThickness:(float)p0;
	-(void) drawLinesForXCoords:(id)p0 andYCoords:(id)p1 withColor:(id)p2 andWidth:(float)p3;
	-(void) drawLinesForXCoords:(id)p0 andYCoords:(id)p1 withColor:(id)p2 andWidth:(float)p3 andDashStyle:(id)p4;
	-(void) drawRects:(id)p0 withColor:(id)p1;
	-(void) viewStartRotateWithDuration:(id)p0;
	-(void) viewEndRotateWithDuration:(id)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0 usingChart:(id)p1;
@end

@interface SChartCategoryAxis : SChartAxis {
}
	-(id) categories;
	-(void) setCategories:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithRange:(id)p0;
@end

@interface SChartColumnSeries : SChartBarColumnSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartColumnSeriesStyle : SChartBarColumnSeriesStyle {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartCrosshair : UIView {
}
	-(id) chart;
	-(void) setChart:(id)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) tooltip;
	-(void) setTooltip:(id)p0;
	-(bool) enableCrosshairLines;
	-(void) setEnableCrosshairLines:(bool)p0;
	-(bool) interpolatePoints;
	-(void) setInterpolatePoints:(bool)p0;
	-(id) trackingSeries;
	-(void) setTrackingSeries:(id)p0;
	-(struct trampoline_struct_dd) trackingPoint;
	-(void) setTrackingPoint:(struct trampoline_struct_dd)p0;
	-(int) animationOptions;
	-(void) setAnimationOptions:(int)p0;
	-(float) animationDuration;
	-(void) setAnimationDuration:(float)p0;
	-(float) animationDelay;
	-(void) setAnimationDelay:(float)p0;
	-(bool) animationEnabled;
	-(void) setAnimationEnabled:(bool)p0;
	-(int) mode;
	-(void) setMode:(int)p0;
	-(int) outOfRangeBehavior;
	-(void) setOutOfRangeBehavior:(int)p0;
	-(void) showCrosshair;
	-(bool) removeCrosshair;
	-(void) drawCrosshairLines;
	-(void) setDefaultTooltip;
	-(void) moveToFloatingPixelPosition:(CGPoint)p0;
	-(void) moveToFloatingPosition:(struct trampoline_struct_dd)p0 onXAxis:(id)p1 onYAxis:(id)p2;
	-(bool) shouldDrawCrosshairLinesForPoint:(CGPoint)p0 inFrame:(CGRect)p1;
	-(void) moveToPosition:(struct trampoline_struct_dd)p0 andDisplayDataPoint:(struct trampoline_struct_dd)p1 fromSeries:(id)p2 andSeriesDataPoint:(id)p3;
	-(void) crosshairMovedOutOfRange;
	-(bool) crosshairShouldKeepTracking;
	-(void) crosshairTrackingFailed;
	-(void) crosshairChartGotPinchAndPan;
	-(void) crosshairChartGotTapAt:(CGPoint)p0;
	-(void) crosshairChartGotLongPressAt:(CGPoint)p0;
	-(void) chartDidReload;
	-(id) initWithCoder:(id)p0;
	-(id) initWithChart:(id)p0;
@end

@interface SChartCrosshairStyle : NSObject {
}
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) defaultFont;
	-(void) setDefaultFont:(id)p0;
	-(id) defaultTextColor;
	-(void) setDefaultTextColor:(id)p0;
	-(id) defaultLabelBackgroundColor;
	-(void) setDefaultLabelBackgroundColor:(id)p0;
	-(id) defaultBackgroundColor;
	-(void) setDefaultBackgroundColor:(id)p0;
	-(id) defaultCornerRadius;
	-(void) setDefaultCornerRadius:(id)p0;
	-(id) defaultBorderWidth;
	-(void) setDefaultBorderWidth:(id)p0;
	-(id) defaultBorderColor;
	-(void) setDefaultBorderColor:(id)p0;
	-(id) defaultKeyValuesPerRow;
	-(void) setDefaultKeyValuesPerRow:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartTheme : NSObject {
}
	-(id) chartStyle;
	-(void) setChartStyle:(id)p0;
	-(id) radialChartStyle;
	-(void) setRadialChartStyle:(id)p0;
	-(id) chartTitleStyle;
	-(void) setChartTitleStyle:(id)p0;
	-(id) legendStyle;
	-(void) setLegendStyle:(id)p0;
	-(id) xAxisStyle;
	-(void) setXAxisStyle:(id)p0;
	-(id) yAxisStyle;
	-(void) setYAxisStyle:(id)p0;
	-(id) xAxisRadialStyle;
	-(void) setXAxisRadialStyle:(id)p0;
	-(id) yAxisRadialStyle;
	-(void) setYAxisRadialStyle:(id)p0;
	-(id) crosshairStyle;
	-(void) setCrosshairStyle:(id)p0;
	-(id) boxGestureStyle;
	-(void) setBoxGestureStyle:(id)p0;
	-(id) blackColor;
	-(void) setBlackColor:(id)p0;
	-(id) blackColorLowAlpha;
	-(void) setBlackColorLowAlpha:(id)p0;
	-(id) redColorDark;
	-(void) setRedColorDark:(id)p0;
	-(id) redColorLight;
	-(void) setRedColorLight:(id)p0;
	-(id) redColorBrightLight;
	-(void) setRedColorBrightLight:(id)p0;
	-(id) greenColorDark;
	-(void) setGreenColorDark:(id)p0;
	-(id) greenColorLight;
	-(void) setGreenColorLight:(id)p0;
	-(id) greenColorBrightLight;
	-(void) setGreenColorBrightLight:(id)p0;
	-(id) blueColorDark;
	-(void) setBlueColorDark:(id)p0;
	-(id) blueColorLight;
	-(void) setBlueColorLight:(id)p0;
	-(id) orangeColorDark;
	-(void) setOrangeColorDark:(id)p0;
	-(id) orangeColorLight;
	-(void) setOrangeColorLight:(id)p0;
	-(id) purpleColorDark;
	-(void) setPurpleColorDark:(id)p0;
	-(id) purpleColorLight;
	-(void) setPurpleColorLight:(id)p0;
	-(id) yellowColorDark;
	-(void) setYellowColorDark:(id)p0;
	-(id) yellowColorLight;
	-(void) setYellowColorLight:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) columnLineWidth;
	-(void) setColumnLineWidth:(id)p0;
	-(id) barLineWidth;
	-(void) setBarLineWidth:(id)p0;
	-(id) donutCrustThickness;
	-(void) setDonutCrustThickness:(id)p0;
	-(id) pieCrustThickness;
	-(void) setPieCrustThickness:(id)p0;
	-(NSString *) boldFontName;
	-(void) setBoldFontName:(NSString *)p0;
	-(NSString *) regularFontName;
	-(void) setRegularFontName:(NSString *)p0;
	-(NSString *) lightFontName;
	-(void) setLightFontName:(NSString *)p0;
	-(void) addLineSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addBandSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addColumnSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addBarSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addDonutSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addScatterSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addOHLCSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(void) addCandlestickSeriesStyle:(id)p0 asSelected:(bool)p1;
	-(id) lineSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) radialLineSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) bandSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) columnSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) barSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) donutSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) scatterSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) bubbleSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) ohlcSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(id) candlestickSeriesStyleForSeriesAtIndex:(int)p0 selected:(bool)p1;
	-(void) configureLineSeriesStyle:(id)p0;
	-(void) configureBarSeriesStyle:(id)p0;
	-(void) configureColumnSeriesStyle:(id)p0;
	-(void) configureScatterSeriesStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDarkTheme : SChartTheme {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDataPointLabel : UILabel {
}
	-(id) initWithCoder:(id)p0;
	-(id) initWithDataPoint:(id)p0;
@end

@interface SChartDataPointLabelStyle : NSObject {
}
	-(bool) showLabels;
	-(void) setShowLabels:(bool)p0;
	-(CGPoint) offsetFromDataPoint;
	-(void) setOffsetFromDataPoint:(CGPoint)p0;
	-(bool) offsetFlippedForNegativeValues;
	-(void) setOffsetFlippedForNegativeValues:(bool)p0;
	-(int) textOrientation;
	-(void) setTextOrientation:(int)p0;
	-(int) position;
	-(void) setPosition:(int)p0;
	-(id) font;
	-(void) setFont:(id)p0;
	-(id) textColor;
	-(void) setTextColor:(id)p0;
	-(int) displayValues;
	-(void) setDisplayValues:(int)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDataSeries : NSObject {
}
	-(id) dataPoints;
	-(void) setDataPoints:(id)p0;
	-(NSArray *) xValueKeys;
	-(void) setXValueKeys:(NSArray *)p0;
	-(NSArray *) yValueKeys;
	-(void) setYValueKeys:(NSArray *)p0;
	-(NSArray *) valueKeys;
	-(void) setValueKeys:(NSArray *)p0;
	-(id) rangeX;
	-(void) setRangeX:(id)p0;
	-(id) rangeY;
	-(void) setRangeY:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDateRange : SChartRange {
}
	-(id) minimumAsDate;
	-(id) maximumAsDate;
	-(id) initWithCoder:(id)p0;
	-(id) initWithDateMinimum:(id)p0 andDateMaximum:(id)p1;
@end

@interface SChartDonutSeries : SChartRadialSeries {
}
	-(float) innerRadius;
	-(void) setInnerRadius:(float)p0;
	-(float) outerRadius;
	-(void) setOuterRadius:(float)p0;
	-(id) selectedPosition;
	-(void) setSelectedPosition:(id)p0;
	-(float) rotation;
	-(void) setRotation:(float)p0;
	-(float) animationDuration;
	-(void) setAnimationDuration:(float)p0;
	-(int) animationCurveType;
	-(void) setAnimationCurveType:(int)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(NSString *) labelFormatString;
	-(void) setLabelFormatString:(NSString *)p0;
	-(CGPoint) getDonutCenter;
	-(id) selectionAnimation;
	-(void) setSelectionAnimation:(id)p0;
	-(float) rotationFriction;
	-(void) setRotationFriction:(float)p0;
	-(bool) gesturePanningEnabled;
	-(void) setGesturePanningEnabled:(bool)p0;
	-(bool) selectionEnabledDuringPanning;
	-(void) setSelectionEnabledDuringPanning:(bool)p0;
	-(int) drawDirection;
	-(void) setDrawDirection:(int)p0;
	-(void) createLabels:(id)p0 onChart:(id)p1;
	-(void) setSlice:(int)p0 asSelected:(bool)p1;
	-(void) drawSlice:(int)p0 ofTotal:(int)p1 fromAngle:(float)p2 toAngle:(float)p3 fromCentre:(CGPoint)p4 withInnerRadius:(float)p5 andOuterRadius:(float)p6 asSelected:(bool)p7 inFrame:(CGRect)p8;
	-(CGPoint) getSliceCenter:(int)p0;
	-(int) indexOfSliceAtAngle:(double)p0;
	-(void) rotateSliceAtIndex:(int)p0 toAngle:(double)p1 withAnimation:(id)p2;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartDonutSeriesStyle : SChartSeriesStyle {
}
	-(bool) showFlavour;
	-(void) setShowFlavour:(bool)p0;
	-(bool) showCrust;
	-(void) setShowCrust:(bool)p0;
	-(bool) showLabels;
	-(void) setShowLabels:(bool)p0;
	-(int) chartEffect;
	-(void) setChartEffect:(int)p0;
	-(id) crustColors;
	-(void) setCrustColors:(id)p0;
	-(id) crustThickness;
	-(void) setCrustThickness:(id)p0;
	-(id) flavourColors;
	-(void) setFlavourColors:(id)p0;
	-(id) initialRotation;
	-(void) setInitialRotation:(id)p0;
	-(float) protrusion;
	-(void) setProtrusion:(float)p0;
	-(id) labelFont;
	-(void) setLabelFont:(id)p0;
	-(id) labelFontColor;
	-(void) setLabelFontColor:(id)p0;
	-(id) labelBackgroundColor;
	-(void) setLabelBackgroundColor:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) crustColorAtIndex:(int)p0;
	-(id) flavourColorAtIndex:(int)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartGLView : UIView {
}
	-(CGRect) glBounds;
	-(bool) resetAnimationTimer;
	-(void) setResetAnimationTimer:(bool)p0;
	-(id) allSeries;
	-(void) setAllSeries:(id)p0;
	-(id) areaColor;
	-(void) setAreaColor:(id)p0;
	-(float) glWidth;
	-(float) glHeight;
	-(unsigned int) getFramebuffer;
	-(unsigned int) getColorRenderBuffer;
	-(id) getEAGLLayer;
	-(id) getContext;
	-(id) userTextures;
	-(void) setUserTextures:(id)p0;
	-(struct trampoline_struct_ffff) convertUIColorToColour4f:(id)p0;
	-(void) setupLayerWithBackgroundColor:(id)p0;
	-(void) resize;
	-(bool) endRender;
	-(float) timeIncrement;
	-(void) updateRadialSeries:(id)p0 atSliceIndex:(int)p1 withDisplacement:(float)p2 andAngle:(float)p3 andLineWidth:(float)p4;
	-(void) reset;
	-(void) beginRenderWithReloadedData:(bool)p0;
	-(void) addSeries:(id)p0;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0;
@end

@interface SChartGridStripeStyle : NSObject {
}
	-(id) stripeColor;
	-(void) setStripeColor:(id)p0;
	-(id) alternateStripeColor;
	-(void) setAlternateStripeColor:(id)p0;
	-(bool) showGridStripes;
	-(void) setShowGridStripes:(bool)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartInternalDataPoint : SChartDataPoint {
}
	-(id) xValues;
	-(void) setXValues:(id)p0;
	-(id) yValues;
	-(void) setYValues:(id)p0;
	-(id) values;
	-(void) setValues:(id)p0;
	-(id) texture;
	-(void) setTexture:(id)p0;
	-(float) radius;
	-(void) setRadius:(float)p0;
	-(float) innerRadius;
	-(void) setInnerRadius:(float)p0;
	-(double) xCoord;
	-(void) setXCoord:(double)p0;
	-(double) yCoord;
	-(void) setYCoord:(double)p0;
	-(id) xCoords;
	-(void) setXCoords:(id)p0;
	-(id) yCoords;
	-(void) setYCoords:(id)p0;
	-(int) compareXAsNumber:(id)p0;
	-(int) compareYAsNumber:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartiOS7Theme : SChartTheme {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLegend : UIView {
}
	-(id) chart;
	-(void) setChart:(id)p0;
	-(NSString *) title;
	-(void) setTitle:(NSString *)p0;
	-(int) position;
	-(void) setPosition:(int)p0;
	-(int) placement;
	-(void) setPlacement:(int)p0;
	-(id) symbolWidth;
	-(void) setSymbolWidth:(id)p0;
	-(bool) showSymbols;
	-(void) setShowSymbols:(bool)p0;
	-(int) maxSeriesPerLine;
	-(void) setMaxSeriesPerLine:(int)p0;
	-(bool) autosizeLabels;
	-(void) setAutosizeLabels:(bool)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) cornerRadius;
	-(void) setCornerRadius:(id)p0;
	-(id) symbols;
	-(void) setSymbols:(id)p0;
	-(id) labels;
	-(void) setLabels:(id)p0;
	-(id) fixedWidthRatio;
	-(void) setFixedWidthRatio:(id)p0;
	-(void) drawLegend;
	-(void) reload;
	-(id) initWithCoder:(id)p0;
	-(id) initWithChart:(id)p0;
@end

@interface SChartLegendStyle : NSObject {
}
	-(id) font;
	-(void) setFont:(id)p0;
	-(id) fontColor;
	-(void) setFontColor:(id)p0;
	-(int) textAlignment;
	-(void) setTextAlignment:(int)p0;
	-(id) titleFont;
	-(void) setTitleFont:(id)p0;
	-(id) titleFontColor;
	-(void) setTitleFontColor:(id)p0;
	-(id) marginWidth;
	-(void) setMarginWidth:(id)p0;
	-(id) borderColor;
	-(void) setBorderColor:(id)p0;
	-(id) borderWidth;
	-(void) setBorderWidth:(id)p0;
	-(id) cornerRadius;
	-(void) setCornerRadius:(id)p0;
	-(id) symbolCornerRadius;
	-(void) setSymbolCornerRadius:(id)p0;
	-(bool) showSymbols;
	-(void) setShowSymbols:(bool)p0;
	-(int) symbolAlignment;
	-(void) setSymbolAlignment:(int)p0;
	-(int) orientation;
	-(void) setOrientation:(int)p0;
	-(id) areaColor;
	-(void) setAreaColor:(id)p0;
	-(id) horizontalPadding;
	-(void) setHorizontalPadding:(id)p0;
	-(id) verticalPadding;
	-(void) setVerticalPadding:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLegendSymbolBandSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolBarSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolBlock : SChartLegendSymbol {
}
	-(id) areaColor;
	-(id) outlineColor;
	-(id) initWithCoder:(id)p0;
	-(id) initWithAreaColor:(id)p0 andOutlineColor:(id)p1;
@end

@interface SChartLegendSymbolBlockSplit : SChartLegendSymbolBlock {
}
	-(id) lowColor;
	-(id) initWithCoder:(id)p0;
	-(id) initWithAreaColor:(id)p0 andLowAreaColor:(id)p1 andOutlineColor:(id)p2;
@end

@interface SChartLegendSymbolCandlestickSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolColumnSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolLineSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolOHLCSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolPointSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLegendSymbolScatterSeries : SChartLegendSymbol {
}
	-(id) style;
	-(id) initWithCoder:(id)p0;
	-(id) initWithSeries:(id)p0;
@end

@interface SChartLightTheme : SChartTheme {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLineSeries : SChartCartesianSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartScatterSeriesStyle : SChartPointSeriesStyle {
}
	-(id) pointStyle;
	-(void) setPointStyle:(id)p0;
	-(id) selectedPointStyle;
	-(void) setSelectedPointStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLineSeriesBaseStyle : SChartScatterSeriesStyle {
}
	-(bool) showFill;
	-(void) setShowFill:(bool)p0;
	-(bool) fillWithGradient;
	-(void) setFillWithGradient:(bool)p0;
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) areaLineColor;
	-(void) setAreaLineColor:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) areaLineWidth;
	-(void) setAreaLineWidth:(id)p0;
	-(id) areaColor;
	-(void) setAreaColor:(id)p0;
	-(id) areaColorLowGradient;
	-(void) setAreaColorLowGradient:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartLineSeriesStyle : SChartLineSeriesBaseStyle {
}
	-(id) lineColorBelowBaseline;
	-(void) setLineColorBelowBaseline:(id)p0;
	-(id) areaLineColorBelowBaseline;
	-(void) setAreaLineColorBelowBaseline:(id)p0;
	-(id) areaColorBelowBaseline;
	-(void) setAreaColorBelowBaseline:(id)p0;
	-(id) areaColorGradientBelowBaseline;
	-(void) setAreaColorGradientBelowBaseline:(id)p0;
	-(int) lineCrosshairTraceStyle;
	-(void) setLineCrosshairTraceStyle:(int)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMainTitleStyle : SChartTitleStyle {
}
	-(int) titleCentresOn;
	-(void) setTitleCentresOn:(int)p0;
	-(bool) overlapChartTitle;
	-(void) setOverlapChartTitle:(bool)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMajorGridlineStyle : NSObject {
}
	-(bool) showMajorGridLines;
	-(void) setShowMajorGridLines:(bool)p0;
	-(bool) dashedMajorGridLines;
	-(void) setDashedMajorGridLines:(bool)p0;
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(NSArray *) dashStyle;
	-(void) setDashStyle:(NSArray *)p0;
	-(int) lineRenderMode;
	-(void) setLineRenderMode:(int)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMidnightTheme : SChartTheme {
}
	-(id) midnight_greyColor;
	-(id) midnight_greyColorLowAlpha;
	-(id) midnight_greyColorLabel;
	-(id) midnight_blueColorDark;
	-(id) midnight_blueColorLight;
	-(id) midnight_greenColorDark;
	-(id) midnight_greenColorLight;
	-(id) midnight_purpleColorDark;
	-(id) midnight_purpleColorLight;
	-(id) midnight_orangeColorDark;
	-(id) midnight_orangeColorLight;
	-(id) midnight_yellowColorDark;
	-(id) midnight_yellowColorLight;
	-(id) midnight_brownColorDark;
	-(id) midnight_brownColorLight;
	-(id) midnight_pinkColor;
	-(id) midnight_pinkColorLowAlpha;
	-(id) midnight_textShadowColor;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMultiXDataPoint : SChartDataPoint {
}
	-(id) xValues;
	-(void) setXValues:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartMultiYDataPoint : SChartDataPoint {
}
	-(id) yValues;
	-(void) setYValues:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartPieSeries : SChartDonutSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(CGPoint) getPieCenter;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartPieSeriesStyle : SChartDonutSeriesStyle {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartPointStyle : SChartBaselinePointStyle {
}
	-(id) innerColor;
	-(void) setInnerColor:(id)p0;
	-(id) innerColorBelowBaseline;
	-(void) setInnerColorBelowBaseline:(id)p0;
	-(id) innerRadius;
	-(void) setInnerRadius:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartRadialDataPoint : SChartDataPoint {
}
	-(id) sChartXValue;
	-(void) setSChartXValue:(id)p0;
	-(id) sChartYValue;
	-(void) setSChartYValue:(id)p0;
	-(NSString *) name;
	-(void) setName:(NSString *)p0;
	-(id) value;
	-(void) setValue:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartRadialLineSeries : SChartMappedSeries {
}
	-(bool) pointsWrapAround;
	-(void) setPointsWrapAround:(bool)p0;
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartRadialLineSeriesStyle : SChartLineSeriesBaseStyle {
}
	-(id) pointStyle;
	-(void) setPointStyle:(id)p0;
	-(id) selectedPointStyle;
	-(void) setSelectedPointStyle:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartScatterSeries : SChartPointSeries {
}
	-(id) style;
	-(void) setStyle:(id)p0;
	-(id) selectedStyle;
	-(void) setSelectedStyle:(id)p0;
	-(id) styleForPoint:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartStepLineSeries : SChartLineSeries {
}
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartStyle : NSObject {
}
	-(id) backgroundColor;
	-(void) setBackgroundColor:(id)p0;
	-(id) backgroundColorGradient;
	-(void) setBackgroundColorGradient:(id)p0;
	-(id) borderColor;
	-(void) setBorderColor:(id)p0;
	-(id) borderWidth;
	-(void) setBorderWidth:(id)p0;
	-(id) plotAreaBackgroundColor;
	-(void) setPlotAreaBackgroundColor:(id)p0;
	-(id) plotAreaBorderColor;
	-(void) setPlotAreaBorderColor:(id)p0;
	-(id) plotAreaBorderWidth;
	-(void) setPlotAreaBorderWidth:(id)p0;
	-(id) canvasBackgroundColor;
	-(void) setCanvasBackgroundColor:(id)p0;
	-(id) loadingDataIndicatorColor;
	-(void) setLoadingDataIndicatorColor:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartTickLabelFormatter : NSObject {
}
	-(id) formatter;
	-(void) setFormatter:(id)p0;
	-(id) numberFormatter;
	-(id) dateFormatter;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartTickMark : NSObject {
}
	-(bool) tickEnabled;
	-(void) setTickEnabled:(bool)p0;
	-(id) tickLabel;
	-(void) setTickLabel:(id)p0;
	-(bool) isMajor;
	-(void) setIsMajor:(bool)p0;
	-(float) tickMarkY;
	-(void) setTickMarkY:(float)p0;
	-(float) tickMarkX;
	-(void) setTickMarkX:(float)p0;
	-(bool) overAlternateStripe;
	-(double) value;
	-(void) setValue:(double)p0;
	-(id) tickMarkView;
	-(void) setTickMarkView:(id)p0;
	-(id) gridLineView;
	-(void) setGridLineView:(id)p0;
	-(id) gridStripeView;
	-(void) setGridStripeView:(id)p0;
	-(float) tickLengthModifier;
	-(int) compareForXAxis:(id)p0;
	-(int) compareForYAxis:(id)p0;
	-(void) disableTick:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
	-(id) initWithLabel:(CGRect)p0 andText:(NSString *)p1;
@end

@interface SChartTickStyle : NSObject {
}
	-(bool) showTicks;
	-(void) setShowTicks:(bool)p0;
	-(bool) showLabels;
	-(void) setShowLabels:(bool)p0;
	-(int) tickLabelOrientation;
	-(void) setTickLabelOrientation:(int)p0;
	-(id) lineColor;
	-(void) setLineColor:(id)p0;
	-(id) lineWidth;
	-(void) setLineWidth:(id)p0;
	-(id) lineLength;
	-(void) setLineLength:(id)p0;
	-(id) labelColor;
	-(void) setLabelColor:(id)p0;
	-(id) labelFont;
	-(void) setLabelFont:(id)p0;
	-(int) textAlignment;
	-(void) setTextAlignment:(int)p0;
	-(id) labelTextShadowColor;
	-(void) setLabelTextShadowColor:(id)p0;
	-(id) tickGap;
	-(void) setTickGap:(id)p0;
	-(void) supplementStyleFromStyle:(id)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface SChartTimePeriod : NSObject {
}
	-(id) periodStart;
	-(id) periodLength;
	-(id) initWithCoder:(id)p0;
	-(id) initWithStart:(id)p0 andLength:(id)p1;
@end

@interface SChartRepeatedTimePeriod : SChartTimePeriod {
}
	-(id) frequency;
	-(id) initWithCoder:(id)p0;
	-(id) initWithStart:(id)p0 andLength:(id)p1 andFrequency:(id)p2;
@end

@interface SChartTitle : UILabel {
}
	-(bool) userSetFrame;
	-(void) setUserSetFrame:(bool)p0;
	-(id) init;
	-(id) initWithCoder:(id)p0;
@end

@interface ShinobiChart : UIView {
}
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(id) datasource;
	-(void) setDatasource:(id)p0;
	-(NSString *) licenseKey;
	-(void) setLicenseKey:(NSString *)p0;
	-(id) xAxis;
	-(void) setXAxis:(id)p0;
	-(id) yAxis;
	-(void) setYAxis:(id)p0;
	-(bool) autoCalculateAxisRanges;
	-(void) setAutoCalculateAxisRanges:(bool)p0;
	-(NSArray *) chartSeries;
	-(NSArray *) series;
	-(NSString *) title;
	-(void) setTitle:(NSString *)p0;
	-(id) titleLabel;
	-(void) setTitleLabel:(id)p0;
	-(bool) overlapChartTitle;
	-(void) setOverlapChartTitle:(bool)p0;
	-(int) titleCentresOn;
	-(void) setTitleCentresOn:(int)p0;
	-(int) titlePosition;
	-(void) setTitlePosition:(int)p0;
	-(id) legend;
	-(void) setLegend:(id)p0;
	-(id) theme;
	-(void) setTheme:(id)p0;
	-(id) canvasAreaBackgroundColor;
	-(void) setCanvasAreaBackgroundColor:(id)p0;
	-(id) plotAreaBackgroundColor;
	-(void) setPlotAreaBackgroundColor:(id)p0;
	-(id) plotAreaBorderColor;
	-(void) setPlotAreaBorderColor:(id)p0;
	-(float) plotAreaBorderThickness;
	-(void) setPlotAreaBorderThickness:(float)p0;
	-(id) borderColor;
	-(void) setBorderColor:(id)p0;
	-(id) borderThickness;
	-(void) setBorderThickness:(id)p0;
	-(id) crosshair;
	-(void) setCrosshair:(id)p0;
	-(int) gesturePanType;
	-(void) setGesturePanType:(int)p0;
	-(bool) gesturePinchAspectLock;
	-(void) setGesturePinchAspectLock:(bool)p0;
	-(bool) gesturePanCancelsCrosshair;
	-(void) setGesturePanCancelsCrosshair:(bool)p0;
	-(bool) gestureDoubleTapEnabled;
	-(void) setGestureDoubleTapEnabled:(bool)p0;
	-(bool) gestureDoubleTapResetsZoom;
	-(void) setGestureDoubleTapResetsZoom:(bool)p0;
	-(bool) animateBoxGesture;
	-(void) setAnimateBoxGesture:(bool)p0;
	-(bool) animateZoomGesture;
	-(void) setAnimateZoomGesture:(bool)p0;
	-(bool) radialTapEnabled;
	-(void) setRadialTapEnabled:(bool)p0;
	-(bool) radialRotationEnabled;
	-(void) setRadialRotationEnabled:(bool)p0;
	-(id) canvas;
	-(CGRect) chartFrame;
	-(CGRect) getGLFrame;
	-(CGRect) getPlotAreaFrame;
	-(id) chartBackgroundColor;
	-(id) plotBackgroundColor;
	-(UIEdgeInsets) canvasInset;
	-(void) setCanvasInset:(UIEdgeInsets)p0;
	-(id) getChart;
	-(NSArray *) allAxes;
	-(NSArray *) primaryAxes;
	-(NSArray *) secondaryAxes;
	-(NSArray *) allXAxes;
	-(NSArray *) allYAxes;
	-(NSArray *) secondaryXAxes;
	-(NSArray *) secondaryYAxes;
	-(id) primaryXAxis;
	-(id) primaryYAxis;
	-(bool) loadDataInBackground;
	-(void) setLoadDataInBackground:(bool)p0;
	-(id) loadingIndicator;
	-(void) setLoadingIndicator:(id)p0;
	-(NSArray *) getAnnotations;
	-(bool) rotatesOnDeviceRotation;
	-(void) setRotatesOnDeviceRotation:(bool)p0;
	-(void) applyTheme:(id)p0;
	-(void) positionLegend;
	-(void) redrawChart;
	-(void) setNeedsLayoutIfHaveAxesAndData;
	-(id) getCanvas;
	-(void) axisPanningChanged;
	-(void) addXAxis:(id)p0;
	-(void) addYAxis:(id)p0;
	-(void) removeXAxis:(id)p0;
	-(void) removeYAxis:(id)p0;
	-(void) replaceXAxis:(id)p0 withAxis:(id)p1;
	-(void) replaceYAxis:(id)p0 withAxis:(id)p1;
	-(void) applyTheme;
	-(void) reloadData;
	-(void) updateCanvasSize;
	-(void) redrawChartAndGL:(bool)p0;
	-(void) redrawChartIncludePlotArea:(bool)p0;
	-(NSString *) stringForX:(double)p0 andY:(double)p1;
	-(NSString *) stringForX:(double)p0 andY:(double)p1 usingXAxis:(id)p2 andYAxis:(id)p3;
	-(NSString *) stringForX:(double)p0 andY:(double)p1 usingSeries:(id)p2;
	-(NSString *) stringForIdX:(id)p0 andIdY:(id)p1 usingSeries:(id)p2;
	-(bool) pointIsVisible:(struct trampoline_struct_dd)p0 onSeries:(id)p1;
	-(void) addAnnotation:(id)p0;
	-(void) replaceAnnotationAtIndex:(int)p0 withAnnotation:(id)p1;
	-(void) removeAnnotation:(id)p0;
	-(void) removeAllAnnotations;
	-(void) appendNumberOfDataPoints:(int)p0 toEndOfSeriesAtIndex:(int)p1;
	-(void) removeNumberOfDataPoints:(int)p0 fromStartOfSeriesAtIndex:(int)p1;
	-(id) initWithCoder:(id)p0;
	-(id) initWithFrame:(CGRect)p0;
	-(id) initWithFrame:(CGRect)p0 withTheme:(id)p1;
	-(id) initWithFrame:(CGRect)p0 withPrimaryXAxisType:(int)p1 withPrimaryYAxisType:(int)p2;
	-(id) initWithFrame:(CGRect)p0 withTheme:(id)p1 withPrimaryXAxisType:(int)p2 withPrimaryYAxisType:(int)p3;
@end

@interface ShinobiChartLog : NSObject {
}
	-(id) initWithCoder:(id)p0;
@end

@interface Xamarin_Forms_Platform_iOS_CellTableViewCell : UITableViewCell {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_CellTableViewCell { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 : UIView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) backgroundColor;
	-(void) setBackgroundColor:(id)p0;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(id) backgroundColor
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_25 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.VisualElementRenderer`1, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "get_BackgroundColor");
	}

	-(void) setBackgroundColor:(id)p0
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIColor, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.VisualElementRenderer`1, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "set_BackgroundColor");
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.VisualElementRenderer`1, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
	-(id) init
	{
		throw_monotouch_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.VisualElementRenderer`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ViewRenderer_2 : Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
}
	-(void) layoutSubviews;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ViewRenderer_2 { } 

	-(void) layoutSubviews
	{
		MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ViewRenderer`2, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ViewRenderer`2, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}
	-(id) init
	{
		throw_monotouch_exception (4126, "Cannot construct an instance of the type 'Xamarin.Forms.Platform.iOS.ViewRenderer`2' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface Xamarin_Forms_Platform_iOS_ViewRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ViewRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ModalWrapper : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLayoutSubviews;
	-(void) viewWillAppear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_ModalWrapper { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ModalWrapper, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewWillAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.ModalWrapper, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillAppear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface Xamarin_Forms_Platform_iOS_PlatformRenderer : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewWillAppear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_PlatformRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PlatformRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PlatformRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewWillAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PlatformRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillAppear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ActivityIndicatorRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_BoxRenderer : Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
}
	-(void) drawRect:(CGRect)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_BoxRenderer { } 

	-(void) drawRect:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "System.Drawing.RectangleF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.BoxRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "Draw");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.BoxRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NoCaretField : UITextField {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(CGRect) caretRectForPosition:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_NoCaretField { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(CGRect) caretRectForPosition:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITextPosition, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NoCaretField, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetCaretRectForPosition");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NoCaretField, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_EditorRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_EditorRenderer { } 

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.EditorRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.EditorRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_FrameRenderer : Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_FrameRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.FrameRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_LabelRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(void) layoutSubviews;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_LabelRenderer { } 

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.LabelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.LabelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ProgressBarRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ProgressBarRenderer { } 

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ProgressBarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ProgressBarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ScrollViewRenderer : UIScrollView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ScrollViewRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ScrollViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_SliderRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_SliderRenderer { } 

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.SliderRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.SliderRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_StepperRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_StepperRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.StepperRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_SwitchRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_SwitchRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.SwitchRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TabbedRenderer : UITabBarController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(id) selectedViewController;
	-(void) setSelectedViewController:(id)p0;
	-(void) viewDidLoad;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_TabbedRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(id) selectedViewController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "get_SelectedViewController");
	}

	-(void) setSelectedViewController:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "set_SelectedViewController");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "DidRotate");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_EventedViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewWillAppear:(bool)p0;
	-(void) viewWillDisappear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_EventedViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewWillAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.EventedViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillAppear");
	}

	-(void) viewWillDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.EventedViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillDisappear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.EventedViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface UITableViewSource : NSObject/*<UIScrollViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UITableViewSource { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UITableViewSource, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TableViewModelRenderer : UITableViewSource {
}
	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1;
	-(int) numberOfSectionsInTableView:(id)p0;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1;
	-(NSArray *) sectionIndexTitlesForTableView:(id)p0;
	-(NSString *) tableView:(id)p0 titleForHeaderInSection:(int)p1;
	-(id) tableView:(id)p0 viewForHeaderInSection:(int)p1;
	-(float) tableView:(id)p0 heightForHeaderInSection:(int)p1;
@end
@implementation Xamarin_Forms_Platform_iOS_TableViewModelRenderer { } 

	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "RowsInSection");
	}

	-(int) numberOfSectionsInTableView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "NumberOfSections");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetCell");
	}

	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "RowSelected");
	}

	-(NSArray *) sectionIndexTitlesForTableView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_35 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SectionIndexTitles");
	}

	-(NSString *) tableView:(id)p0 titleForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "TitleForHeader");
	}

	-(id) tableView:(id)p0 viewForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetViewForHeader");
	}

	-(float) tableView:(id)p0 heightForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetHeightForHeader");
	}
@end

@interface Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer : Xamarin_Forms_Platform_iOS_TableViewModelRenderer {
}
	-(float) tableView:(id)p0 heightForRowAtIndexPath:(id)p1;
@end
@implementation Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer { } 

	-(float) tableView:(id)p0 heightForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_38 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.UnEvenTableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetHeightForRow");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ToolbarRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ToolbarRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ToolbarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell : Xamarin_Forms_Platform_iOS_CellTableViewCell {
}
	-(void) layoutSubviews;
@end
@implementation Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell { } 

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.EntryCellRenderer+EntryCellTableViewCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell : UITableViewCell {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ViewCellRenderer+ViewTableCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ViewCellRenderer+ViewTableCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolBarItem : UIControl {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolBarItem { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+SecondaryToolBarItem, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+SecondaryToolBarItem, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_RendererFactory_DefaultRenderer : Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_RendererFactory_DefaultRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.RendererFactory+DefaultRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ButtonRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ButtonRenderer { } 

	-(CGSize) sizeThatFits:(CGSize)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "System.Drawing.SizeF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ButtonRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SizeThatFits");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ButtonRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_CarouselPageRenderer_PageContainer : UIView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_CarouselPageRenderer_PageContainer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.CarouselPageRenderer+PageContainer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface Xamarin_Forms_Platform_iOS_CarouselPageRenderer : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidLayoutSubviews;
	-(void) willRotateToInterfaceOrientation:(int)p0 duration:(double)p1;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_CarouselPageRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) willRotateToInterfaceOrientation:(int)p0 duration:(double)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Double, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "WillRotate");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "DidRotate");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_DatePickerRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_DatePickerRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.DatePickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_EntryRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_EntryRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.EntryRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ImageRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ImageRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ImageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource : UITableViewSource {
}
	-(int) numberOfSectionsInTableView:(id)p0;
	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1;
	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1;
	-(float) tableView:(id)p0 heightForHeaderInSection:(int)p1;
	-(id) tableView:(id)p0 viewForHeaderInSection:(int)p1;
	-(NSString *) tableView:(id)p0 titleForHeaderInSection:(int)p1;
	-(NSArray *) sectionIndexTitlesForTableView:(id)p0;
	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1;
@end
@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource { } 

	-(int) numberOfSectionsInTableView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "NumberOfSections");
	}

	-(int) tableView:(id)p0 numberOfRowsInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "RowsInSection");
	}

	-(id) tableView:(id)p0 cellForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetCell");
	}

	-(float) tableView:(id)p0 heightForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetHeightForHeader");
	}

	-(id) tableView:(id)p0 viewForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetViewForHeader");
	}

	-(NSString *) tableView:(id)p0 titleForHeaderInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "TitleForHeader");
	}

	-(NSArray *) sectionIndexTitlesForTableView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_35 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "SectionIndexTitles");
	}

	-(void) tableView:(id)p0 didSelectRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "RowSelected");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource : Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource {
}
	-(float) tableView:(id)p0 heightForRowAtIndexPath:(id)p1;
@end
@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource { } 

	-(float) tableView:(id)p0 heightForRowAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_38 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.ListViewRenderer+UnevenListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetHeightForRow");
	}
@end

@interface Xamarin_Forms_Platform_iOS_ListViewRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_ListViewRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.ListViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_NavigationCell : UICollectionViewCell {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) initWithFrame:(CGRect)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_NavigationCell { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+NavigationCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) initWithFrame:(CGRect)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_40 (self, _cmd, &managed_method, p0, "System.Drawing.RectangleF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+NavigationCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationMenuRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationMenuRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar : UIToolbar {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(NSArray *) items;
	-(void) setItems:(NSArray *)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(NSArray *) items
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_41 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "get_Items");
	}

	-(void) setItems:(NSArray *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIBarButtonItem[], monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "set_Items");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidLoad;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(void) viewWillAppear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "DidRotate");
	}

	-(void) viewWillAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillAppear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationRenderer : UINavigationController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidLayoutSubviews;
	-(id) popViewControllerAnimated:(bool)p0;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(void) didRotateFromInterfaceOrientation:(int)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(id) popViewControllerAnimated:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_43 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "PopViewControllerAnimated");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(void) didRotateFromInterfaceOrientation:(int)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "DidRotate");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate : NSObject/*<GLKViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) glkView:(id)p0 drawInRect:(CGRect)p1;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) glkView:(id)p0 drawInRect:(CGRect)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, p1, "MonoTouch.GLKit.GLKView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Drawing.RectangleF, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.OpenGLViewRenderer+Delegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "DrawInRect");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

@interface Xamarin_Forms_Platform_iOS_OpenGLViewRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_OpenGLViewRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.OpenGLViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer : UIViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_SearchBarRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_SearchBarRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.SearchBarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate : NSObject/*<UISplitViewControllerDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) splitViewController:(id)p0 willShowViewController:(id)p1 invalidatingBarButtonItem:(id)p2;
	-(void) splitViewController:(id)p0 willHideViewController:(id)p1 withBarButtonItem:(id)p2 forPopoverController:(id)p3;
	-(bool) splitViewController:(id)p0 shouldHideViewController:(id)p1 inOrientation:(int)p2;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) splitViewController:(id)p0 willShowViewController:(id)p1 invalidatingBarButtonItem:(id)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_45 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UISplitViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIBarButtonItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "WillShowViewController");
	}

	-(void) splitViewController:(id)p0 willHideViewController:(id)p1 withBarButtonItem:(id)p2 forPopoverController:(id)p3
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_46 (self, _cmd, &managed_method, p0, p1, p2, p3, "MonoTouch.UIKit.UISplitViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIBarButtonItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIPopoverController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "WillHideViewController");
	}

	-(bool) splitViewController:(id)p0 shouldHideViewController:(id)p1 inOrientation:(int)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_47 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UISplitViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.UIKit.UIInterfaceOrientation, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ShouldHideViewController");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer : UISplitViewController {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) viewDidLoad;
	-(void) viewDidLayoutSubviews;
	-(void) viewWillLayoutSubviews;
	-(void) viewDidAppear:(bool)p0;
	-(void) viewDidDisappear:(bool)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLoad");
	}

	-(void) viewDidLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidLayoutSubviews");
	}

	-(void) viewWillLayoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewWillLayoutSubviews");
	}

	-(void) viewDidAppear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(bool)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "ViewDidDisappear");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TableViewRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_TableViewRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TableViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_TimePickerRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_TimePickerRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.TimePickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate : NSObject/*<UIWebViewDelegate>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) webViewDidStartLoad:(id)p0;
	-(void) webViewDidFinishLoad:(id)p0;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) webViewDidStartLoad:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIWebView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.WebViewRenderer+CustomWebViewDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LoadStarted");
	}

	-(void) webViewDidFinishLoad:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIWebView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.WebViewRenderer+CustomWebViewDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LoadingFinished");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.WebViewRenderer+CustomWebViewDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_WebViewRenderer : UIWebView {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(void) layoutSubviews;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_WebViewRenderer { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(void) layoutSubviews
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.WebViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "LayoutSubviews");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.WebViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface UIPickerViewModel : NSObject {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(bool) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIPickerViewModel { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "MonoTouch.UIKit.UIPickerViewModel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_PickerRenderer_PickerSource : UIPickerViewModel {
}
	-(int) pickerView:(id)p0 numberOfRowsInComponent:(int)p1;
	-(int) numberOfComponentsInPickerView:(id)p0;
	-(NSString *) pickerView:(id)p0 titleForRow:(int)p1 forComponent:(int)p2;
	-(void) pickerView:(id)p0 didSelectRow:(int)p1 inComponent:(int)p2;
@end
@implementation Xamarin_Forms_Platform_iOS_PickerRenderer_PickerSource { } 

	-(int) pickerView:(id)p0 numberOfRowsInComponent:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UIPickerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PickerRenderer+PickerSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetRowsInComponent");
	}

	-(int) numberOfComponentsInPickerView:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, "MonoTouch.UIKit.UIPickerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.PickerRenderer+PickerSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetComponentCount");
	}

	-(NSString *) pickerView:(id)p0 titleForRow:(int)p1 forComponent:(int)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIPickerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PickerRenderer+PickerSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetTitle");
	}

	-(void) pickerView:(id)p0 didSelectRow:(int)p1 inComponent:(int)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, p1, p2, "MonoTouch.UIKit.UIPickerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.PickerRenderer+PickerSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "Selected");
	}
@end

@interface Xamarin_Forms_Platform_iOS_PickerRenderer : Xamarin_Forms_Platform_iOS_ViewRenderer_2 {
}
	-(id) init;
@end
@implementation Xamarin_Forms_Platform_iOS_PickerRenderer { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Xamarin.Forms.Platform.iOS.PickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", ".ctor");
	}
@end

@interface Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_DataSource : NSObject/*<UICollectionViewDataSource>*/ {
	void *__monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(void) dealloc;
	-(int) collectionView:(id)p0 numberOfItemsInSection:(int)p1;
	-(id) collectionView:(id)p0 cellForItemAtIndexPath:(id)p1;
	-(bool) conformsToProtocol:(void *)p0;
@end
@implementation Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_DataSource { } 
	-(void) release
	{
		monotouch_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return monotouch_retain_trampoline (self, _cmd);
	}

	-(void) dealloc
	{
		int gchandle = monotouch_get_gchandle (self);
		monotouch_unregister_object (self, mono_gchandle_get_target (gchandle));
		monotouch_free_gchandle (self, gchandle);
		[super dealloc];
	}

	-(int) collectionView:(id)p0 numberOfItemsInSection:(int)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UICollectionView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+DataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetItemsCount");
	}

	-(id) collectionView:(id)p0 cellForItemAtIndexPath:(id)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, "MonoTouch.UIKit.UICollectionView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+DataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", "GetCell");
	}

	-(bool) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", "InvokeConformsToProtocol");
	}
@end

	static MTClassMap __monotouch_class_map [] = {
		{"NSObject", "MonoTouch.Foundation.NSObject, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"AppDelegate", "XamarinFormsWithShinobiCharts.iOS.AppDelegate, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIResponder", "MonoTouch.UIKit.UIResponder, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIView", "MonoTouch.UIKit.UIView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"XamarinFormsWithShinobiCharts_iOS_ChartView", "XamarinFormsWithShinobiCharts.iOS.ChartView, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIViewController", "MonoTouch.UIKit.UIViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"Xamarin_Forms_Platform_iOS_PageRenderer", "Xamarin.Forms.Platform.iOS.PageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"XamarinFormsWithShinobiCharts_iOS_ChartViewRenderer", "XamarinFormsWithShinobiCharts.iOS.ChartViewRenderer, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"XamarinFormsWithShinobiCharts_iOS_GettingStartedDataSource", "XamarinFormsWithShinobiCharts.iOS.GettingStartedDataSource, XamarinFormsWithShinobiChartsiOS, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"CALayer", "MonoTouch.CoreAnimation.CALayer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"CADisplayLink", "MonoTouch.CoreAnimation.CADisplayLink, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSArray", "MonoTouch.Foundation.NSArray, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSAttributedString", "MonoTouch.Foundation.NSAttributedString, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSCoder", "MonoTouch.Foundation.NSCoder, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSDate", "MonoTouch.Foundation.NSDate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSIndexPath", "MonoTouch.Foundation.NSIndexPath, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSMutableAttributedString", "MonoTouch.Foundation.NSMutableAttributedString, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSURLRequest", "MonoTouch.Foundation.NSUrlRequest, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_Foundation_InternalNSNotificationHandler", "MonoTouch.Foundation.InternalNSNotificationHandler, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSValue", "MonoTouch.Foundation.NSValue, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSNumber", "MonoTouch.Foundation.NSNumber, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSRunLoop", "MonoTouch.Foundation.NSRunLoop, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSString", "MonoTouch.Foundation.NSString, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSThread", "MonoTouch.Foundation.NSThread, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSTimer", "MonoTouch.Foundation.NSTimer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSURL", "MonoTouch.Foundation.NSUrl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__MonoMac_NSActionDispatcher", "MonoTouch.Foundation.NSActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__Xamarin_NSTimerActionDispatcher", "MonoTouch.Foundation.NSTimerActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "MonoTouch.Foundation.NSAsyncActionDispatcher, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSAutoreleasePool", "MonoTouch.Foundation.NSAutoreleasePool, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIFontDescriptor", "MonoTouch.UIKit.UIFontDescriptor, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSTimeZone", "MonoTouch.Foundation.NSTimeZone, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIApplication", "MonoTouch.UIKit.UIApplication, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIBarItem", "MonoTouch.UIKit.UIBarItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIControl", "MonoTouch.UIKit.UIControl, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIButton", "MonoTouch.UIKit.UIButton, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIScrollView", "MonoTouch.UIKit.UIScrollView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UICollectionView", "MonoTouch.UIKit.UICollectionView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UICollectionViewLayout", "MonoTouch.UIKit.UICollectionViewLayout, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIColor", "MonoTouch.UIKit.UIColor, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIControlEventProxy", "MonoTouch.UIKit.UIControlEventProxy, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIDevice", "MonoTouch.UIKit.UIDevice, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIFont", "MonoTouch.UIKit.UIFont, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIImage", "MonoTouch.UIKit.UIImage, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UINavigationBar", "MonoTouch.UIKit.UINavigationBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UINavigationController", "MonoTouch.UIKit.UINavigationController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIPickerView", "MonoTouch.UIKit.UIPickerView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIPopoverController", "MonoTouch.UIKit.UIPopoverController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIScreen", "MonoTouch.UIKit.UIScreen, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITableView", "MonoTouch.UIKit.UITableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITableViewCell", "MonoTouch.UIKit.UITableViewCell, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIToolbar", "MonoTouch.UIKit.UIToolbar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIWindow", "MonoTouch.UIKit.UIWindow, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"GLKView", "MonoTouch.GLKit.GLKView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSParagraphStyle", "MonoTouch.UIKit.NSParagraphStyle, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSShadow", "MonoTouch.UIKit.NSShadow, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSTextAttachment", "MonoTouch.UIKit.NSTextAttachment, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UICollectionReusableView", "MonoTouch.UIKit.UICollectionReusableView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UICollectionViewCell", "MonoTouch.UIKit.UICollectionViewCell, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UICollectionViewFlowLayout", "MonoTouch.UIKit.UICollectionViewFlowLayout, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextPosition", "MonoTouch.UIKit.UITextPosition, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIActivityIndicatorView", "MonoTouch.UIKit.UIActivityIndicatorView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UILabel", "MonoTouch.UIKit.UILabel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIImageView", "MonoTouch.UIKit.UIImageView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIDatePicker", "MonoTouch.UIKit.UIDatePicker, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UINavigationItem", "MonoTouch.UIKit.UINavigationItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIProgressView", "MonoTouch.UIKit.UIProgressView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISlider", "MonoTouch.UIKit.UISlider, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISwitch", "MonoTouch.UIKit.UISwitch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITabBar", "MonoTouch.UIKit.UITabBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITabBarController", "MonoTouch.UIKit.UITabBarController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITabBarItem", "MonoTouch.UIKit.UITabBarItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITouch", "MonoTouch.UIKit.UITouch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIWebView", "MonoTouch.UIKit.UIWebView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISplitViewController", "MonoTouch.UIKit.UISplitViewController, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIStepper", "MonoTouch.UIKit.UIStepper, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"EAGLContext", "MonoTouch.OpenGLES.EAGLContext, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"CAEAGLLayer", "MonoTouch.CoreAnimation.CAEAGLLayer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"CATransaction", "MonoTouch.CoreAnimation.CATransaction, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSDateComponents", "MonoTouch.Foundation.NSDateComponents, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSFormatter", "MonoTouch.Foundation.NSFormatter, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSDateFormatter", "MonoTouch.Foundation.NSDateFormatter, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSMutableArray", "MonoTouch.Foundation.NSMutableArray, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSException", "MonoTouch.Foundation.NSException, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSNull", "MonoTouch.Foundation.NSNull, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSIndexSet", "MonoTouch.Foundation.NSIndexSet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSNotification", "MonoTouch.Foundation.NSNotification, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSNumberFormatter", "MonoTouch.Foundation.NSNumberFormatter, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSData", "MonoTouch.Foundation.NSData, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSDictionary", "MonoTouch.Foundation.NSDictionary, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSMutableData", "MonoTouch.Foundation.NSMutableData, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSMutableDictionary", "MonoTouch.Foundation.NSMutableDictionary, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"NSNotificationCenter", "MonoTouch.Foundation.NSNotificationCenter, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__NSObject_Disposer", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIActionSheet", "MonoTouch.UIKit.UIActionSheet, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate", "MonoTouch.UIKit.UIAlertView+_UIAlertViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIAlertView", "MonoTouch.UIKit.UIAlertView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIBarButtonItem_Callback", "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIBarButtonItem", "MonoTouch.UIKit.UIBarButtonItem, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UIGestureRecognizerToken", "MonoTouch.UIKit.UIGestureRecognizer+Token, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UIGestureRecognizerParameterlessToken", "MonoTouch.UIKit.UIGestureRecognizer+ParameterlessDispatch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UIGestureRecognizerParametrizedToken", "MonoTouch.UIKit.UIGestureRecognizer+ParametrizedDispatch, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate", "MonoTouch.UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIGestureRecognizer", "MonoTouch.UIKit.UIGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UILongPressGestureRecognizer", "MonoTouch.UIKit.UILongPressGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UILongPressGestureRecognizer", "MonoTouch.UIKit.UILongPressGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UITapGestureRecognizer", "MonoTouch.UIKit.UITapGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITapGestureRecognizer", "MonoTouch.UIKit.UITapGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"__UIPanGestureRecognizer", "MonoTouch.UIKit.UIPanGestureRecognizer+Callback, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UIPanGestureRecognizer", "MonoTouch.UIKit.UIPanGestureRecognizer, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UISearchBar__UISearchBarDelegate", "MonoTouch.UIKit.UISearchBar+_UISearchBarDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UISearchBar", "MonoTouch.UIKit.UISearchBar, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UITextField__UITextFieldDelegate", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextField", "MonoTouch.UIKit.UITextField, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UITextView__UITextViewDelegate", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"UITextView", "MonoTouch.UIKit.UITextView, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"MonoTouch_UIKit_UIScrollView__UIScrollViewDelegate", "MonoTouch.UIKit.UIScrollView+_UIScrollViewDelegate, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"SChartBounceAnimationCurve", "ShinobiCharts.SChartBounceAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBounceDelayAnimationCurve", "ShinobiCharts.SChartBounceDelayAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDelayBounceAnimationCurve", "ShinobiCharts.SChartDelayBounceAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDelayBounceWithMinimumAnimationCurve", "ShinobiCharts.SChartDelayBounceWithMinimumAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartEaseInAnimationCurve", "ShinobiCharts.SChartEaseInAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartEaseInOutAnimationCurve", "ShinobiCharts.SChartEaseInOutAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartEaseOutAnimationCurve", "ShinobiCharts.SChartEaseOutAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartFlatAnimationCurve", "ShinobiCharts.SChartFlatAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLinearAnimationCurve", "ShinobiCharts.SChartLinearAnimationCurve, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAxis", "ShinobiCharts.SChartAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartSeries", "ShinobiCharts.SChartSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMappedSeries", "ShinobiCharts.SChartMappedSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCartesianSeries", "ShinobiCharts.SChartCartesianSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBandSeries", "ShinobiCharts.SChartBandSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBarColumnSeries", "ShinobiCharts.SChartBarColumnSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartOHLCSeries", "ShinobiCharts.SChartOHLCSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCandlestickSeries", "ShinobiCharts.SChartCandlestickSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCrosshairTooltip", "ShinobiCharts.SChartCrosshairTooltip, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCrosshairMultiValueTooltip", "ShinobiCharts.SChartCrosshairMultiValueTooltip, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDateTimeAxis", "ShinobiCharts.SChartDateTimeAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDiscontinuousDateTimeAxis", "ShinobiCharts.SChartDiscontinuousDateTimeAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartNumberAxis", "ShinobiCharts.SChartNumberAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDiscontinuousNumberAxis", "ShinobiCharts.SChartDiscontinuousNumberAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbol", "ShinobiCharts.SChartLegendSymbol, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolDonutSeries", "ShinobiCharts.SChartLegendSymbolDonutSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolPieSeries", "ShinobiCharts.SChartLegendSymbolPieSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLogarithmicAxis", "ShinobiCharts.SChartLogarithmicAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRange", "ShinobiCharts.SChartRange, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartNumberRange", "ShinobiCharts.SChartNumberRange, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRadialSeries", "ShinobiCharts.SChartRadialSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartSeriesStyle", "ShinobiCharts.SChartSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDateFrequency", "ShinobiCharts.SChartDateFrequency, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAnimation", "ShinobiCharts.SChartAnimation, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAnnotation", "ShinobiCharts.SChartAnnotation, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAnnotationZooming", "ShinobiCharts.SChartAnnotationZooming, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAxisStyle", "ShinobiCharts.SChartAxisStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTitleStyle", "ShinobiCharts.SChartTitleStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartAxisTitleStyle", "ShinobiCharts.SChartAxisTitleStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBandSeriesStyle", "ShinobiCharts.SChartBandSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBarColumnSeriesStyle", "ShinobiCharts.SChartBarColumnSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBarSeries", "ShinobiCharts.SChartBarSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBarSeriesStyle", "ShinobiCharts.SChartBarSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBasePointStyle", "ShinobiCharts.SChartBasePointStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBaselinePointStyle", "ShinobiCharts.SChartBaselinePointStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBoxGestureStyle", "ShinobiCharts.SChartBoxGestureStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDataPoint", "ShinobiCharts.SChartDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMultiValueDataPoint", "ShinobiCharts.SChartMultiValueDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBubbleDataPoint", "ShinobiCharts.SChartBubbleDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBubblePointStyle", "ShinobiCharts.SChartBubblePointStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartPointSeries", "ShinobiCharts.SChartPointSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBubbleSeries", "ShinobiCharts.SChartBubbleSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartPointSeriesStyle", "ShinobiCharts.SChartPointSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartBubbleSeriesStyle", "ShinobiCharts.SChartBubbleSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartOHLCSeriesStyle", "ShinobiCharts.SChartOHLCSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCandlestickSeriesStyle", "ShinobiCharts.SChartCandlestickSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCanvas", "ShinobiCharts.SChartCanvas, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCanvasOverlay", "ShinobiCharts.SChartCanvasOverlay, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCanvasUnderlay", "ShinobiCharts.SChartCanvasUnderlay, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCategoryAxis", "ShinobiCharts.SChartCategoryAxis, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartColumnSeries", "ShinobiCharts.SChartColumnSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartColumnSeriesStyle", "ShinobiCharts.SChartColumnSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCrosshair", "ShinobiCharts.SChartCrosshair, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartCrosshairStyle", "ShinobiCharts.SChartCrosshairStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTheme", "ShinobiCharts.SChartTheme, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDarkTheme", "ShinobiCharts.SChartDarkTheme, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDataPointLabel", "ShinobiCharts.SChartDataPointLabel, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDataPointLabelStyle", "ShinobiCharts.SChartDataPointLabelStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDataSeries", "ShinobiCharts.SChartDataSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDateRange", "ShinobiCharts.SChartDateRange, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDonutSeries", "ShinobiCharts.SChartDonutSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartDonutSeriesStyle", "ShinobiCharts.SChartDonutSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartGLView", "ShinobiCharts.SChartGLView, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartGridStripeStyle", "ShinobiCharts.SChartGridStripeStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartInternalDataPoint", "ShinobiCharts.SChartInternalDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartiOS7Theme", "ShinobiCharts.SChartiOS7Theme, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegend", "ShinobiCharts.SChartLegend, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendStyle", "ShinobiCharts.SChartLegendStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolBandSeries", "ShinobiCharts.SChartLegendSymbolBandSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolBarSeries", "ShinobiCharts.SChartLegendSymbolBarSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolBlock", "ShinobiCharts.SChartLegendSymbolBlock, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolBlockSplit", "ShinobiCharts.SChartLegendSymbolBlockSplit, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolCandlestickSeries", "ShinobiCharts.SChartLegendSymbolCandlestickSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolColumnSeries", "ShinobiCharts.SChartLegendSymbolColumnSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolLineSeries", "ShinobiCharts.SChartLegendSymbolLineSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolOHLCSeries", "ShinobiCharts.SChartLegendSymbolOHLCSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolPointSeries", "ShinobiCharts.SChartLegendSymbolPointSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLegendSymbolScatterSeries", "ShinobiCharts.SChartLegendSymbolScatterSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLightTheme", "ShinobiCharts.SChartLightTheme, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLineSeries", "ShinobiCharts.SChartLineSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartScatterSeriesStyle", "ShinobiCharts.SChartScatterSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLineSeriesBaseStyle", "ShinobiCharts.SChartLineSeriesBaseStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartLineSeriesStyle", "ShinobiCharts.SChartLineSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMainTitleStyle", "ShinobiCharts.SChartMainTitleStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMajorGridlineStyle", "ShinobiCharts.SChartMajorGridlineStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMidnightTheme", "ShinobiCharts.SChartMidnightTheme, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMultiXDataPoint", "ShinobiCharts.SChartMultiXDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartMultiYDataPoint", "ShinobiCharts.SChartMultiYDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartPieSeries", "ShinobiCharts.SChartPieSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartPieSeriesStyle", "ShinobiCharts.SChartPieSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartPointStyle", "ShinobiCharts.SChartPointStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRadialDataPoint", "ShinobiCharts.SChartRadialDataPoint, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRadialLineSeries", "ShinobiCharts.SChartRadialLineSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRadialLineSeriesStyle", "ShinobiCharts.SChartRadialLineSeriesStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartScatterSeries", "ShinobiCharts.SChartScatterSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartStepLineSeries", "ShinobiCharts.SChartStepLineSeries, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartStyle", "ShinobiCharts.SChartStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTickLabelFormatter", "ShinobiCharts.SChartTickLabelFormatter, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTickMark", "ShinobiCharts.SChartTickMark, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTickStyle", "ShinobiCharts.SChartTickStyle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTimePeriod", "ShinobiCharts.SChartTimePeriod, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartRepeatedTimePeriod", "ShinobiCharts.SChartRepeatedTimePeriod, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"SChartTitle", "ShinobiCharts.SChartTitle, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"ShinobiChart", "ShinobiCharts.ShinobiChart, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"ShinobiChartLog", "ShinobiCharts.ShinobiChartLog, ShinobiCharts, Version=2.6.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_CellTableViewCell", "Xamarin.Forms.Platform.iOS.CellTableViewCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_VisualElementRenderer_1", "Xamarin.Forms.Platform.iOS.VisualElementRenderer`1, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ViewRenderer_2", "Xamarin.Forms.Platform.iOS.ViewRenderer`2, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ViewRenderer", "Xamarin.Forms.Platform.iOS.ViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ModalWrapper", "Xamarin.Forms.Platform.iOS.ModalWrapper, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_PlatformRenderer", "Xamarin.Forms.Platform.iOS.PlatformRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer", "Xamarin.Forms.Platform.iOS.ActivityIndicatorRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_BoxRenderer", "Xamarin.Forms.Platform.iOS.BoxRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NoCaretField", "Xamarin.Forms.Platform.iOS.NoCaretField, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_EditorRenderer", "Xamarin.Forms.Platform.iOS.EditorRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_FrameRenderer", "Xamarin.Forms.Platform.iOS.FrameRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_LabelRenderer", "Xamarin.Forms.Platform.iOS.LabelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ProgressBarRenderer", "Xamarin.Forms.Platform.iOS.ProgressBarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ScrollViewRenderer", "Xamarin.Forms.Platform.iOS.ScrollViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_SliderRenderer", "Xamarin.Forms.Platform.iOS.SliderRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_StepperRenderer", "Xamarin.Forms.Platform.iOS.StepperRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_SwitchRenderer", "Xamarin.Forms.Platform.iOS.SwitchRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_TabbedRenderer", "Xamarin.Forms.Platform.iOS.TabbedRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_EventedViewController", "Xamarin.Forms.Platform.iOS.EventedViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UITableViewSource", "MonoTouch.UIKit.UITableViewSource, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"Xamarin_Forms_Platform_iOS_TableViewModelRenderer", "Xamarin.Forms.Platform.iOS.TableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer", "Xamarin.Forms.Platform.iOS.UnEvenTableViewModelRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ToolbarRenderer", "Xamarin.Forms.Platform.iOS.ToolbarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell", "Xamarin.Forms.Platform.iOS.EntryCellRenderer+EntryCellTableViewCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell", "Xamarin.Forms.Platform.iOS.ViewCellRenderer+ViewTableCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolBarItem", "Xamarin.Forms.Platform.iOS.ToolbarItemExtensions+SecondaryToolBarItem, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_RendererFactory_DefaultRenderer", "Xamarin.Forms.Platform.iOS.RendererFactory+DefaultRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ButtonRenderer", "Xamarin.Forms.Platform.iOS.ButtonRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_CarouselPageRenderer_PageContainer", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer+PageContainer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_CarouselPageRenderer", "Xamarin.Forms.Platform.iOS.CarouselPageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_DatePickerRenderer", "Xamarin.Forms.Platform.iOS.DatePickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_EntryRenderer", "Xamarin.Forms.Platform.iOS.EntryRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ImageRenderer", "Xamarin.Forms.Platform.iOS.ImageRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource", "Xamarin.Forms.Platform.iOS.ListViewRenderer+ListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource", "Xamarin.Forms.Platform.iOS.ListViewRenderer+UnevenListViewDataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_ListViewRenderer", "Xamarin.Forms.Platform.iOS.ListViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_NavigationCell", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+NavigationCell, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationMenuRenderer", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar", "Xamarin.Forms.Platform.iOS.NavigationRenderer+SecondaryToolbar, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController", "Xamarin.Forms.Platform.iOS.NavigationRenderer+ParentingViewController, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationRenderer", "Xamarin.Forms.Platform.iOS.NavigationRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate", "Xamarin.Forms.Platform.iOS.OpenGLViewRenderer+Delegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_OpenGLViewRenderer", "Xamarin.Forms.Platform.iOS.OpenGLViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer", "Xamarin.Forms.Platform.iOS.PhoneMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_SearchBarRenderer", "Xamarin.Forms.Platform.iOS.SearchBarRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer+InnerDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer", "Xamarin.Forms.Platform.iOS.TabletMasterDetailRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_TableViewRenderer", "Xamarin.Forms.Platform.iOS.TableViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_TimePickerRenderer", "Xamarin.Forms.Platform.iOS.TimePickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate", "Xamarin.Forms.Platform.iOS.WebViewRenderer+CustomWebViewDelegate, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_WebViewRenderer", "Xamarin.Forms.Platform.iOS.WebViewRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"UIPickerViewModel", "MonoTouch.UIKit.UIPickerViewModel, monotouch, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", NULL },
		{"Xamarin_Forms_Platform_iOS_PickerRenderer_PickerSource", "Xamarin.Forms.Platform.iOS.PickerRenderer+PickerSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_PickerRenderer", "Xamarin.Forms.Platform.iOS.PickerRenderer, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{"Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_DataSource", "Xamarin.Forms.Platform.iOS.NavigationMenuRenderer+DataSource, Xamarin.Forms.Platform.iOS, Version=1.2.2.0, Culture=neutral, PublicKeyToken=null", NULL },
		{ NULL, NULL, NULL },
	};


void monotouch_create_classes () {
	__monotouch_class_map [0].handle = objc_getClass ("NSObject");
	__monotouch_class_map [1].handle = [AppDelegate class];
	__monotouch_class_map [2].handle = objc_getClass ("UIResponder");
	__monotouch_class_map [3].handle = objc_getClass ("UIView");
	__monotouch_class_map [4].handle = [XamarinFormsWithShinobiCharts_iOS_ChartView class];
	__monotouch_class_map [5].handle = objc_getClass ("UIViewController");
	__monotouch_class_map [6].handle = [Xamarin_Forms_Platform_iOS_PageRenderer class];
	__monotouch_class_map [7].handle = [XamarinFormsWithShinobiCharts_iOS_ChartViewRenderer class];
	__monotouch_class_map [8].handle = [XamarinFormsWithShinobiCharts_iOS_GettingStartedDataSource class];
	__monotouch_class_map [9].handle = objc_getClass ("CALayer");
	__monotouch_class_map [10].handle = objc_getClass ("CADisplayLink");
	__monotouch_class_map [11].handle = objc_getClass ("NSArray");
	__monotouch_class_map [12].handle = objc_getClass ("NSAttributedString");
	__monotouch_class_map [13].handle = objc_getClass ("NSCoder");
	__monotouch_class_map [14].handle = objc_getClass ("NSDate");
	__monotouch_class_map [15].handle = objc_getClass ("NSIndexPath");
	__monotouch_class_map [16].handle = objc_getClass ("NSMutableAttributedString");
	__monotouch_class_map [17].handle = objc_getClass ("NSURLRequest");
	__monotouch_class_map [18].handle = objc_getClass ("MonoTouch_Foundation_InternalNSNotificationHandler");
	__monotouch_class_map [19].handle = objc_getClass ("NSValue");
	__monotouch_class_map [20].handle = objc_getClass ("NSNumber");
	__monotouch_class_map [21].handle = objc_getClass ("NSRunLoop");
	__monotouch_class_map [22].handle = objc_getClass ("NSString");
	__monotouch_class_map [23].handle = objc_getClass ("NSThread");
	__monotouch_class_map [24].handle = objc_getClass ("NSTimer");
	__monotouch_class_map [25].handle = objc_getClass ("NSURL");
	__monotouch_class_map [26].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__monotouch_class_map [27].handle = objc_getClass ("__Xamarin_NSTimerActionDispatcher");
	__monotouch_class_map [28].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__monotouch_class_map [29].handle = objc_getClass ("NSAutoreleasePool");
	__monotouch_class_map [30].handle = objc_getClass ("UIFontDescriptor");
	__monotouch_class_map [31].handle = objc_getClass ("NSTimeZone");
	__monotouch_class_map [32].handle = objc_getClass ("UIApplication");
	__monotouch_class_map [33].handle = objc_getClass ("UIBarItem");
	__monotouch_class_map [34].handle = objc_getClass ("UIControl");
	__monotouch_class_map [35].handle = objc_getClass ("UIButton");
	__monotouch_class_map [36].handle = objc_getClass ("UIScrollView");
	__monotouch_class_map [37].handle = objc_getClass ("UICollectionView");
	__monotouch_class_map [38].handle = objc_getClass ("UICollectionViewLayout");
	__monotouch_class_map [39].handle = objc_getClass ("UIColor");
	__monotouch_class_map [40].handle = objc_getClass ("MonoTouch_UIKit_UIControlEventProxy");
	__monotouch_class_map [41].handle = objc_getClass ("UIDevice");
	__monotouch_class_map [42].handle = objc_getClass ("UIFont");
	__monotouch_class_map [43].handle = objc_getClass ("UIImage");
	__monotouch_class_map [44].handle = objc_getClass ("UINavigationBar");
	__monotouch_class_map [45].handle = objc_getClass ("UINavigationController");
	__monotouch_class_map [46].handle = objc_getClass ("UIPickerView");
	__monotouch_class_map [47].handle = objc_getClass ("UIPopoverController");
	__monotouch_class_map [48].handle = objc_getClass ("UIScreen");
	__monotouch_class_map [49].handle = objc_getClass ("UITableView");
	__monotouch_class_map [50].handle = objc_getClass ("UITableViewCell");
	__monotouch_class_map [51].handle = objc_getClass ("UIToolbar");
	__monotouch_class_map [52].handle = objc_getClass ("UIWindow");
	__monotouch_class_map [53].handle = objc_getClass ("GLKView");
	__monotouch_class_map [54].handle = objc_getClass ("NSParagraphStyle");
	__monotouch_class_map [55].handle = objc_getClass ("NSShadow");
	__monotouch_class_map [56].handle = objc_getClass ("NSTextAttachment");
	__monotouch_class_map [57].handle = objc_getClass ("UICollectionReusableView");
	__monotouch_class_map [58].handle = objc_getClass ("UICollectionViewCell");
	__monotouch_class_map [59].handle = objc_getClass ("UICollectionViewFlowLayout");
	__monotouch_class_map [60].handle = objc_getClass ("UITextPosition");
	__monotouch_class_map [61].handle = objc_getClass ("UIActivityIndicatorView");
	__monotouch_class_map [62].handle = objc_getClass ("UILabel");
	__monotouch_class_map [63].handle = objc_getClass ("UIImageView");
	__monotouch_class_map [64].handle = objc_getClass ("UIDatePicker");
	__monotouch_class_map [65].handle = objc_getClass ("UINavigationItem");
	__monotouch_class_map [66].handle = objc_getClass ("UIProgressView");
	__monotouch_class_map [67].handle = objc_getClass ("UISlider");
	__monotouch_class_map [68].handle = objc_getClass ("UISwitch");
	__monotouch_class_map [69].handle = objc_getClass ("UITabBar");
	__monotouch_class_map [70].handle = objc_getClass ("UITabBarController");
	__monotouch_class_map [71].handle = objc_getClass ("UITabBarItem");
	__monotouch_class_map [72].handle = objc_getClass ("UITouch");
	__monotouch_class_map [73].handle = objc_getClass ("UIWebView");
	__monotouch_class_map [74].handle = objc_getClass ("UISplitViewController");
	__monotouch_class_map [75].handle = objc_getClass ("UIStepper");
	__monotouch_class_map [76].handle = objc_getClass ("EAGLContext");
	__monotouch_class_map [77].handle = objc_getClass ("CAEAGLLayer");
	__monotouch_class_map [78].handle = objc_getClass ("CATransaction");
	__monotouch_class_map [79].handle = objc_getClass ("NSDateComponents");
	__monotouch_class_map [80].handle = objc_getClass ("NSFormatter");
	__monotouch_class_map [81].handle = objc_getClass ("NSDateFormatter");
	__monotouch_class_map [82].handle = objc_getClass ("NSMutableArray");
	__monotouch_class_map [83].handle = objc_getClass ("NSException");
	__monotouch_class_map [84].handle = objc_getClass ("NSNull");
	__monotouch_class_map [85].handle = objc_getClass ("NSIndexSet");
	__monotouch_class_map [86].handle = objc_getClass ("NSNotification");
	__monotouch_class_map [87].handle = objc_getClass ("NSNumberFormatter");
	__monotouch_class_map [88].handle = objc_getClass ("NSData");
	__monotouch_class_map [89].handle = objc_getClass ("NSDictionary");
	__monotouch_class_map [90].handle = objc_getClass ("NSMutableData");
	__monotouch_class_map [91].handle = objc_getClass ("NSMutableDictionary");
	__monotouch_class_map [92].handle = objc_getClass ("NSNotificationCenter");
	__monotouch_class_map [93].handle = objc_getClass ("__NSObject_Disposer");
	__monotouch_class_map [94].handle = objc_getClass ("MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate");
	__monotouch_class_map [95].handle = objc_getClass ("UIActionSheet");
	__monotouch_class_map [96].handle = objc_getClass ("MonoTouch_UIKit_UIAlertView__UIAlertViewDelegate");
	__monotouch_class_map [97].handle = objc_getClass ("UIAlertView");
	__monotouch_class_map [98].handle = objc_getClass ("MonoTouch_UIKit_UIBarButtonItem_Callback");
	__monotouch_class_map [99].handle = objc_getClass ("UIBarButtonItem");
	__monotouch_class_map [100].handle = objc_getClass ("__UIGestureRecognizerToken");
	__monotouch_class_map [101].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__monotouch_class_map [102].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__monotouch_class_map [103].handle = objc_getClass ("MonoTouch_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate");
	__monotouch_class_map [104].handle = objc_getClass ("UIGestureRecognizer");
	__monotouch_class_map [105].handle = objc_getClass ("__UILongPressGestureRecognizer");
	__monotouch_class_map [106].handle = objc_getClass ("UILongPressGestureRecognizer");
	__monotouch_class_map [107].handle = objc_getClass ("__UITapGestureRecognizer");
	__monotouch_class_map [108].handle = objc_getClass ("UITapGestureRecognizer");
	__monotouch_class_map [109].handle = objc_getClass ("__UIPanGestureRecognizer");
	__monotouch_class_map [110].handle = objc_getClass ("UIPanGestureRecognizer");
	__monotouch_class_map [111].handle = objc_getClass ("MonoTouch_UIKit_UISearchBar__UISearchBarDelegate");
	__monotouch_class_map [112].handle = objc_getClass ("UISearchBar");
	__monotouch_class_map [113].handle = objc_getClass ("MonoTouch_UIKit_UITextField__UITextFieldDelegate");
	__monotouch_class_map [114].handle = objc_getClass ("UITextField");
	__monotouch_class_map [115].handle = objc_getClass ("MonoTouch_UIKit_UITextView__UITextViewDelegate");
	__monotouch_class_map [116].handle = objc_getClass ("UITextView");
	__monotouch_class_map [117].handle = objc_getClass ("MonoTouch_UIKit_UIScrollView__UIScrollViewDelegate");
	__monotouch_class_map [118].handle = [SChartBounceAnimationCurve class];
	__monotouch_class_map [119].handle = [SChartBounceDelayAnimationCurve class];
	__monotouch_class_map [120].handle = [SChartDelayBounceAnimationCurve class];
	__monotouch_class_map [121].handle = [SChartDelayBounceWithMinimumAnimationCurve class];
	__monotouch_class_map [122].handle = [SChartEaseInAnimationCurve class];
	__monotouch_class_map [123].handle = [SChartEaseInOutAnimationCurve class];
	__monotouch_class_map [124].handle = [SChartEaseOutAnimationCurve class];
	__monotouch_class_map [125].handle = [SChartFlatAnimationCurve class];
	__monotouch_class_map [126].handle = [SChartLinearAnimationCurve class];
	__monotouch_class_map [127].handle = [SChartAxis class];
	__monotouch_class_map [128].handle = [SChartSeries class];
	__monotouch_class_map [129].handle = [SChartMappedSeries class];
	__monotouch_class_map [130].handle = [SChartCartesianSeries class];
	__monotouch_class_map [131].handle = [SChartBandSeries class];
	__monotouch_class_map [132].handle = [SChartBarColumnSeries class];
	__monotouch_class_map [133].handle = [SChartOHLCSeries class];
	__monotouch_class_map [134].handle = [SChartCandlestickSeries class];
	__monotouch_class_map [135].handle = [SChartCrosshairTooltip class];
	__monotouch_class_map [136].handle = [SChartCrosshairMultiValueTooltip class];
	__monotouch_class_map [137].handle = [SChartDateTimeAxis class];
	__monotouch_class_map [138].handle = [SChartDiscontinuousDateTimeAxis class];
	__monotouch_class_map [139].handle = [SChartNumberAxis class];
	__monotouch_class_map [140].handle = [SChartDiscontinuousNumberAxis class];
	__monotouch_class_map [141].handle = [SChartLegendSymbol class];
	__monotouch_class_map [142].handle = [SChartLegendSymbolDonutSeries class];
	__monotouch_class_map [143].handle = [SChartLegendSymbolPieSeries class];
	__monotouch_class_map [144].handle = [SChartLogarithmicAxis class];
	__monotouch_class_map [145].handle = [SChartRange class];
	__monotouch_class_map [146].handle = [SChartNumberRange class];
	__monotouch_class_map [147].handle = [SChartRadialSeries class];
	__monotouch_class_map [148].handle = [SChartSeriesStyle class];
	__monotouch_class_map [149].handle = [SChartDateFrequency class];
	__monotouch_class_map [150].handle = [SChartAnimation class];
	__monotouch_class_map [151].handle = [SChartAnnotation class];
	__monotouch_class_map [152].handle = [SChartAnnotationZooming class];
	__monotouch_class_map [153].handle = [SChartAxisStyle class];
	__monotouch_class_map [154].handle = [SChartTitleStyle class];
	__monotouch_class_map [155].handle = [SChartAxisTitleStyle class];
	__monotouch_class_map [156].handle = [SChartBandSeriesStyle class];
	__monotouch_class_map [157].handle = [SChartBarColumnSeriesStyle class];
	__monotouch_class_map [158].handle = [SChartBarSeries class];
	__monotouch_class_map [159].handle = [SChartBarSeriesStyle class];
	__monotouch_class_map [160].handle = [SChartBasePointStyle class];
	__monotouch_class_map [161].handle = [SChartBaselinePointStyle class];
	__monotouch_class_map [162].handle = [SChartBoxGestureStyle class];
	__monotouch_class_map [163].handle = [SChartDataPoint class];
	__monotouch_class_map [164].handle = [SChartMultiValueDataPoint class];
	__monotouch_class_map [165].handle = [SChartBubbleDataPoint class];
	__monotouch_class_map [166].handle = [SChartBubblePointStyle class];
	__monotouch_class_map [167].handle = [SChartPointSeries class];
	__monotouch_class_map [168].handle = [SChartBubbleSeries class];
	__monotouch_class_map [169].handle = [SChartPointSeriesStyle class];
	__monotouch_class_map [170].handle = [SChartBubbleSeriesStyle class];
	__monotouch_class_map [171].handle = [SChartOHLCSeriesStyle class];
	__monotouch_class_map [172].handle = [SChartCandlestickSeriesStyle class];
	__monotouch_class_map [173].handle = [SChartCanvas class];
	__monotouch_class_map [174].handle = [SChartCanvasOverlay class];
	__monotouch_class_map [175].handle = [SChartCanvasUnderlay class];
	__monotouch_class_map [176].handle = [SChartCategoryAxis class];
	__monotouch_class_map [177].handle = [SChartColumnSeries class];
	__monotouch_class_map [178].handle = [SChartColumnSeriesStyle class];
	__monotouch_class_map [179].handle = [SChartCrosshair class];
	__monotouch_class_map [180].handle = [SChartCrosshairStyle class];
	__monotouch_class_map [181].handle = [SChartTheme class];
	__monotouch_class_map [182].handle = [SChartDarkTheme class];
	__monotouch_class_map [183].handle = [SChartDataPointLabel class];
	__monotouch_class_map [184].handle = [SChartDataPointLabelStyle class];
	__monotouch_class_map [185].handle = [SChartDataSeries class];
	__monotouch_class_map [186].handle = [SChartDateRange class];
	__monotouch_class_map [187].handle = [SChartDonutSeries class];
	__monotouch_class_map [188].handle = [SChartDonutSeriesStyle class];
	__monotouch_class_map [189].handle = [SChartGLView class];
	__monotouch_class_map [190].handle = [SChartGridStripeStyle class];
	__monotouch_class_map [191].handle = [SChartInternalDataPoint class];
	__monotouch_class_map [192].handle = [SChartiOS7Theme class];
	__monotouch_class_map [193].handle = [SChartLegend class];
	__monotouch_class_map [194].handle = [SChartLegendStyle class];
	__monotouch_class_map [195].handle = [SChartLegendSymbolBandSeries class];
	__monotouch_class_map [196].handle = [SChartLegendSymbolBarSeries class];
	__monotouch_class_map [197].handle = [SChartLegendSymbolBlock class];
	__monotouch_class_map [198].handle = [SChartLegendSymbolBlockSplit class];
	__monotouch_class_map [199].handle = [SChartLegendSymbolCandlestickSeries class];
	__monotouch_class_map [200].handle = [SChartLegendSymbolColumnSeries class];
	__monotouch_class_map [201].handle = [SChartLegendSymbolLineSeries class];
	__monotouch_class_map [202].handle = [SChartLegendSymbolOHLCSeries class];
	__monotouch_class_map [203].handle = [SChartLegendSymbolPointSeries class];
	__monotouch_class_map [204].handle = [SChartLegendSymbolScatterSeries class];
	__monotouch_class_map [205].handle = [SChartLightTheme class];
	__monotouch_class_map [206].handle = [SChartLineSeries class];
	__monotouch_class_map [207].handle = [SChartScatterSeriesStyle class];
	__monotouch_class_map [208].handle = [SChartLineSeriesBaseStyle class];
	__monotouch_class_map [209].handle = [SChartLineSeriesStyle class];
	__monotouch_class_map [210].handle = [SChartMainTitleStyle class];
	__monotouch_class_map [211].handle = [SChartMajorGridlineStyle class];
	__monotouch_class_map [212].handle = [SChartMidnightTheme class];
	__monotouch_class_map [213].handle = [SChartMultiXDataPoint class];
	__monotouch_class_map [214].handle = [SChartMultiYDataPoint class];
	__monotouch_class_map [215].handle = [SChartPieSeries class];
	__monotouch_class_map [216].handle = [SChartPieSeriesStyle class];
	__monotouch_class_map [217].handle = [SChartPointStyle class];
	__monotouch_class_map [218].handle = [SChartRadialDataPoint class];
	__monotouch_class_map [219].handle = [SChartRadialLineSeries class];
	__monotouch_class_map [220].handle = [SChartRadialLineSeriesStyle class];
	__monotouch_class_map [221].handle = [SChartScatterSeries class];
	__monotouch_class_map [222].handle = [SChartStepLineSeries class];
	__monotouch_class_map [223].handle = [SChartStyle class];
	__monotouch_class_map [224].handle = [SChartTickLabelFormatter class];
	__monotouch_class_map [225].handle = [SChartTickMark class];
	__monotouch_class_map [226].handle = [SChartTickStyle class];
	__monotouch_class_map [227].handle = [SChartTimePeriod class];
	__monotouch_class_map [228].handle = [SChartRepeatedTimePeriod class];
	__monotouch_class_map [229].handle = [SChartTitle class];
	__monotouch_class_map [230].handle = [ShinobiChart class];
	__monotouch_class_map [231].handle = [ShinobiChartLog class];
	__monotouch_class_map [232].handle = [Xamarin_Forms_Platform_iOS_CellTableViewCell class];
	__monotouch_class_map [233].handle = [Xamarin_Forms_Platform_iOS_VisualElementRenderer_1 class];
	__monotouch_class_map [234].handle = [Xamarin_Forms_Platform_iOS_ViewRenderer_2 class];
	__monotouch_class_map [235].handle = [Xamarin_Forms_Platform_iOS_ViewRenderer class];
	__monotouch_class_map [236].handle = [Xamarin_Forms_Platform_iOS_ModalWrapper class];
	__monotouch_class_map [237].handle = [Xamarin_Forms_Platform_iOS_PlatformRenderer class];
	__monotouch_class_map [238].handle = [Xamarin_Forms_Platform_iOS_ActivityIndicatorRenderer class];
	__monotouch_class_map [239].handle = [Xamarin_Forms_Platform_iOS_BoxRenderer class];
	__monotouch_class_map [240].handle = [Xamarin_Forms_Platform_iOS_NoCaretField class];
	__monotouch_class_map [241].handle = [Xamarin_Forms_Platform_iOS_EditorRenderer class];
	__monotouch_class_map [242].handle = [Xamarin_Forms_Platform_iOS_FrameRenderer class];
	__monotouch_class_map [243].handle = [Xamarin_Forms_Platform_iOS_LabelRenderer class];
	__monotouch_class_map [244].handle = [Xamarin_Forms_Platform_iOS_ProgressBarRenderer class];
	__monotouch_class_map [245].handle = [Xamarin_Forms_Platform_iOS_ScrollViewRenderer class];
	__monotouch_class_map [246].handle = [Xamarin_Forms_Platform_iOS_SliderRenderer class];
	__monotouch_class_map [247].handle = [Xamarin_Forms_Platform_iOS_StepperRenderer class];
	__monotouch_class_map [248].handle = [Xamarin_Forms_Platform_iOS_SwitchRenderer class];
	__monotouch_class_map [249].handle = [Xamarin_Forms_Platform_iOS_TabbedRenderer class];
	__monotouch_class_map [250].handle = [Xamarin_Forms_Platform_iOS_EventedViewController class];
	__monotouch_class_map [251].handle = objc_getClass ("UITableViewSource");
	__monotouch_class_map [252].handle = [Xamarin_Forms_Platform_iOS_TableViewModelRenderer class];
	__monotouch_class_map [253].handle = [Xamarin_Forms_Platform_iOS_UnEvenTableViewModelRenderer class];
	__monotouch_class_map [254].handle = [Xamarin_Forms_Platform_iOS_ToolbarRenderer class];
	__monotouch_class_map [255].handle = [Xamarin_Forms_Platform_iOS_EntryCellRenderer_EntryCellTableViewCell class];
	__monotouch_class_map [256].handle = [Xamarin_Forms_Platform_iOS_ViewCellRenderer_ViewTableCell class];
	__monotouch_class_map [257].handle = [Xamarin_Forms_Platform_iOS_ToolbarItemExtensions_SecondaryToolBarItem class];
	__monotouch_class_map [258].handle = [Xamarin_Forms_Platform_iOS_RendererFactory_DefaultRenderer class];
	__monotouch_class_map [259].handle = [Xamarin_Forms_Platform_iOS_ButtonRenderer class];
	__monotouch_class_map [260].handle = [Xamarin_Forms_Platform_iOS_CarouselPageRenderer_PageContainer class];
	__monotouch_class_map [261].handle = [Xamarin_Forms_Platform_iOS_CarouselPageRenderer class];
	__monotouch_class_map [262].handle = [Xamarin_Forms_Platform_iOS_DatePickerRenderer class];
	__monotouch_class_map [263].handle = [Xamarin_Forms_Platform_iOS_EntryRenderer class];
	__monotouch_class_map [264].handle = [Xamarin_Forms_Platform_iOS_ImageRenderer class];
	__monotouch_class_map [265].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer_ListViewDataSource class];
	__monotouch_class_map [266].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer_UnevenListViewDataSource class];
	__monotouch_class_map [267].handle = [Xamarin_Forms_Platform_iOS_ListViewRenderer class];
	__monotouch_class_map [268].handle = [Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_NavigationCell class];
	__monotouch_class_map [269].handle = [Xamarin_Forms_Platform_iOS_NavigationMenuRenderer class];
	__monotouch_class_map [270].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_SecondaryToolbar class];
	__monotouch_class_map [271].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer_ParentingViewController class];
	__monotouch_class_map [272].handle = [Xamarin_Forms_Platform_iOS_NavigationRenderer class];
	__monotouch_class_map [273].handle = [Xamarin_Forms_Platform_iOS_OpenGLViewRenderer_Delegate class];
	__monotouch_class_map [274].handle = [Xamarin_Forms_Platform_iOS_OpenGLViewRenderer class];
	__monotouch_class_map [275].handle = [Xamarin_Forms_Platform_iOS_PhoneMasterDetailRenderer class];
	__monotouch_class_map [276].handle = [Xamarin_Forms_Platform_iOS_SearchBarRenderer class];
	__monotouch_class_map [277].handle = [Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer_InnerDelegate class];
	__monotouch_class_map [278].handle = [Xamarin_Forms_Platform_iOS_TabletMasterDetailRenderer class];
	__monotouch_class_map [279].handle = [Xamarin_Forms_Platform_iOS_TableViewRenderer class];
	__monotouch_class_map [280].handle = [Xamarin_Forms_Platform_iOS_TimePickerRenderer class];
	__monotouch_class_map [281].handle = [Xamarin_Forms_Platform_iOS_WebViewRenderer_CustomWebViewDelegate class];
	__monotouch_class_map [282].handle = [Xamarin_Forms_Platform_iOS_WebViewRenderer class];
	__monotouch_class_map [283].handle = objc_getClass ("UIPickerViewModel");
	__monotouch_class_map [284].handle = [Xamarin_Forms_Platform_iOS_PickerRenderer_PickerSource class];
	__monotouch_class_map [285].handle = [Xamarin_Forms_Platform_iOS_PickerRenderer class];
	__monotouch_class_map [286].handle = [Xamarin_Forms_Platform_iOS_NavigationMenuRenderer_DataSource class];
	monotouch_setup_classmap (__monotouch_class_map, 287);
}

