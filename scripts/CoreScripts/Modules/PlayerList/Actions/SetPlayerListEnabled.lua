
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerListEnabled", function(isEnabled)
	return {
		isEnabled = isEnabled
	}
end)
