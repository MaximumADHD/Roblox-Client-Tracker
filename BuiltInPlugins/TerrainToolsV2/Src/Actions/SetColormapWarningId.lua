local Action = require(script.Parent.Action)

return Action(script.Name, function(colormapWarningId)
	return {
		colormapWarningId = colormapWarningId,
	}
end)
