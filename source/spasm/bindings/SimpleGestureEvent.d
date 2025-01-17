module spasm.bindings.SimpleGestureEvent;

import spasm.types;
import spasm.bindings.EventTarget;
import spasm.bindings.MouseEvent;
import spasm.bindings.Window;

@safe:
nothrow:

struct SimpleGestureEvent {
  nothrow:
  spasm.bindings.MouseEvent.MouseEvent _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .MouseEvent(h);
  }
  enum uint DIRECTION_UP = 1;
  enum uint DIRECTION_DOWN = 2;
  enum uint DIRECTION_LEFT = 4;
  enum uint DIRECTION_RIGHT = 8;
  enum uint ROTATION_COUNTERCLOCKWISE = 1;
  enum uint ROTATION_CLOCKWISE = 2;
  void allowedDirections()(uint allowedDirections) {
    Object_Call_uint__void(this._parent, "allowedDirections", allowedDirections);
  }
  uint allowedDirections()() {
    return Object_Getter__uint(this._parent, "allowedDirections");
  }
  uint direction()() {
    return Object_Getter__uint(this._parent, "direction");
  }
  double delta()() {
    return Object_Getter__double(this._parent, "delta");
  }
  uint clickCount()() {
    return Object_Getter__uint(this._parent, "clickCount");
  }
  void initSimpleGestureEvent(T3, T14)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */, scope auto ref Optional!(T14) relatedTargetArg /* = no!(EventTarget) */, uint allowedDirectionsArg /* = 0 */, uint directionArg /* = 0 */, double deltaArg /* = 0 */, uint clickCount /* = 0 */) if (isTOrPointer!(T3, Window) && isTOrPointer!(T14, EventTarget)) {
    SimpleGestureEvent_initSimpleGestureEvent(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, !relatedTargetArg.empty, relatedTargetArg.front.handle, allowedDirectionsArg, directionArg, deltaArg, clickCount);
  }
  void initSimpleGestureEvent(T3, T14)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */, scope auto ref Optional!(T14) relatedTargetArg /* = no!(EventTarget) */, uint allowedDirectionsArg /* = 0 */, uint directionArg /* = 0 */, double deltaArg /* = 0 */) if (isTOrPointer!(T3, Window) && isTOrPointer!(T14, EventTarget)) {
    SimpleGestureEvent_initSimpleGestureEvent_0(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, !relatedTargetArg.empty, relatedTargetArg.front.handle, allowedDirectionsArg, directionArg, deltaArg);
  }
  void initSimpleGestureEvent(T3, T14)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */, scope auto ref Optional!(T14) relatedTargetArg /* = no!(EventTarget) */, uint allowedDirectionsArg /* = 0 */, uint directionArg /* = 0 */) if (isTOrPointer!(T3, Window) && isTOrPointer!(T14, EventTarget)) {
    SimpleGestureEvent_initSimpleGestureEvent_1(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, !relatedTargetArg.empty, relatedTargetArg.front.handle, allowedDirectionsArg, directionArg);
  }
  void initSimpleGestureEvent(T3, T14)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */, scope auto ref Optional!(T14) relatedTargetArg /* = no!(EventTarget) */, uint allowedDirectionsArg /* = 0 */) if (isTOrPointer!(T3, Window) && isTOrPointer!(T14, EventTarget)) {
    SimpleGestureEvent_initSimpleGestureEvent_2(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, !relatedTargetArg.empty, relatedTargetArg.front.handle, allowedDirectionsArg);
  }
  void initSimpleGestureEvent(T3, T14)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */, scope auto ref Optional!(T14) relatedTargetArg /* = no!(EventTarget) */) if (isTOrPointer!(T3, Window) && isTOrPointer!(T14, EventTarget)) {
    SimpleGestureEvent_initSimpleGestureEvent_3(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, !relatedTargetArg.empty, relatedTargetArg.front.handle);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */, short buttonArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_4(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */, bool metaKeyArg /* = false */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_5(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */, bool shiftKeyArg /* = false */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_6(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */, bool altKeyArg /* = false */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_7(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */, bool ctrlKeyArg /* = false */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_8(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */, int clientYArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_9(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg, clientYArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */, int clientXArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_10(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg, clientXArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */, int screenYArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_11(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg, screenYArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */, int screenXArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_12(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg, screenXArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */, int detailArg /* = 0 */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_13(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent, detailArg);
  }
  void initSimpleGestureEvent(T3)(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */, scope auto ref Optional!(T3) viewArg /* = no!(Window) */) if (isTOrPointer!(T3, Window)) {
    SimpleGestureEvent_initSimpleGestureEvent_14(this._parent, typeArg, canBubbleArg, cancelableArg, !viewArg.empty, viewArg.front._parent);
  }
  void initSimpleGestureEvent()(string typeArg, bool canBubbleArg /* = false */, bool cancelableArg /* = false */) {
    SimpleGestureEvent_initSimpleGestureEvent_15(this._parent, typeArg, canBubbleArg, cancelableArg);
  }
  void initSimpleGestureEvent()(string typeArg, bool canBubbleArg /* = false */) {
    SimpleGestureEvent_initSimpleGestureEvent_16(this._parent, typeArg, canBubbleArg);
  }
  void initSimpleGestureEvent()(string typeArg) {
    Object_Call_string__void(this._parent, "initSimpleGestureEvent", typeArg);
  }
}


extern (C) void SimpleGestureEvent_initSimpleGestureEvent(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short, bool, Handle, uint, uint, double, uint);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_0(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short, bool, Handle, uint, uint, double);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_1(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short, bool, Handle, uint, uint);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_2(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short, bool, Handle, uint);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_3(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short, bool, Handle);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_4(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool, short);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_5(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool, bool);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_6(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool, bool);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_7(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool, bool);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_8(Handle, string, bool, bool, bool, Handle, int, int, int, int, int, bool);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_9(Handle, string, bool, bool, bool, Handle, int, int, int, int, int);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_10(Handle, string, bool, bool, bool, Handle, int, int, int, int);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_11(Handle, string, bool, bool, bool, Handle, int, int, int);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_12(Handle, string, bool, bool, bool, Handle, int, int);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_13(Handle, string, bool, bool, bool, Handle, int);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_14(Handle, string, bool, bool, bool, Handle);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_15(Handle, string, bool, bool);
extern (C) void SimpleGestureEvent_initSimpleGestureEvent_16(Handle, string, bool);