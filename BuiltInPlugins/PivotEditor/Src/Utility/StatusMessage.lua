local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages
local Framework = Packages.Framework

local getFFlagPivotEditorPreventDraggingInvalidTarget = require(Plugin.Src.Flags.getFFlagPivotEditorPreventDraggingInvalidTarget)

local strict = require(Framework).Util.strict

local StatusMessage = strict({
	None = "",
	NoSelection = "NoSelection",
	MultipleSelection = "MultipleSelection",
	InvalidTarget = if getFFlagPivotEditorPreventDraggingInvalidTarget() then "InvalidTarget" else nil,
}, "StatusMessage")

return StatusMessage