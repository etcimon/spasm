module spasm.bindings.PromiseRejectionEvent;

import spasm.types;
import spasm.bindings.Event;

@safe:
nothrow:

struct PromiseRejectionEvent {
  nothrow:
  spasm.bindings.Event.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto promise()() {
    return Promise!(Any)(Object_Getter__Handle(this._parent, "promise"));
  }
  auto reason()() {
    return Any(Object_Getter__Handle(this._parent, "reason"));
  }
}
struct PromiseRejectionEventInit {
  nothrow:
  spasm.bindings.Event.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return PromiseRejectionEventInit(spasm_add__object());
  }
  void promise()(scope ref Promise!(Any) promise) {
    Object_Call_Handle__void(this._parent, "promise", promise.handle);
  }
  auto promise()() {
    return Promise!(Any)(Object_Getter__Handle(this._parent, "promise"));
  }
  void reason(T0)(scope auto ref T0 reason) {
    import std.traits : isNumeric, isFloatingPoint, isSomeString;
    if (isSomeString!T0) {
      Object_Call_string__void(this._parent, "reason", cast(string) reason);
      return;
    } else if (isNumeric!T0 && !isFloatingPoint!T0) {
      Object_Call_long__void(this._parent, "reason", cast(long) reason);
      return;
    } else if (isFloatingPoint!T0) {
      Object_Call_double__void(this._parent, "reason", cast(double) reason);
      return;
    }
    // Any
    Handle _handle_reason = getOrCreateHandle(reason);
    Object_Call_Handle__void(this._parent, "reason", _handle_reason);
    dropHandle!(T0)(_handle_reason);
  }
  auto reason()() {
    return Any(Object_Getter__Handle(this._parent, "reason"));
  }
}


