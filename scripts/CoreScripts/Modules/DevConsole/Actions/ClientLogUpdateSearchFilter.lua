--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action("ClientLogUpdateSearchFilter", function(searchTerm, filterTypes)
	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)