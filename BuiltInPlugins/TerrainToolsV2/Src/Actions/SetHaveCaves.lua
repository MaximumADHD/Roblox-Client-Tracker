local Action = require(script.Parent.Action)

return Action(script.Name, function(haveCaves)
	assert(type(haveCaves) == "boolean", ("Expected haveCaves to be a boolean, received %s"):format(type(haveCaves)))

	return {
		haveCaves = haveCaves,
	}
end)
