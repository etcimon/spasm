module spasm.bindings.Animation;

import spasm.types;
import spasm.bindings.AnimationEffect;
import spasm.bindings.AnimationTimeline;
import spasm.bindings.EventHandler;
import spasm.bindings.EventTarget;

@safe:
nothrow:

struct Animation {
  nothrow:
  spasm.bindings.EventTarget.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
  }
  void id()(string id) {
    Object_Call_string__void(this._parent, "id", id);
  }
  string id()() {
    return Object_Getter__string(this._parent, "id");
  }
  void effect(T0)(scope auto ref Optional!(T0) effect) if (isTOrPointer!(T0, AnimationEffect)) {
    Animation_effect_Set(this._parent, !effect.empty, effect.front.handle);
  }
  auto effect()() {
    return Object_Getter__OptionalHandle(this._parent, "effect");
  }
  void timeline(T0)(scope auto ref Optional!(T0) timeline) if (isTOrPointer!(T0, AnimationTimeline)) {
    Animation_timeline_Set(this._parent, !timeline.empty, timeline.front.handle);
  }
  auto timeline()() {
    return Object_Getter__OptionalHandle(this._parent, "timeline");
  }
  void startTime(T0)(scope auto ref Optional!(T0) startTime) if (isTOrPointer!(T0, double)) {
    Animation_startTime_Set(this._parent, !startTime.empty, startTime.front);
  }
  Optional!(double) startTime()() {
    return Object_Getter__OptionalDouble(this._parent, "startTime");
  }
  void currentTime(T0)(scope auto ref Optional!(T0) currentTime) if (isTOrPointer!(T0, double)) {
    Animation_currentTime_Set(this._parent, !currentTime.empty, currentTime.front);
  }
  Optional!(double) currentTime()() {
    return Object_Getter__OptionalDouble(this._parent, "currentTime");
  }
  void playbackRate()(double playbackRate) {
    Object_Call_double__void(this._parent, "playbackRate", playbackRate);
  }
  double playbackRate()() {
    return Object_Getter__double(this._parent, "playbackRate");
  }
  AnimationPlayState playState()() {
    return Animation_playState_Get(this._parent);
  }
  bool pending()() {
    return Object_Getter__bool(this._parent, "pending");
  }
  auto ready()() {
    return Promise!(Animation)(Object_Getter__Handle(this._parent, "ready"));
  }
  auto finished()() {
    return Promise!(Animation)(Object_Getter__Handle(this._parent, "finished"));
  }
  void onfinish(T0)(scope auto ref Optional!(T0) onfinish) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "onfinish", !onfinish.empty, onfinish.front);
  }
  EventHandler onfinish()() {
    return Object_Getter__EventHandler(this._parent, "onfinish");
  }
  void oncancel(T0)(scope auto ref Optional!(T0) oncancel) if (isTOrPointer!(T0, EventHandler)) {
    Object_Call_EventHandler__void(this._parent, "oncancel", !oncancel.empty, oncancel.front);
  }
  EventHandler oncancel()() {
    return Object_Getter__EventHandler(this._parent, "oncancel");
  }
  void cancel()() {
    Object_Call__void(this._parent, "cancel");
  }
  void finish()() {
    Object_Call__void(this._parent, "finish");
  }
  void play()() {
    Object_Call__void(this._parent, "play");
  }
  void pause()() {
    Object_Call__void(this._parent, "pause");
  }
  void updatePlaybackRate()(double playbackRate) {
    Object_Call_double__void(this._parent, "updatePlaybackRate", playbackRate);
  }
  void reverse()() {
    Object_Call__void(this._parent, "reverse");
  }
  bool isRunningOnCompositor()() {
    return Object_Getter__bool(this._parent, "isRunningOnCompositor");
  }
}
enum AnimationPlayState {
  idle,
  running,
  paused,
  finished
}


extern (C) void Animation_effect_Set(Handle, bool, Handle);
extern (C) void Animation_timeline_Set(Handle, bool, Handle);
extern (C) void Animation_startTime_Set(Handle, bool, double);
extern (C) void Animation_currentTime_Set(Handle, bool, double);
extern (C) AnimationPlayState Animation_playState_Get(Handle);