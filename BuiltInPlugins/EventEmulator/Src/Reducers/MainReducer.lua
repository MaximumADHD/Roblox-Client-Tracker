--[[
	The main RoactRodux reducer for the plugin.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Status = require(Plugin.Src.Reducers.Status)
local History = require(Plugin.Src.Reducers.History)

return Rodux.combineReducers({
	Status = Status,
	History = History,
})
