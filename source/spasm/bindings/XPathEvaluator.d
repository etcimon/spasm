module spasm.bindings.XPathEvaluator;

import spasm.types;
import spasm.bindings.Node;
import spasm.bindings.XPathExpression;
import spasm.bindings.XPathNSResolver;
import spasm.bindings.XPathResult;

@safe:
nothrow:

struct XPathEvaluator {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto createExpression(T1)(string expression, scope auto ref Optional!(T1) resolver /* = no!(XPathNSResolver) */) if (isTOrPointer!(T1, XPathNSResolver)) {
    return XPathExpression(XPathEvaluator_createExpression(this.handle, expression, !resolver.empty, resolver.front.handle));
  }
  auto createExpression()(string expression) {
    return XPathExpression(Object_Call_string__Handle(this.handle, "createExpression", expression));
  }
  auto createNSResolver()(scope ref Node nodeResolver) {
    return Node(Object_Call_Handle__Handle(this.handle, "createNSResolver", nodeResolver._parent));
  }
  auto evaluate(T2, T4)(string expression, scope ref Node contextNode, scope auto ref Optional!(T2) resolver /* = no!(XPathNSResolver) */, ushort type /* = 0 */, scope auto ref Optional!(T4) result /* = no!(JsObject) */) if (isTOrPointer!(T2, XPathNSResolver) && isTOrPointer!(T4, JsObject)) {
    return XPathResult(XPathEvaluator_evaluate(this.handle, expression, contextNode._parent, !resolver.empty, resolver.front.handle, type, !result.empty, result.front.handle));
  }
  auto evaluate(T2)(string expression, scope ref Node contextNode, scope auto ref Optional!(T2) resolver /* = no!(XPathNSResolver) */, ushort type /* = 0 */) if (isTOrPointer!(T2, XPathNSResolver)) {
    return XPathResult(XPathEvaluator_evaluate_0(this.handle, expression, contextNode._parent, !resolver.empty, resolver.front.handle, type));
  }
  auto evaluate(T2)(string expression, scope ref Node contextNode, scope auto ref Optional!(T2) resolver /* = no!(XPathNSResolver) */) if (isTOrPointer!(T2, XPathNSResolver)) {
    return XPathResult(XPathEvaluator_evaluate_1(this.handle, expression, contextNode._parent, !resolver.empty, resolver.front.handle));
  }
  auto evaluate()(string expression, scope ref Node contextNode) {
    return XPathResult(XPathEvaluator_evaluate_2(this.handle, expression, contextNode._parent));
  }
}


extern (C) Handle XPathEvaluator_createExpression(Handle, string, bool, Handle);
extern (C) Handle XPathEvaluator_evaluate(Handle, string, Handle, bool, Handle, ushort, bool, Handle);
extern (C) Handle XPathEvaluator_evaluate_0(Handle, string, Handle, bool, Handle, ushort);
extern (C) Handle XPathEvaluator_evaluate_1(Handle, string, Handle, bool, Handle);
extern (C) Handle XPathEvaluator_evaluate_2(Handle, string, Handle);