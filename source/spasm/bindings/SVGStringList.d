module spasm.bindings.SVGStringList;

import spasm.types;
@safe:
nothrow:

struct SVGStringList {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  uint length()() {
    return Object_Getter__uint(this.handle, "length");
  }
  uint numberOfItems()() {
    return Object_Getter__uint(this.handle, "numberOfItems");
  }
  void clear()() {
    Object_Call__void(this.handle, "clear");
  }
  string initialize()(string newItem) {
    return Object_Call_string__string(this.handle, "initialize", newItem);
  }
  string getItem()(uint index) {
    return Object_Call_uint__string(this.handle, "getItem", index);
  }
  string opIndex()(uint index) {
    return Object_Call_uint__string(this.handle, "getter", index);
  }
  string opDispatch(uint index)() {
    return Object_Call_uint__string(this.handle, "getter", index);
  }
  string insertItemBefore()(string newItem, uint index) {
    return SVGStringList_insertItemBefore(this.handle, newItem, index);
  }
  string replaceItem()(string newItem, uint index) {
    return SVGStringList_replaceItem(this.handle, newItem, index);
  }
  string removeItem()(uint index) {
    return Object_Call_uint__string(this.handle, "removeItem", index);
  }
  string appendItem()(string newItem) {
    return Object_Call_string__string(this.handle, "appendItem", newItem);
  }
}


extern (C) string SVGStringList_insertItemBefore(Handle, string, uint);
extern (C) string SVGStringList_replaceItem(Handle, string, uint);