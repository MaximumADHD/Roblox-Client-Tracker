local Action = require(script.Parent.Action)

return Action(script.Name, function(biomeSize)
	local numBiomeSize = nil
	if biomeSize then
		assert(type(biomeSize) == "string", string.format("Expected biomeSize to be a number, received %s", type(biomeSize)))
		numBiomeSize = tostring(biomeSize)
	end

	return {
		biomeSize = numBiomeSize
	}
end)