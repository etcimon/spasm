module spasm.bindings.SpeechRecognitionAlternative;

import spasm.types;
@safe:
nothrow:

struct SpeechRecognitionAlternative {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  string transcript()() {
    return Object_Getter__string(this.handle, "transcript");
  }
  float confidence()() {
    return Object_Getter__float(this.handle, "confidence");
  }
}


