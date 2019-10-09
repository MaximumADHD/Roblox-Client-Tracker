local Action = require(script.Parent.Action)

return Action(script.Name, function(ignoreWater)
	if ignoreWater then
		assert(type(ignoreWater) == "boolean", string.format("Expected ignoreWater to be a boolean, received %s", type(ignoreWater)))
	end
	return {
		ignoreWater = ignoreWater
	}
end)