local Action = require(script.Parent.Action)

return Action(script.Name, function(brushShape)
	assert(type(brushShape) == "string", ("Expected brushShape to be a string, received %s"):format(type(brushShape)))

	return {
		brushShape = brushShape,
	}
end)
