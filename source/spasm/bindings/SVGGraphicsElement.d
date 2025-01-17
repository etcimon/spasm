module spasm.bindings.SVGGraphicsElement;

import spasm.types;
import spasm.bindings.SVGAnimatedTransformList;
import spasm.bindings.SVGElement;
import spasm.bindings.SVGMatrix;
import spasm.bindings.SVGRect;
import spasm.bindings.SVGStringList;
import spasm.bindings.SVGTests;

@safe:
nothrow:

struct SVGBoundingBoxOptions {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return SVGBoundingBoxOptions(spasm_add__object());
  }
  void fill()(bool fill) {
    Object_Call_bool__void(this.handle, "fill", fill);
  }
  bool fill()() {
    return Object_Getter__bool(this.handle, "fill");
  }
  void stroke()(bool stroke) {
    Object_Call_bool__void(this.handle, "stroke", stroke);
  }
  bool stroke()() {
    return Object_Getter__bool(this.handle, "stroke");
  }
  void markers()(bool markers) {
    Object_Call_bool__void(this.handle, "markers", markers);
  }
  bool markers()() {
    return Object_Getter__bool(this.handle, "markers");
  }
  void clipped()(bool clipped) {
    Object_Call_bool__void(this.handle, "clipped", clipped);
  }
  bool clipped()() {
    return Object_Getter__bool(this.handle, "clipped");
  }
}
struct SVGGraphicsElement {
  nothrow:
  spasm.bindings.SVGElement.SVGElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .SVGElement(h);
  }
  auto transform()() {
    return SVGAnimatedTransformList(Object_Getter__Handle(this._parent, "transform"));
  }
  auto nearestViewportElement()() {
    return Object_Getter__OptionalHandle(this._parent, "nearestViewportElement");
  }
  auto farthestViewportElement()() {
    return Object_Getter__OptionalHandle(this._parent, "farthestViewportElement");
  }
  auto getBBox()(scope ref SVGBoundingBoxOptions aOptions) {
    return SVGRect(Object_Call_Handle__Handle(this._parent, "getBBox", aOptions.handle));
  }
  auto getBBox()() {
    return SVGRect(Object_Getter__Handle(this._parent, "getBBox"));
  }
  auto getCTM()() {
    return Object_Getter__OptionalHandle(this._parent, "getCTM");
  }
  auto getScreenCTM()() {
    return Object_Getter__OptionalHandle(this._parent, "getScreenCTM");
  }
  auto getTransformToElement()(scope ref SVGGraphicsElement element) {
    return SVGMatrix(Object_Call_Handle__Handle(this._parent, "getTransformToElement", element._parent));
  }
  auto requiredFeatures()() {
    return SVGStringList(Object_Getter__Handle(this._parent, "requiredFeatures"));
  }
  auto requiredExtensions()() {
    return SVGStringList(Object_Getter__Handle(this._parent, "requiredExtensions"));
  }
  auto systemLanguage()() {
    return SVGStringList(Object_Getter__Handle(this._parent, "systemLanguage"));
  }
  bool hasExtension()(string extension) {
    return Object_Call_string__bool(this._parent, "hasExtension", extension);
  }
}


