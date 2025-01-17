module spasm.bindings.TCPSocketErrorEvent;

import spasm.types;
import spasm.bindings.Event;

@safe:
nothrow:

struct TCPSocketErrorEvent {
  nothrow:
  spasm.bindings.Event.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  string name()() {
    return Object_Getter__string(this._parent, "name");
  }
  string message()() {
    return Object_Getter__string(this._parent, "message");
  }
}
struct TCPSocketErrorEventInit {
  nothrow:
  spasm.bindings.Event.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return TCPSocketErrorEventInit(spasm_add__object());
  }
  void name()(string name) {
    Object_Call_string__void(this._parent, "name", name);
  }
  string name()() {
    return Object_Getter__string(this._parent, "name");
  }
  void message()(string message) {
    Object_Call_string__void(this._parent, "message", message);
  }
  string message()() {
    return Object_Getter__string(this._parent, "message");
  }
}


