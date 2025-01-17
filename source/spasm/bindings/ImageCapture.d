module spasm.bindings.ImageCapture;

import spasm.types;
import spasm.bindings.EventHandler;
import spasm.bindings.EventTarget;
import spasm.bindings.MediaStreamTrack;

@safe:
nothrow:

struct ImageCapture {
  nothrow:
  spasm.bindings.EventTarget.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  auto videoStreamTrack()() {
    return MediaStreamTrack(Object_Getter__Handle(this._parent, "videoStreamTrack"));
  }
  void onphoto(T0)(scope auto ref Optional!(T0) onphoto) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onphoto", !onphoto.empty, onphoto.front);
  }
  EventHandler onphoto()() {
    return Object_Getter__EventHandler(this._parent, "onphoto");
  }
  void onerror(T0)(scope auto ref Optional!(T0) onerror) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onerror", !onerror.empty, onerror.front);
  }
  EventHandler onerror()() {
    return Object_Getter__EventHandler(this._parent, "onerror");
  }
  void takePhoto()() {
    Object_Call__void(this._parent, "takePhoto");
  }
}


