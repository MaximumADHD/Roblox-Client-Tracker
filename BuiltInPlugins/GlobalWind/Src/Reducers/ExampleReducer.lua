--[[
	Reducers are a container for your plugin's state. These consume actions
	that are dispached from components and create a new state for your plugin
	based on the state of the store.

	TODO (rcary): Copy the format of this action to create your own
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

return (Rodux.createReducer({
	DefaultStateObject = "",
}, {
	[ExampleAction.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			DefaultStateObject = action.something,
		})
	end,
}))
