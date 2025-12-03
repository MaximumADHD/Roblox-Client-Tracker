--!nonstrict

local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPlayerListVisibility", function(isVisible)
	return {
		isVisible = isVisible
	}
end)
