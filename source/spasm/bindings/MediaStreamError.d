module spasm.bindings.MediaStreamError;

import spasm.types;
@safe:
nothrow:

struct MediaStreamError {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  string name()() {
    return Object_Getter__string(this.handle, "name");
  }
  Optional!(string) message()() {
    return Object_Getter__OptionalString(this.handle, "message");
  }
  Optional!(string) constraint()() {
    return Object_Getter__OptionalString(this.handle, "constraint");
  }
}


