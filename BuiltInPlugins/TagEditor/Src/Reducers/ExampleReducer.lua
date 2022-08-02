--[[
	Reducers are a container for your plugin's state. These consume actions
	that are dispached from components and create a new state for your plugin
	based on the state of the store. Export a type that includes all the values
	that are in your reducer, denote optional values with a ? after the type.

	New Plugin Setup: Copy the format of this action to create your own
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)

export type State = {
	DefaultStateObject: string,
}

return (Rodux.createReducer({
	DefaultStateObject = "",
}, {
	[ExampleAction.name] = function(state: State, action: ExampleAction.Payload): State
		return Cryo.Dictionary.join(state, {
			DefaultStateObject = action.something,
		})
	end,
}))
