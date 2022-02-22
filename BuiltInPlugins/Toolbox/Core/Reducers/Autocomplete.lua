local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local SetAutocompleteResults = require(Plugin.Core.Actions.SetAutocompleteResults)

return Rodux.createReducer({
	autocompleteResults = {},
}, {
	[SetAutocompleteResults.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			autocompleteResults = action.autocompleteResults,
		})
	end,
})
