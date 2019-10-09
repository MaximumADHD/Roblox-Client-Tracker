local Action = require(script.Parent.Action)

return Action(script.Name, function(brushShape)
	if brushShape then
		assert(type(brushShape) == "string", string.format("Expected brushShape to be a string, received %s", type(brushShape)))
	end
	return {
		brushShape = brushShape
	}
end)