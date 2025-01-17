module spasm.bindings.HTMLEmbedElement;

import spasm.types;
import spasm.bindings.Document;
import spasm.bindings.FrameLoader;
import spasm.bindings.HTMLElement;
import spasm.bindings.HTMLIFrameElement;
import spasm.bindings.HTMLImageElement;
import spasm.bindings.HTMLObjectElement;
import spasm.bindings.MozFrameLoaderOwner;

@safe:
nothrow:

struct HTMLEmbedElement {
  nothrow:
  spasm.bindings.HTMLElement.HTMLElement _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .HTMLElement(h);
  }
  void src()(string src) {
    Object_Call_string__void(this._parent, "src", src);
  }
  string src()() {
    return Object_Getter__string(this._parent, "src");
  }
  void type()(string type) {
    Object_Call_string__void(this._parent, "type", type);
  }
  string type()() {
    return Object_Getter__string(this._parent, "type");
  }
  void width()(string width) {
    Object_Call_string__void(this._parent, "width", width);
  }
  string width()() {
    return Object_Getter__string(this._parent, "width");
  }
  void height()(string height) {
    Object_Call_string__void(this._parent, "height", height);
  }
  string height()() {
    return Object_Getter__string(this._parent, "height");
  }
  void align_()(string align_) {
    Object_Call_string__void(this._parent, "align", align_);
  }
  string align_()() {
    return Object_Getter__string(this._parent, "align");
  }
  void name()(string name) {
    Object_Call_string__void(this._parent, "name", name);
  }
  string name()() {
    return Object_Getter__string(this._parent, "name");
  }
  auto getSVGDocument()() {
    return Object_Getter__OptionalHandle(this._parent, "getSVGDocument");
  }
  enum int UNKNOWN_REQUEST = -1;
  enum int CURRENT_REQUEST = 0;
  enum int PENDING_REQUEST = 1;
  void loadingEnabled()(bool loadingEnabled) {
    Object_Call_bool__void(this._parent, "loadingEnabled", loadingEnabled);
  }
  bool loadingEnabled()() {
    return Object_Getter__bool(this._parent, "loadingEnabled");
  }
  short imageBlockingStatus()() {
    return MozImageLoadingContent_imageBlockingStatus_Get(this._parent);
  }
  void addObserver()(scope ref imgINotificationObserver aObserver) {
    Object_Call_Handle__void(this._parent, "addObserver", aObserver.handle);
  }
  void removeObserver()(scope ref imgINotificationObserver aObserver) {
    Object_Call_Handle__void(this._parent, "removeObserver", aObserver.handle);
  }
  auto getRequest()(int aRequestType) {
    return Object_Call_int__OptionalHandle(this._parent, "getRequest", aRequestType);
  }
  int getRequestType()(scope ref imgIRequest aRequest) {
    return MozImageLoadingContent_getRequestType(this._parent, aRequest.handle);
  }
  auto currentURI()() {
    return Object_Getter__OptionalHandle(this._parent, "currentURI");
  }
  auto currentRequestFinalURI()() {
    return Object_Getter__OptionalHandle(this._parent, "currentRequestFinalURI");
  }
  void forceReload()(bool aNotify /* = true */) {
    Object_Call_bool__void(this._parent, "forceReload", aNotify);
  }
  void forceReload()() {
    Object_Call__void(this._parent, "forceReload");
  }
  void forceImageState()(bool aForce, uint aState) {
    MozImageLoadingContent_forceImageState(this._parent, aForce, aState);
  }
  auto frameLoader()() {
    return Object_Getter__OptionalHandle(this._parent, "frameLoader");
  }
  void presetOpenerWindow(T0)(scope auto ref Optional!(T0) window) if (isTOrPointer!(T0, WindowProxy)) {
    MozFrameLoaderOwner_presetOpenerWindow(this._parent, !window.empty, window.front.handle);
  }
  void swapFrameLoaders()(scope ref XULFrameElement aOtherLoaderOwner) {
    Object_Call_Handle__void(this._parent, "swapFrameLoaders", aOtherLoaderOwner.handle);
  }
  void swapFrameLoaders()(scope ref HTMLIFrameElement aOtherLoaderOwner) {
    Object_Call_Handle__void(this._parent, "swapFrameLoaders", aOtherLoaderOwner._parent);
  }
  enum uint TYPE_LOADING = 0;
  enum uint TYPE_IMAGE = 1;
  enum uint TYPE_PLUGIN = 2;
  enum uint TYPE_FAKE_PLUGIN = 3;
  enum uint TYPE_DOCUMENT = 4;
  enum uint TYPE_NULL = 5;
  enum uint PLUGIN_UNSUPPORTED = 0;
  enum uint PLUGIN_ALTERNATE = 1;
  enum uint PLUGIN_DISABLED = 2;
  enum uint PLUGIN_BLOCKLISTED = 3;
  enum uint PLUGIN_OUTDATED = 4;
  enum uint PLUGIN_CRASHED = 5;
  enum uint PLUGIN_SUPPRESSED = 6;
  enum uint PLUGIN_USER_DISABLED = 7;
  enum uint PLUGIN_CLICK_TO_PLAY = 8;
  enum uint PLUGIN_VULNERABLE_UPDATABLE = 9;
  enum uint PLUGIN_VULNERABLE_NO_UPDATE = 10;
  string actualType()() {
    return Object_Getter__string(this._parent, "actualType");
  }
  uint displayedType()() {
    return Object_Getter__uint(this._parent, "displayedType");
  }
  uint getContentTypeForMIMEType()(string aMimeType) {
    return MozObjectLoadingContent_getContentTypeForMIMEType(this._parent, aMimeType);
  }
  auto getPluginAttributes()() {
    return Sequence!(MozPluginParameter)(Object_Getter__Handle(this._parent, "getPluginAttributes"));
  }
  auto getPluginParameters()() {
    return Sequence!(MozPluginParameter)(Object_Getter__Handle(this._parent, "getPluginParameters"));
  }
  void playPlugin()() {
    Object_Call__void(this._parent, "playPlugin");
  }
  void reload()(bool aClearActivation) {
    Object_Call_bool__void(this._parent, "reload", aClearActivation);
  }
  bool activated()() {
    return Object_Getter__bool(this._parent, "activated");
  }
  auto srcURI()() {
    return Object_Getter__OptionalHandle(this._parent, "srcURI");
  }
  uint defaultFallbackType()() {
    return Object_Getter__uint(this._parent, "defaultFallbackType");
  }
  uint pluginFallbackType()() {
    return Object_Getter__uint(this._parent, "pluginFallbackType");
  }
  bool hasRunningPlugin()() {
    return Object_Getter__bool(this._parent, "hasRunningPlugin");
  }
  void skipFakePlugins()() {
    Object_Call__void(this._parent, "skipFakePlugins");
  }
  uint runID()() {
    return Object_Getter__uint(this._parent, "runID");
  }
}


