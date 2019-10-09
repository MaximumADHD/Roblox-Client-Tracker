local Action = require(script.Parent.Action)

return Action(script.Name, function(seed)
	if seed then
		assert(type(seed) == "string", string.format("Expected seed to be a string, received %s", type(seed)))
	end
	return {
		seed = seed
	}
end)