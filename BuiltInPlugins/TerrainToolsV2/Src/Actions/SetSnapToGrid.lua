local Action = require(script.Parent.Action)

return Action(script.Name, function(snapToGrid)
	if snapToGrid then
		assert(type(snapToGrid) == "boolean", string.format("Expected snapToGrid to be a boolean, received %s", type(snapToGrid)))
	end
	return {
		snapToGrid = snapToGrid
	}
end)