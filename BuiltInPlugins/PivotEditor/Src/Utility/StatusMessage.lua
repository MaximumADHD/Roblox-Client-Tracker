local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages
local Framework = Packages.Framework

local strict = require(Framework.Util.strict)

local StatusMessage = strict({
	None = "",
	NoSelection = "No objects selected",
	ChooseGeometry = "Click a hotspot to select it as the pivot",
	ChooseSurface = "Click in the world to set the pivot to the clicked point",
	ChoosePart = "Click a part to center the pivot on it",
	TestMessage = "TEST (You should not see this)",
}, "StatusMessage")

return StatusMessage