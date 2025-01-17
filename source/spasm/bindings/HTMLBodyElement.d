module spasm.bindings.HTMLBodyElement;

import spasm.types;
import spasm.bindings.EventHandler;
import spasm.bindings.HTMLElement;

@safe:
nothrow:

struct HTMLBodyElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void text()(string text) {
    Object_Call_string__void(this._parent, "text", text);
  }
  string text()() {
    return Object_Getter__string(this._parent, "text");
  }
  void link()(string link) {
    Object_Call_string__void(this._parent, "link", link);
  }
  string link()() {
    return Object_Getter__string(this._parent, "link");
  }
  void vLink()(string vLink) {
    Object_Call_string__void(this._parent, "vLink", vLink);
  }
  string vLink()() {
    return Object_Getter__string(this._parent, "vLink");
  }
  void aLink()(string aLink) {
    Object_Call_string__void(this._parent, "aLink", aLink);
  }
  string aLink()() {
    return Object_Getter__string(this._parent, "aLink");
  }
  void bgColor()(string bgColor) {
    Object_Call_string__void(this._parent, "bgColor", bgColor);
  }
  string bgColor()() {
    return Object_Getter__string(this._parent, "bgColor");
  }
  void background()(string background) {
    Object_Call_string__void(this._parent, "background", background);
  }
  string background()() {
    return Object_Getter__string(this._parent, "background");
  }
  void onafterprint(T0)(scope auto ref Optional!(T0) onafterprint) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onafterprint", !onafterprint.empty, onafterprint.front);
  }
  EventHandler onafterprint()() {
    return Object_Getter__EventHandler(this._parent, "onafterprint");
  }
  void onbeforeprint(T0)(scope auto ref Optional!(T0) onbeforeprint) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onbeforeprint", !onbeforeprint.empty, onbeforeprint.front);
  }
  EventHandler onbeforeprint()() {
    return Object_Getter__EventHandler(this._parent, "onbeforeprint");
  }
  void onbeforeunload(T0)(scope auto ref Optional!(T0) onbeforeunload) if (isTOrPointer!(T0, OnBeforeUnloadEventHandler)) {
    WindowEventHandlers_onbeforeunload_Set(this._parent, !onbeforeunload.empty, onbeforeunload.front);
  }
  OnBeforeUnloadEventHandler onbeforeunload()() {
    return WindowEventHandlers_onbeforeunload_Get(this._parent);
  }
  void onhashchange(T0)(scope auto ref Optional!(T0) onhashchange) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onhashchange", !onhashchange.empty, onhashchange.front);
  }
  EventHandler onhashchange()() {
    return Object_Getter__EventHandler(this._parent, "onhashchange");
  }
  void onlanguagechange(T0)(scope auto ref Optional!(T0) onlanguagechange) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onlanguagechange", !onlanguagechange.empty, onlanguagechange.front);
  }
  EventHandler onlanguagechange()() {
    return Object_Getter__EventHandler(this._parent, "onlanguagechange");
  }
  void onmessage(T0)(scope auto ref Optional!(T0) onmessage) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onmessage", !onmessage.empty, onmessage.front);
  }
  EventHandler onmessage()() {
    return Object_Getter__EventHandler(this._parent, "onmessage");
  }
  void onmessageerror(T0)(scope auto ref Optional!(T0) onmessageerror) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onmessageerror", !onmessageerror.empty, onmessageerror.front);
  }
  EventHandler onmessageerror()() {
    return Object_Getter__EventHandler(this._parent, "onmessageerror");
  }
  void onoffline(T0)(scope auto ref Optional!(T0) onoffline) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onoffline", !onoffline.empty, onoffline.front);
  }
  EventHandler onoffline()() {
    return Object_Getter__EventHandler(this._parent, "onoffline");
  }
  void ononline(T0)(scope auto ref Optional!(T0) ononline) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "ononline", !ononline.empty, ononline.front);
  }
  EventHandler ononline()() {
    return Object_Getter__EventHandler(this._parent, "ononline");
  }
  void onpagehide(T0)(scope auto ref Optional!(T0) onpagehide) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onpagehide", !onpagehide.empty, onpagehide.front);
  }
  EventHandler onpagehide()() {
    return Object_Getter__EventHandler(this._parent, "onpagehide");
  }
  void onpageshow(T0)(scope auto ref Optional!(T0) onpageshow) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onpageshow", !onpageshow.empty, onpageshow.front);
  }
  EventHandler onpageshow()() {
    return Object_Getter__EventHandler(this._parent, "onpageshow");
  }
  void onpopstate(T0)(scope auto ref Optional!(T0) onpopstate) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onpopstate", !onpopstate.empty, onpopstate.front);
  }
  EventHandler onpopstate()() {
    return Object_Getter__EventHandler(this._parent, "onpopstate");
  }
  void onstorage(T0)(scope auto ref Optional!(T0) onstorage) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onstorage", !onstorage.empty, onstorage.front);
  }
  EventHandler onstorage()() {
    return Object_Getter__EventHandler(this._parent, "onstorage");
  }
  void onunload(T0)(scope auto ref Optional!(T0) onunload) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onunload", !onunload.empty, onunload.front);
  }
  EventHandler onunload()() {
    return Object_Getter__EventHandler(this._parent, "onunload");
  }
}


