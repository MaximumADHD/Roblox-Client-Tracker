--[[
	The main RoactRodux reducer for the plugin.
	New Plugin Setup: If your plugin is stateful, create actions and reducers to store data
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExampleReducer = require(script.Parent.ExampleReducer)

return Rodux.combineReducers({
	ExampleReducer = ExampleReducer,
})
