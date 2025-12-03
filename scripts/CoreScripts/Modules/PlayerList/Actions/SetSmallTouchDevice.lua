--!nonstrict

local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetSmallTouchDevice", function(isSmallTouchDevice)
	return {
		isSmallTouchDevice = isSmallTouchDevice,
	}
end)