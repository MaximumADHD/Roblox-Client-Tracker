local Action = require(script.Parent.Action)

return Action(script.Name, function(enabled)
	assert(type(enabled) == "boolean", "Expected enabled to be a boolean")
	return {
		enabled = enabled,
	}
end)