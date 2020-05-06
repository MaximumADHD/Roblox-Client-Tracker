--[[
	The main RoactRodux reducer for the plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Status = require(Plugin.Src.Reducers.Status)

return Rodux.combineReducers({
	Status = Status
})
