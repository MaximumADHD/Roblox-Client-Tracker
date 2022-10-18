local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages
local Framework = Packages.Framework

local strict = require(Framework).Util.strict

local StatusMessage = strict({
	None = "",
	NoSelection = "NoSelection",
	MultipleSelection = "MultipleSelection",
	InvalidTarget = "InvalidTarget",
}, "StatusMessage")

return StatusMessage
