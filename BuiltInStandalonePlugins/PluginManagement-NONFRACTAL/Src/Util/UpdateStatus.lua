--[[
	Enum for post-update status of a plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Symbol = require(Plugin.Packages.Symbol)

local UpdateStatus = {
	Updating = Symbol.named("Updating"),
	Success = Symbol.named("Success"),
	Error = Symbol.named("Error"),
}

return UpdateStatus