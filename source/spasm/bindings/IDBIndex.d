module spasm.bindings.IDBIndex;

import spasm.types;
import spasm.bindings.IDBCursor;
import spasm.bindings.IDBObjectStore;
import spasm.bindings.IDBRequest;

@safe:
nothrow:

struct IDBIndex {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void name()(string name) {
    Object_Call_string__void(this.handle, "name", name);
  }
  string name()() {
    return Object_Getter__string(this.handle, "name");
  }
  auto objectStore()() {
    return IDBObjectStore(Object_Getter__Handle(this.handle, "objectStore"));
  }
  auto keyPath()() {
    return Any(Object_Getter__Handle(this.handle, "keyPath"));
  }
  bool multiEntry()() {
    return Object_Getter__bool(this.handle, "multiEntry");
  }
  bool unique()() {
    return Object_Getter__bool(this.handle, "unique");
  }
  Optional!(string) locale()() {
    return Object_Getter__OptionalString(this.handle, "locale");
  }
  bool isAutoLocale()() {
    return Object_Getter__bool(this.handle, "isAutoLocale");
  }
  auto openCursor(T0)(scope auto ref T0 range, IDBCursorDirection direction /* = "next" */) {
    // Any
    Handle _handle_range = getOrCreateHandle(range);
    auto result = IDBRequest(IDBIndex_openCursor(this.handle, _handle_range, direction));
    dropHandle!(T0)(_handle_range);
    return result;
  }
  auto openCursor(T0)(scope auto ref T0 range) {
    // Any
    Handle _handle_range = getOrCreateHandle(range);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "openCursor", _handle_range));
    dropHandle!(T0)(_handle_range);
    return result;
  }
  auto openCursor()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "openCursor"));
  }
  auto openKeyCursor(T0)(scope auto ref T0 range, IDBCursorDirection direction /* = "next" */) {
    // Any
    Handle _handle_range = getOrCreateHandle(range);
    auto result = IDBRequest(IDBIndex_openKeyCursor(this.handle, _handle_range, direction));
    dropHandle!(T0)(_handle_range);
    return result;
  }
  auto openKeyCursor(T0)(scope auto ref T0 range) {
    // Any
    Handle _handle_range = getOrCreateHandle(range);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "openKeyCursor", _handle_range));
    dropHandle!(T0)(_handle_range);
    return result;
  }
  auto openKeyCursor()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "openKeyCursor"));
  }
  auto get(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "get", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto getKey(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "getKey", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto count(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "count", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto count()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "count"));
  }
  auto mozGetAll(T0)(scope auto ref T0 key, uint limit) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBIndex_mozGetAll(this.handle, _handle_key, limit));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto mozGetAll(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "mozGetAll", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto mozGetAll()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "mozGetAll"));
  }
  auto mozGetAllKeys(T0)(scope auto ref T0 key, uint limit) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBIndex_mozGetAllKeys(this.handle, _handle_key, limit));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto mozGetAllKeys(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "mozGetAllKeys", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto mozGetAllKeys()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "mozGetAllKeys"));
  }
  auto getAll(T0)(scope auto ref T0 key, uint limit) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBIndex_getAll(this.handle, _handle_key, limit));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto getAll(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "getAll", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto getAll()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "getAll"));
  }
  auto getAllKeys(T0)(scope auto ref T0 key, uint limit) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBIndex_getAllKeys(this.handle, _handle_key, limit));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto getAllKeys(T0)(scope auto ref T0 key) {
    // Any
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(Object_Call_Handle__Handle(this.handle, "getAllKeys", _handle_key));
    dropHandle!(T0)(_handle_key);
    return result;
  }
  auto getAllKeys()() {
    return IDBRequest(Object_Getter__Handle(this.handle, "getAllKeys"));
  }
}
struct IDBIndexParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return IDBIndexParameters(spasm_add__object());
  }
  void unique()(bool unique) {
    Object_Call_bool__void(this.handle, "unique", unique);
  }
  bool unique()() {
    return Object_Getter__bool(this.handle, "unique");
  }
  void multiEntry()(bool multiEntry) {
    Object_Call_bool__void(this.handle, "multiEntry", multiEntry);
  }
  bool multiEntry()() {
    return Object_Getter__bool(this.handle, "multiEntry");
  }
  void locale(T0)(scope auto ref Optional!(T0) locale) if (isTOrPointer!(T0, string)) {
    IDBIndexParameters_locale_Set(this.handle, !locale.empty, locale.front);
  }
  Optional!(string) locale()() {
    return Object_Getter__OptionalString(this.handle, "locale");
  }
}


extern (C) Handle IDBIndex_openCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBIndex_openKeyCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBIndex_mozGetAll(Handle, Handle, uint);
extern (C) Handle IDBIndex_mozGetAllKeys(Handle, Handle, uint);
extern (C) Handle IDBIndex_getAll(Handle, Handle, uint);
extern (C) Handle IDBIndex_getAllKeys(Handle, Handle, uint);
extern (C) void IDBIndexParameters_locale_Set(Handle, bool, string);