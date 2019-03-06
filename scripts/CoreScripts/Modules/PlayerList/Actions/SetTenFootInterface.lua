
local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetTenFootInterface", function(isTenFootInterface)
	return {
		isTenFootInterface = isTenFootInterface,
	}
end)