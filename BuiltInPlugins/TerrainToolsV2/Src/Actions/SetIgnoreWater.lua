local Action = require(script.Parent.Action)

return Action(script.Name, function(ignoreWater)
	assert(type(ignoreWater) == "boolean", ("Expected ignoreWater to be a boolean, received %s"):format(type(ignoreWater)))

	return {
		ignoreWater = ignoreWater,
	}
end)
