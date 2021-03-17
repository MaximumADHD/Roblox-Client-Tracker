-- TODO: RIDE-3505 Add icons to TestHarnessPlugin
local Icons = {}

Icons.Placeholder = "rbxasset://textures/whiteCircle.png"

Icons.Controller = {
	RunAll = "rbxasset://textures/AnimationEditor/button_control_end.png",
	Run = "rbxasset://textures/AnimationEditor/button_control_play.png",
	Stop = "rbxasset://textures/whiteCircle.png",
}

Icons.Status = {
	Failed = "rbxasset://textures/whiteCircle.png",
	Success = "rbxasset://textures/StudioSharedUI/statusSuccess.png",
	Warning = "rbxasset://textures/whiteCircle.png",
	Pending = "rbxasset://textures/whiteCircle.png",
	Test_Error = "rbxasset://textures/ui/ErrorIconSmall.png"
}

Icons.Toolbar = {
	Filter = {
		Filled = "rbxasset://textures/DevConsole/Filter-filled.png",
		Empty = "rbxasset://textures/DevConsole/Filter-stroke.png",
	},
	Collapse = "rbxasset://textures/whiteCircle.png",
	Expand = "rbxasset://textures/whiteCircle.png",
	Settings = "rbxasset://textures/whiteCircle.png"
}

Icons.Dropdown = {
	Open = "rbxasset://textures/whiteCircle.png",
	Closed = "rbxasset://textures/whiteCircle.png",
}

return Icons
