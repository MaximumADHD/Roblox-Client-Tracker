--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action("ActionBindingsUpdateSearchFilter", function(searchTerm)
	return {
		searchTerm = searchTerm
	}
end)