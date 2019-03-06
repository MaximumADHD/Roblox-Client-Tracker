
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetTopBarEnabled", function(isEnabled)
	return {
		isEnabled = isEnabled
	}
end)