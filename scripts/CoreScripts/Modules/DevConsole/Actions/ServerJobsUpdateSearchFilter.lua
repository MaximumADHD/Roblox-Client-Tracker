local Action = require(script.Parent.Parent.Action)

return Action("ServerJobsUpdateSearchFilter", function(searchTerm, filterTypes)
	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)