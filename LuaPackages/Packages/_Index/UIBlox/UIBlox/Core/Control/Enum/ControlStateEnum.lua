export type ControlState = "Initialize" | "Default" | "Pressed" | "Hover" | "Selected" | "SelectedPressed" | "Disabled"

local ControlStateEnum = {
	Initialize = "Initialize" :: "Initialize",
	Default = "Default" :: "Default",
	Pressed = "Pressed" :: "Pressed",
	Hover = "Hover" :: "Hover",
	HoverPressed = "HoverPressed" :: "HoverPressed",
	Selected = "Selected" :: "Selected",
	SelectedPressed = "SelectedPressed" :: "SelectedPressed",
	Disabled = "Disabled" :: "Disabled",
}

return ControlStateEnum
