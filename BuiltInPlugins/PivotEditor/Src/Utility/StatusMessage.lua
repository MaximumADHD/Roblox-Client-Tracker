local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages
local Framework = Packages.Framework

local strict = require(Framework.Util.strict)

local StatusMessage = strict({
	None = "",
	NoSelection = "No objects selected",
	TestMessage = "TEST (You should not see this)",
}, "StatusMessage")

return StatusMessage