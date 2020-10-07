local Action = require(script.Parent.Action)

return Action(script.Name, function(heightmap)
	return {
		heightmap = heightmap,
	}
end)
