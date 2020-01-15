--[[
	Changes biomeSelection
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(biome, value)
	assert(type(biome) == "string", ("Expected biome to be a string, received %s"):format(type(biome)))
	assert(type(value) == "boolean", ("Expected value to be a boolean, received %s"):format(type(value)))

	return {
		newBiomeUpdate = {
			[biome] = value,
		},
	}
end)
