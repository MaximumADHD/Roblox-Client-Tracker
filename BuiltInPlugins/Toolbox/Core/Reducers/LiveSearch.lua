local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Rodux = require(Libs.Rodux)
local Cryo = require(Libs.Cryo)

local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
local SetLiveSearching = require(Plugin.Core.Actions.SetLiveSearching)

local LiveSearch = Rodux.createReducer({
	searchTerm = "",
	isSearching = false,
	results = {},
}, {
	[SetLiveSearch.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			results = action.results,
			searchTerm = action.searchTerm,
		})
	end,

	[SetLiveSearching.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isSearching = action.isSearching,
		})
	end,
})

return LiveSearch
