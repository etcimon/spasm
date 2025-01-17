module spasm.bindings.BeforeUnloadEvent;

import spasm.types;
import spasm.bindings.Event;

@safe:
nothrow:

struct BeforeUnloadEvent {
  nothrow:
  spasm.bindings.Event.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  void returnValue()(string returnValue) {
    Object_Call_string__void(this._parent, "returnValue", returnValue);
  }
  string returnValue()() {
    return Object_Getter__string(this._parent, "returnValue");
  }
}


