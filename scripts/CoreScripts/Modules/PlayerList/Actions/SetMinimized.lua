local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetMinimized", function(isMinimized)
	return {
		isMinimized = isMinimized,
	}
end)