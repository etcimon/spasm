module spasm.bindings.HTMLOutputElement;

import spasm.types;
import spasm.bindings.DOMTokenList;
import spasm.bindings.HTMLElement;
import spasm.bindings.HTMLFormElement;
import spasm.bindings.NodeList;
import spasm.bindings.ValidityState;

@safe:
nothrow:

struct HTMLOutputElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  auto htmlFor()() {
    return DOMTokenList(Object_Getter__Handle(this._parent, "htmlFor"));
  }
  auto form()() {
    return Object_Getter__OptionalHandle(this._parent, "form");
  }
  void name()(string name) {
    Object_Call_string__void(this._parent, "name", name);
  }
  string name()() {
    return Object_Getter__string(this._parent, "name");
  }
  string type()() {
    return Object_Getter__string(this._parent, "type");
  }
  void defaultValue()(string defaultValue) {
    Object_Call_string__void(this._parent, "defaultValue", defaultValue);
  }
  string defaultValue()() {
    return Object_Getter__string(this._parent, "defaultValue");
  }
  void value()(string value) {
    Object_Call_string__void(this._parent, "value", value);
  }
  string value()() {
    return Object_Getter__string(this._parent, "value");
  }
  bool willValidate()() {
    return Object_Getter__bool(this._parent, "willValidate");
  }
  auto validity()() {
    return ValidityState(Object_Getter__Handle(this._parent, "validity"));
  }
  string validationMessage()() {
    return Object_Getter__string(this._parent, "validationMessage");
  }
  bool checkValidity()() {
    return Object_Getter__bool(this._parent, "checkValidity");
  }
  bool reportValidity()() {
    return Object_Getter__bool(this._parent, "reportValidity");
  }
  void setCustomValidity()(string error) {
    Object_Call_string__void(this._parent, "setCustomValidity", error);
  }
  auto labels()() {
    return NodeList(Object_Getter__Handle(this._parent, "labels"));
  }
}


