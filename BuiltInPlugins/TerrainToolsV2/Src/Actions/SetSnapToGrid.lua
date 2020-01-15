local Action = require(script.Parent.Action)

return Action(script.Name, function(snapToGrid)
	assert(type(snapToGrid) == "boolean", ("Expected snapToGrid to be a boolean, received %s"):format(type(snapToGrid)))

	return {
		snapToGrid = snapToGrid,
	}
end)
