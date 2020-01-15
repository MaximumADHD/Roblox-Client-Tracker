local Action = require(script.Parent.Action)

return Action(script.Name, function(seed)
	assert(type(seed) == "string", ("Expected seed to be a string, received %s"):format(type(seed)))

	return {
		seed = seed,
	}
end)
