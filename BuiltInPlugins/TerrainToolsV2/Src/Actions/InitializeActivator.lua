local Action = require(script.Parent.Action)

return Action(script.Name, function(activator)
	return {
		activator = activator
	}
end)