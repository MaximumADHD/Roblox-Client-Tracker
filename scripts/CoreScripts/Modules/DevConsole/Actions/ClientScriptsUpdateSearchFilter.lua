--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action("ClientScriptsUpdateSearchFilter", function(searchTerm, filterTypes)
	return {
		searchTerm = searchTerm,
		filterTypes = filterTypes
	}
end)