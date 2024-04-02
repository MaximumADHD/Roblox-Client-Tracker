export type ControlStateEvent =
	"Idle"
	| "PointerHover"
	| "PointerHoverEnd"
	| "PrimaryPressed"
	| "PrimaryReleased"
	| "PrimaryReleasedHover"
	| "SelectionGained"
	| "SelectionLost"
	| "Enabled"
	| "Disabled"

local ControlStateEventEnum = {
	Idle = "Idle" :: "Idle",
	PointerHover = "PointerHover" :: "PointerHover",
	PointerHoverEnd = "PointerHoverEnd" :: "PointerHoverEnd",
	PrimaryPressed = "PrimaryPressed" :: "PrimaryPressed",
	PrimaryReleased = "PrimaryReleased" :: "PrimaryReleased",
	PrimaryReleasedHover = "PrimaryReleasedHover" :: "PrimaryReleasedHover",
	SelectionGained = "SelectionGained" :: "SelectionGained",
	SelectionLost = "SelectionLost" :: "SelectionLost",
	Enabled = "Enabled" :: "Enabled",
	Disabled = "Disabled" :: "Disabled",
}

return ControlStateEventEnum
