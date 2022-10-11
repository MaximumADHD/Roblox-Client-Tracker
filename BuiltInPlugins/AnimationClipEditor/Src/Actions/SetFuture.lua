local Action = require(script.Parent.Action)

return Action(script.Name, function(future)
	return {
		future = future,
	}
end)
