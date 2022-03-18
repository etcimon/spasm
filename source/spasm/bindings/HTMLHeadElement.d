module spasm.bindings.HTMLHeadElement;

import spasm.types;
import spasm.bindings.HTMLElement;

@safe:
nothrow:

struct HTMLHeadElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
}

