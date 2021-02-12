local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ExampleAction = require(Actions.ExampleAction)


return Rodux.createReducer({
	DefaultStateObject = "",
}, {
	[ExampleAction.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			DefaultStateObject = action.something,
		})
	end,
})
