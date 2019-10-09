local Action = require(script.Parent.Action)

return Action(script.Name, function(height)
	height = tonumber(height)
	if height then
		assert(type(height) == "number", string.format("Expected height to be a number, received %s", type(height)))
	end
	return {
		height = height
	}
end)