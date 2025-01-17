module spasm.bindings.HTMLMeterElement;

import spasm.types;
import spasm.bindings.HTMLElement;
import spasm.bindings.NodeList;

@safe:
nothrow:

struct HTMLMeterElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void value()(double value) {
    Object_Call_double__void(this._parent, "value", value);
  }
  double value()() {
    return Object_Getter__double(this._parent, "value");
  }
  void min()(double min) {
    Object_Call_double__void(this._parent, "min", min);
  }
  double min()() {
    return Object_Getter__double(this._parent, "min");
  }
  void max()(double max) {
    Object_Call_double__void(this._parent, "max", max);
  }
  double max()() {
    return Object_Getter__double(this._parent, "max");
  }
  void low()(double low) {
    Object_Call_double__void(this._parent, "low", low);
  }
  double low()() {
    return Object_Getter__double(this._parent, "low");
  }
  void high()(double high) {
    Object_Call_double__void(this._parent, "high", high);
  }
  double high()() {
    return Object_Getter__double(this._parent, "high");
  }
  void optimum()(double optimum) {
    Object_Call_double__void(this._parent, "optimum", optimum);
  }
  double optimum()() {
    return Object_Getter__double(this._parent, "optimum");
  }
  auto labels()() {
    return NodeList(Object_Getter__Handle(this._parent, "labels"));
  }
}


