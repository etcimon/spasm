module spasm.bindings.HTMLDocument;

import spasm.types;
import spasm.bindings.Document;
import spasm.bindings.HTMLAllCollection;
import spasm.bindings.NodeList;

@safe:
nothrow:

struct HTMLDocument {
  nothrow:
  spasm.bindings.Document.Document _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Document(h);
  }
  void domain()(string domain) {
    Object_Call_string__void(this._parent, "domain", domain);
  }
  string domain()() {
    return Object_Getter__string(this._parent, "domain");
  }
  void cookie()(string cookie) {
    Object_Call_string__void(this._parent, "cookie", cookie);
  }
  string cookie()() {
    return Object_Getter__string(this._parent, "cookie");
  }
  auto opIndex()(string name) {
    return JsObject(Object_Call_string__Handle(this._parent, "getter", name));
  }
  auto opDispatch(string name)() {
    return JsObject(Object_Call_string__Handle(this._parent, "getter", name));
  }
  auto open()(string type, string replace /* = "" */) {
    return Document(Object_Call_string_string__Handle(this._parent, "open", type, replace));
  }
  auto open()(string type) {
    return Document(Object_Call_string__Handle(this._parent, "open", type));
  }
  auto open()() {
    return Document(Object_Getter__Handle(this._parent, "open"));
  }
  auto open()(string url, string name, string features, bool replace /* = false */) {
    return HTMLDocument_open__string_string_string_bool(this._parent, url, name, features, replace);
  }
  auto open()(string url, string name, string features) {
    return HTMLDocument_open_0_string_string_string(this._parent, url, name, features);
  }
  void close()() {
    Object_Call__void(this._parent, "close");
  }
  void write()(string text) {
    Object_Call_string__void(this._parent, "write", text);
  }
  void writeln()(string text) {
    Object_Call_string__void(this._parent, "writeln", text);
  }
  void designMode()(string designMode) {
    Object_Call_string__void(this._parent, "designMode", designMode);
  }
  string designMode()() {
    return Object_Getter__string(this._parent, "designMode");
  }
  bool execCommand()(string commandId, bool showUI /* = false */, string value /* = "" */) {
    return HTMLDocument_execCommand(this._parent, commandId, showUI, value);
  }
  bool execCommand()(string commandId, bool showUI /* = false */) {
    return HTMLDocument_execCommand_0(this._parent, commandId, showUI);
  }
  bool execCommand()(string commandId) {
    return Object_Call_string__bool(this._parent, "execCommand", commandId);
  }
  bool queryCommandEnabled()(string commandId) {
    return Object_Call_string__bool(this._parent, "queryCommandEnabled", commandId);
  }
  bool queryCommandIndeterm()(string commandId) {
    return Object_Call_string__bool(this._parent, "queryCommandIndeterm", commandId);
  }
  bool queryCommandState()(string commandId) {
    return Object_Call_string__bool(this._parent, "queryCommandState", commandId);
  }
  bool queryCommandSupported()(string commandId) {
    return Object_Call_string__bool(this._parent, "queryCommandSupported", commandId);
  }
  string queryCommandValue()(string commandId) {
    return Object_Call_string__string(this._parent, "queryCommandValue", commandId);
  }
  void fgColor()(string fgColor) {
    Object_Call_string__void(this._parent, "fgColor", fgColor);
  }
  string fgColor()() {
    return Object_Getter__string(this._parent, "fgColor");
  }
  void linkColor()(string linkColor) {
    Object_Call_string__void(this._parent, "linkColor", linkColor);
  }
  string linkColor()() {
    return Object_Getter__string(this._parent, "linkColor");
  }
  void vlinkColor()(string vlinkColor) {
    Object_Call_string__void(this._parent, "vlinkColor", vlinkColor);
  }
  string vlinkColor()() {
    return Object_Getter__string(this._parent, "vlinkColor");
  }
  void alinkColor()(string alinkColor) {
    Object_Call_string__void(this._parent, "alinkColor", alinkColor);
  }
  string alinkColor()() {
    return Object_Getter__string(this._parent, "alinkColor");
  }
  void bgColor()(string bgColor) {
    Object_Call_string__void(this._parent, "bgColor", bgColor);
  }
  string bgColor()() {
    return Object_Getter__string(this._parent, "bgColor");
  }
  void clear()() {
    Object_Call__void(this._parent, "clear");
  }
  auto all()() {
    return HTMLAllCollection(Object_Getter__Handle(this._parent, "all"));
  }
  void captureEvents()() {
    Object_Call__void(this._parent, "captureEvents");
  }
  void releaseEvents()() {
    Object_Call__void(this._parent, "releaseEvents");
  }
  int blockedNodeByClassifierCount()() {
    return Object_Getter__int(this._parent, "blockedNodeByClassifierCount");
  }
  auto blockedNodesByClassifier()() {
    return NodeList(Object_Getter__Handle(this._parent, "blockedNodesByClassifier"));
  }
  void userInteractionForTesting()() {
    Object_Call__void(this._parent, "userInteractionForTesting");
  }
  void setKeyPressEventModel()(ushort aKeyPressEventModel) {
    HTMLDocument_setKeyPressEventModel(this._parent, aKeyPressEventModel);
  }
}


extern (C) Optional!(WindowProxy) HTMLDocument_open__string_string_string_bool(Handle, string, string, string, bool);
extern (C) Optional!(WindowProxy) HTMLDocument_open_0_string_string_string(Handle, string, string, string);
extern (C) bool HTMLDocument_execCommand(Handle, string, bool, string);
extern (C) bool HTMLDocument_execCommand_0(Handle, string, bool);
extern (C) void HTMLDocument_setKeyPressEventModel(Handle, ushort);