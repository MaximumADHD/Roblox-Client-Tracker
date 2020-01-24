local Action = require(script.Parent.Action)

return Action(script.Name, function(fixedPlane)
	assert(type(fixedPlane) == "boolean", ("Expected fixedPlane to be a boolean, received %s"):format(type(fixedPlane)))

	return {
		fixedPlane = fixedPlane,
	}
end)
