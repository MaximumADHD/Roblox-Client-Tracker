--[[
	Changes biomeSelection
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(biome, value)
	-- if biomeSelection then
	-- 	assert(type(biomeSelection) == "table", string.format("Expected biomeSelection to be a table, received %s", type(biomeSelection)))
	-- end

	return {
		newBiomeUpdate = {
			[biome] = value,
		},
	}

end)