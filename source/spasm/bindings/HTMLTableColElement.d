module spasm.bindings.HTMLTableColElement;

import spasm.types;
import spasm.bindings.HTMLElement;

@safe:
nothrow:

struct HTMLTableColElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void span()(uint span) {
    Object_Call_uint__void(this._parent, "span", span);
  }
  uint span()() {
    return Object_Getter__uint(this._parent, "span");
  }
  void align_()(string align_) {
    Object_Call_string__void(this._parent, "align", align_);
  }
  string align_()() {
    return Object_Getter__string(this._parent, "align");
  }
  void ch()(string ch) {
    Object_Call_string__void(this._parent, "ch", ch);
  }
  string ch()() {
    return Object_Getter__string(this._parent, "ch");
  }
  void chOff()(string chOff) {
    Object_Call_string__void(this._parent, "chOff", chOff);
  }
  string chOff()() {
    return Object_Getter__string(this._parent, "chOff");
  }
  void vAlign()(string vAlign) {
    Object_Call_string__void(this._parent, "vAlign", vAlign);
  }
  string vAlign()() {
    return Object_Getter__string(this._parent, "vAlign");
  }
  void width()(string width) {
    Object_Call_string__void(this._parent, "width", width);
  }
  string width()() {
    return Object_Getter__string(this._parent, "width");
  }
}


