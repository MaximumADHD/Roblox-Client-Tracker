local Action = require(script.Parent.Action)

return Action(script.Name, function(data)
	assert(type(data) == "table", "Expected data to be a table")
	return {
		data = data,
	}
end)