--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action("ServerNetworkUpdateSearchFilter", function(searchTerm, filterTypes)

	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)