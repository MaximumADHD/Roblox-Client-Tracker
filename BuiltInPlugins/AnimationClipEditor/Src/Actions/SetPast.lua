local Action = require(script.Parent.Action)

return Action(script.Name, function(past)
	return {
		past = past,
	}
end)