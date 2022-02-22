local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Rodux = require(Packages.Rodux)
local Cryo = require(Packages.Cryo)

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
