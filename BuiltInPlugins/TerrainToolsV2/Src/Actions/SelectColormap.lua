local Action = require(script.Parent.Action)

return Action(script.Name, function(colormap)
	return {
		colormap = colormap,
	}
end)
