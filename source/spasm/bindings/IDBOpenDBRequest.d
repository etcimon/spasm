module spasm.bindings.IDBOpenDBRequest;

import spasm.types;
import spasm.bindings.EventHandler;
import spasm.bindings.IDBRequest;

@safe:
nothrow:

struct IDBOpenDBRequest {
  nothrow:
  spasm.bindings.IDBRequest.IDBRequest _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .IDBRequest(h);
  }
  void onblocked(T0)(scope auto ref Optional!(T0) onblocked) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onblocked", !onblocked.empty, onblocked.front);
  }
  EventHandler onblocked()() {
    return Object_Getter__EventHandler(this._parent, "onblocked");
  }
  void onupgradeneeded(T0)(scope auto ref Optional!(T0) onupgradeneeded) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onupgradeneeded", !onupgradeneeded.empty, onupgradeneeded.front);
  }
  EventHandler onupgradeneeded()() {
    return Object_Getter__EventHandler(this._parent, "onupgradeneeded");
  }
}


