local Action = require(script.Parent.Parent.Action)

return Action("ServerLogUpdateSearchFilter", function(searchTerm, filterTypes)
	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)