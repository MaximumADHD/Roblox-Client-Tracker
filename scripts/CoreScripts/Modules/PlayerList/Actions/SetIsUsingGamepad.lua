--!nonstrict
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetIsUsingGamepad", function(isUsingGamepad)
	return {
		isUsingGamepad = isUsingGamepad,
	}
end)