-- Edge-swipe preview. The overlay is hidden while `Pressed`, and held while `Dragging` or `Requested`.
export type InternalDrawerOpenPhase = "Idle" | "Pressed" | "Dragging" | "Requested" | "Settling"

local InternalDrawerOpenPhaseEnum = {
	Idle = "Idle" :: "Idle",
	Pressed = "Pressed" :: "Pressed",
	Dragging = "Dragging" :: "Dragging",
	Requested = "Requested" :: "Requested",
	Settling = "Settling" :: "Settling",
}

return InternalDrawerOpenPhaseEnum
