
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetTempHideKey", function(tempHideKey, tempHideValue)
	return {
		tempHideKey = tempHideKey,
		tempHideValue = tempHideValue
	}
end)