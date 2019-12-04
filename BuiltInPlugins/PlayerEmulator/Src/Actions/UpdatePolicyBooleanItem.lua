local Action = require(script.Parent.Action)

return Action(script.Name, function(key, value, plugin)
	assert(type(key) == "string", "Expected key to be a string")
	assert(type(value) == "boolean", "Expected value to be a boolean")

	return {
		key = key,
		value = value,
		plugin = plugin,
	}
end)