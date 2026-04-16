export type OnChangeCallbackReason = "Drag" | "Activate" | "Keyboard" | "FocusLost"

local OnChangeCallbackReasonEnum = {
	Drag = "Drag" :: "Drag",
	Activate = "Activate" :: "Activate",
	Keyboard = "Keyboard" :: "Keyboard",
	FocusLost = "FocusLost" :: "FocusLost",
}

return OnChangeCallbackReasonEnum
