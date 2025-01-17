module spasm.bindings.UserProximityEvent;

import spasm.types;
import spasm.bindings.Event;

@safe:
nothrow:

struct UserProximityEvent {
  nothrow:
  spasm.bindings.Event.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  bool near()() {
    return Object_Getter__bool(this._parent, "near");
  }
}
struct UserProximityEventInit {
  nothrow:
  spasm.bindings.Event.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return UserProximityEventInit(spasm_add__object());
  }
  void near()(bool near) {
    Object_Call_bool__void(this._parent, "near", near);
  }
  bool near()() {
    return Object_Getter__bool(this._parent, "near");
  }
}


