module spasm.bindings.PushMessageData;

import spasm.types;
import spasm.bindings.Blob;

@safe:
nothrow:

struct PushMessageData {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto arrayBuffer()() {
    return ArrayBuffer(Object_Getter__Handle(this.handle, "arrayBuffer"));
  }
  auto blob()() {
    return Blob(Object_Getter__Handle(this.handle, "blob"));
  }
  auto json()() {
    return Any(Object_Getter__Handle(this.handle, "json"));
  }
  string text()() {
    return Object_Getter__string(this.handle, "text");
  }
}


