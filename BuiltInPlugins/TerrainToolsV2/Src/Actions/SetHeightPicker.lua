local Action = require(script.Parent.Action)

return Action(script.Name, function(heightPicker)
	assert(type(heightPicker) == "boolean", ("Expected heightPicker to be a boolean, received %s"):format(
		type(heightPicker)))

	return {
		heightPicker = heightPicker,
	}
end)
