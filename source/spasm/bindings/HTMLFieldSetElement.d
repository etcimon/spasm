module spasm.bindings.HTMLFieldSetElement;

import spasm.types;
import spasm.bindings.HTMLCollection;
import spasm.bindings.HTMLElement;
import spasm.bindings.HTMLFormElement;
import spasm.bindings.ValidityState;

@safe:
nothrow:

struct HTMLFieldSetElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void disabled()(bool disabled) {
    Object_Call_bool__void(this._parent, "disabled", disabled);
  }
  bool disabled()() {
    return Object_Getter__bool(this._parent, "disabled");
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
  auto elements()() {
    return HTMLCollection(Object_Getter__Handle(this._parent, "elements"));
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
}


