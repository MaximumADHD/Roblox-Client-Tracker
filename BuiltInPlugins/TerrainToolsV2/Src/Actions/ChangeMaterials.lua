--[[
	Changes biomeSelection
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(biomeSelection)
	if biomeSelection then
		assert(type(biomeSelection) == "table", string.format("Expected biomeSelection to be a table, received %s", type(biomeSelection)))
	end

	return {
		biomeSelection = biomeSelection,
	}

end)