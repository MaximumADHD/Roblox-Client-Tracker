local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetInspectMenuEnabled", function(enabled)
	return {
		enabled = enabled,
	}
end)