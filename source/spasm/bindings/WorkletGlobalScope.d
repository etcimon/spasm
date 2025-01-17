module spasm.bindings.WorkletGlobalScope;

import spasm.types;
@safe:
nothrow:

struct WorkletGlobalScope {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void dump()(string str) {
    Object_Call_string__void(this.handle, "dump", str);
  }
  void dump()() {
    Object_Call__void(this.handle, "dump");
  }
}


