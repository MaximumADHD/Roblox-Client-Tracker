local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

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