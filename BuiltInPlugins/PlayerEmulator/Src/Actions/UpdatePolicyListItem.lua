local Action = require(script.Parent.Action)

return Action(script.Name, function(key, item, plugin)
	assert(type(key) == "string", "Expected key to be a string")
	assert(type(item) == "string", "Expected value to be a string")

	return {
		key = key,
		item = item,
		plugin = plugin,
	}
end)