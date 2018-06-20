local Action = require(script.Parent.Parent.Action)

return Action("ServerStatsUpdateSearchFilter", function(searchTerm, filterTypes)
	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)