module spasm.bindings.MediaTrackConstraintSet;

import spasm.types;
@safe:
nothrow:

struct ConstrainBooleanParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ConstrainBooleanParameters(spasm_add__object());
  }
  void exact()(bool exact) {
    Object_Call_bool__void(this.handle, "exact", exact);
  }
  bool exact()() {
    return Object_Getter__bool(this.handle, "exact");
  }
  void ideal()(bool ideal) {
    Object_Call_bool__void(this.handle, "ideal", ideal);
  }
  bool ideal()() {
    return Object_Getter__bool(this.handle, "ideal");
  }
}
struct ConstrainDOMStringParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ConstrainDOMStringParameters(spasm_add__object());
  }
  void exact()(scope ref SumType!(string, Sequence!(string)) exact) {
    ConstrainDOMStringParameters_exact_Set(this.handle, exact);
  }
  auto exact()() {
    return Object_Getter__Handle(this.handle, "exact");
  }
  void ideal()(scope ref SumType!(string, Sequence!(string)) ideal) {
    ConstrainDOMStringParameters_ideal_Set(this.handle, ideal);
  }
  auto ideal()() {
    return Object_Getter__Handle(this.handle, "ideal");
  }
}
struct ConstrainDoubleRange {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ConstrainDoubleRange(spasm_add__object());
  }
  void min()(double min) {
    Object_Call_double__void(this.handle, "min", min);
  }
  double min()() {
    return Object_Getter__double(this.handle, "min");
  }
  void max()(double max) {
    Object_Call_double__void(this.handle, "max", max);
  }
  double max()() {
    return Object_Getter__double(this.handle, "max");
  }
  void exact()(double exact) {
    Object_Call_double__void(this.handle, "exact", exact);
  }
  double exact()() {
    return Object_Getter__double(this.handle, "exact");
  }
  void ideal()(double ideal) {
    Object_Call_double__void(this.handle, "ideal", ideal);
  }
  double ideal()() {
    return Object_Getter__double(this.handle, "ideal");
  }
}
struct ConstrainLongRange {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return ConstrainLongRange(spasm_add__object());
  }
  void min()(int min) {
    Object_Call_int__void(this.handle, "min", min);
  }
  int min()() {
    return Object_Getter__int(this.handle, "min");
  }
  void max()(int max) {
    Object_Call_int__void(this.handle, "max", max);
  }
  int max()() {
    return Object_Getter__int(this.handle, "max");
  }
  void exact()(int exact) {
    Object_Call_int__void(this.handle, "exact", exact);
  }
  int exact()() {
    return Object_Getter__int(this.handle, "exact");
  }
  void ideal()(int ideal) {
    Object_Call_int__void(this.handle, "ideal", ideal);
  }
  int ideal()() {
    return Object_Getter__int(this.handle, "ideal");
  }
}


extern (C) void ConstrainDOMStringParameters_exact_Set(Handle, scope ref SumType!(string, Sequence!(string)));
extern (C) void ConstrainDOMStringParameters_ideal_Set(Handle, scope ref SumType!(string, Sequence!(string)));