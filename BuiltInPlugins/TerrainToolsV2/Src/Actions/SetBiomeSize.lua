local Action = require(script.Parent.Action)

return Action(script.Name, function(biomeSize)
	if biomeSize then
		assert(type(biomeSize) == "string", string.format("Expected biomeSize to be a string, received %s", type(biomeSize)))
		numBiomeSize = tostring(biomeSize)
	end

	return {
		biomeSize = numBiomeSize
	}
end)