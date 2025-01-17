module spasm.bindings.FileSystem;

import spasm.types;
import spasm.bindings.DOMException;
import spasm.bindings.FileSystemDirectoryEntry;
import spasm.bindings.FileSystemEntry;

@safe:
nothrow:

alias ErrorCallback = void delegate(DOMException);
struct FileSystem {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  string name()() {
    return Object_Getter__string(this.handle, "name");
  }
  auto root()() {
    return FileSystemDirectoryEntry(Object_Getter__Handle(this.handle, "root"));
  }
}
alias FileSystemEntryCallback = void delegate(FileSystemEntry);
struct FileSystemFlags {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return FileSystemFlags(spasm_add__object());
  }
  void create()(bool create) {
    Object_Call_bool__void(this.handle, "create", create);
  }
  bool create()() {
    return Object_Getter__bool(this.handle, "create");
  }
  void exclusive()(bool exclusive) {
    Object_Call_bool__void(this.handle, "exclusive", exclusive);
  }
  bool exclusive()() {
    return Object_Getter__bool(this.handle, "exclusive");
  }
}


