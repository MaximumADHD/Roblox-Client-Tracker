-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/events.d.ts
local exports = {}

type Event = any

export type EventType =
	"copy"
	| "cut"
	| "paste"
	| "compositionEnd"
	| "compositionStart"
	| "compositionUpdate"
	| "keyDown"
	| "keyPress"
	| "keyUp"
	| "focus"
	| "blur"
	| "focusIn"
	| "focusOut"
	| "change"
	| "input"
	| "invalid"
	| "submit"
	| "reset"
	| "click"
	| "contextMenu"
	| "dblClick"
	| "drag"
	| "dragEnd"
	| "dragEnter"
	| "dragExit"
	| "dragLeave"
	| "dragOver"
	| "dragStart"
	| "drop"
	| "mouseDown"
	| "mouseEnter"
	| "mouseLeave"
	| "mouseMove"
	| "mouseOut"
	| "mouseOver"
	| "mouseUp"
	| "popState"
	| "select"
	| "touchCancel"
	| "touchEnd"
	| "touchMove"
	| "touchStart"
	| "resize"
	| "scroll"
	| "wheel"
	| "abort"
	| "canPlay"
	| "canPlayThrough"
	| "durationChange"
	| "emptied"
	| "encrypted"
	| "ended"
	| "loadedData"
	| "loadedMetadata"
	| "loadStart"
	| "pause"
	| "play"
	| "playing"
	| "progress"
	| "rateChange"
	| "seeked"
	| "seeking"
	| "stalled"
	| "suspend"
	| "timeUpdate"
	| "volumeChange"
	| "waiting"
	| "load"
	| "error"
	| "animationStart"
	| "animationEnd"
	| "animationIteration"
	| "transitionCancel"
	| "transitionEnd"
	| "transitionRun"
	| "transitionStart"
	| "doubleClick"
	| "pointerOver"
	| "pointerEnter"
	| "pointerDown"
	| "pointerMove"
	| "pointerUp"
	| "pointerCancel"
	| "pointerOut"
	| "pointerLeave"
	| "gotPointerCapture"
	| "lostPointerCapture"

export type FireFunction = (element: Instance, event: Event) -> boolean
export type FireObject = {
	[EventType]: (element: Instance, options: { [string]: any }?) -> boolean,
}
export type CreateFunction = (
	eventName: string,
	node: Instance,
	init: { [string]: any }?,
	options: { EventType: string?, defaultInit: { [string]: any }? }?
) -> Event

export type CreateObject = {
	[EventType]: (element: Instance, options: { [string]: any }?) -> Event,
}

export type createEvent = CreateObject & CreateFunction
export type fireEvent = FireFunction & FireObject

return exports
