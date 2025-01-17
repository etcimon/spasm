module spasm.bindings.WorkerLocation;

import spasm.types;
@safe:
nothrow:

struct WorkerLocation {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  string href()() {
    return Object_Getter__string(this.handle, "href");
  }
  string origin()() {
    return Object_Getter__string(this.handle, "origin");
  }
  string protocol()() {
    return Object_Getter__string(this.handle, "protocol");
  }
  string host()() {
    return Object_Getter__string(this.handle, "host");
  }
  string hostname()() {
    return Object_Getter__string(this.handle, "hostname");
  }
  string port()() {
    return Object_Getter__string(this.handle, "port");
  }
  string pathname()() {
    return Object_Getter__string(this.handle, "pathname");
  }
  string search()() {
    return Object_Getter__string(this.handle, "search");
  }
  string hash()() {
    return Object_Getter__string(this.handle, "hash");
  }
}


