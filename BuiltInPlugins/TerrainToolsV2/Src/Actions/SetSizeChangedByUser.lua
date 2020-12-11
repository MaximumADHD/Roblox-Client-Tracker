local Action = require(script.Parent.Action)

return Action(script.Name, function(sizeChangedByUser)
	assert(type(sizeChangedByUser) == "boolean",
		("Expected sizeChangedByUser to be a boolean, received %s"):format(type(sizeChangedByUser)))

	return {
		sizeChangedByUser = sizeChangedByUser,
	}
end)
