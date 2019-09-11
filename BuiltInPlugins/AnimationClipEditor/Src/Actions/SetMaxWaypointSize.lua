local Action = require(script.Parent.Action)

return Action(script.Name, function(maxSize)
	return {
		maxSize = maxSize,
	}
end)