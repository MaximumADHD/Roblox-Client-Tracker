local Action = require(script.Parent.Action)

return Action(script.Name, function(locked)
	return {
		locked = locked
	}
end)
