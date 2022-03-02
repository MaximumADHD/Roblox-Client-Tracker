local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetMaterial = require(Actions.SetMaterial)
local SetSearch = require(Actions.SetSearch)

export type State = {
    Material : _Types.Material?,
    Search : string,
}

local initialState : State = {
    Search = "",
}

return (Rodux.createReducer(initialState, {
	[SetMaterial.name] = function(state : State, action : SetMaterial.Payload)
		return Cryo.Dictionary.join(state, {
			Material = action.Material,
		})
	end,

	[SetSearch.name] = function(state : State, action : SetSearch.Payload)
		return Cryo.Dictionary.join(state, {
			Search = action.Search,
		})
	end,
}))
