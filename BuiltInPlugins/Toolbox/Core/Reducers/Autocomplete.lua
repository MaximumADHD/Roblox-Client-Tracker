local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
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
