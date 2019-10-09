local Action = require(script.Parent.Action)

return Action(script.Name, function(heightPicker)
	if heightPicker then
		assert(type(heightPicker) == "boolean", string.format("Expected heightPicker to be a boolean, received %s", type(heightPicker)))
	end
	return {
		heightPicker = heightPicker
	}
end)