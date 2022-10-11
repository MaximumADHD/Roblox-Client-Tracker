--[[
	The main RoactRodux reducer for the plugin.
]]

local main = script.Parent.Parent.Parent
local Rodux = require(main.Packages.Rodux)

local TargetReducer = require(script.Parent.TargetReducer)
local RoactInspectorReducer = require(script.Parent.RoactInspectorReducer)

return Rodux.combineReducers({
	Targets = TargetReducer,
	RoactInspector = RoactInspectorReducer,
})
