local Action = require(script.Parent.Action)

return Action(script.Name, function(locked)
	assert(type(locked) == "boolean", ("Expected locked to be a boolean, received %s"):format(type(locked)))

	return {
		locked = locked,
	}
end)
