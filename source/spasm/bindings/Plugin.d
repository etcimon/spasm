module spasm.bindings.Plugin;

import spasm.types;
import spasm.bindings.MimeType;

@safe:
nothrow:

struct Plugin {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  string description()() {
    return Object_Getter__string(this.handle, "description");
  }
  string filename()() {
    return Object_Getter__string(this.handle, "filename");
  }
  string version_()() {
    return Object_Getter__string(this.handle, "version");
  }
  string name()() {
    return Object_Getter__string(this.handle, "name");
  }
  uint length()() {
    return Object_Getter__uint(this.handle, "length");
  }
  auto item()(uint index) {
    return Object_Call_uint__OptionalHandle(this.handle, "item", index);
  }
  auto namedItem()(string name) {
    return Object_Call_string__OptionalHandle(this.handle, "namedItem", name);
  }
}


