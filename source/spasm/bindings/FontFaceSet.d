module spasm.bindings.FontFaceSet;

import spasm.types;
import spasm.bindings.EventHandler;
import spasm.bindings.EventTarget;
import spasm.bindings.FontFace;

@safe:
nothrow:

struct FontFaceSet {
  nothrow:
  spasm.bindings.EventTarget.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  uint size()() {
    return Object_Getter__uint(this._parent, "size");
  }
  void add()(scope ref FontFace font) {
    Object_Call_Handle__void(this._parent, "add", font.handle);
  }
  bool has()(scope ref FontFace font) {
    return FontFaceSet_has(this._parent, font.handle);
  }
  bool delete_()(scope ref FontFace font) {
    return FontFaceSet_delete(this._parent, font.handle);
  }
  void clear()() {
    Object_Call__void(this._parent, "clear");
  }
  auto entries()() {
    return FontFaceSetIterator(Object_Getter__Handle(this._parent, "entries"));
  }
  auto values()() {
    return FontFaceSetIterator(Object_Getter__Handle(this._parent, "values"));
  }
  void forEach(T1)(FontFaceSetForEachCallback cb, scope auto ref T1 thisArg) {
    // Any
    Handle _handle_thisArg = getOrCreateHandle(thisArg);
    FontFaceSet_forEach(this._parent, cb, _handle_thisArg);
    dropHandle!(T1)(_handle_thisArg);
  }
  void forEach()(FontFaceSetForEachCallback cb) {
    FontFaceSet_forEach_0(this._parent, cb);
  }
  void onloading(T0)(scope auto ref Optional!(T0) onloading) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onloading", !onloading.empty, onloading.front);
  }
  EventHandler onloading()() {
    return Object_Getter__EventHandler(this._parent, "onloading");
  }
  void onloadingdone(T0)(scope auto ref Optional!(T0) onloadingdone) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onloadingdone", !onloadingdone.empty, onloadingdone.front);
  }
  EventHandler onloadingdone()() {
    return Object_Getter__EventHandler(this._parent, "onloadingdone");
  }
  void onloadingerror(T0)(scope auto ref Optional!(T0) onloadingerror) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onloadingerror", !onloadingerror.empty, onloadingerror.front);
  }
  EventHandler onloadingerror()() {
    return Object_Getter__EventHandler(this._parent, "onloadingerror");
  }
  auto load()(string font, string text /* = " " */) {
    return Promise!(Sequence!(FontFace))(Object_Call_string_string__Handle(this._parent, "load", font, text));
  }
  auto load()(string font) {
    return Promise!(Sequence!(FontFace))(Object_Call_string__Handle(this._parent, "load", font));
  }
  bool check()(string font, string text /* = " " */) {
    return FontFaceSet_check(this._parent, font, text);
  }
  bool check()(string font) {
    return Object_Call_string__bool(this._parent, "check", font);
  }
  auto ready()() {
    return Promise!(void)(Object_Getter__Handle(this._parent, "ready"));
  }
  FontFaceSetLoadStatus status()() {
    return FontFaceSet_status_Get(this._parent);
  }
}
alias FontFaceSetForEachCallback = void delegate(FontFace, FontFace, FontFaceSet);
struct FontFaceSetIterator {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto next()() {
    return FontFaceSetIteratorResult(Object_Getter__Handle(this.handle, "next"));
  }
}
struct FontFaceSetIteratorResult {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return FontFaceSetIteratorResult(spasm_add__object());
  }
  void value()(scope ref Any value) {
    Object_Call_Handle__void(this.handle, "value", value.handle);
  }
  auto value()() {
    return Any(Object_Getter__Handle(this.handle, "value"));
  }
  void done()(bool done) {
    Object_Call_bool__void(this.handle, "done", done);
  }
  bool done()() {
    return Object_Getter__bool(this.handle, "done");
  }
}
enum FontFaceSetLoadStatus {
  loading,
  loaded
}


extern (C) bool FontFaceSet_has(Handle, Handle);
extern (C) bool FontFaceSet_delete(Handle, Handle);
extern (C) void FontFaceSet_forEach(Handle, FontFaceSetForEachCallback, Handle);
extern (C) void FontFaceSet_forEach_0(Handle, FontFaceSetForEachCallback);
extern (C) bool FontFaceSet_check(Handle, string, string);
extern (C) FontFaceSetLoadStatus FontFaceSet_status_Get(Handle);