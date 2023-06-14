local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_CONTROLLER_BAR_HEIGHT", function(controllerBarHeight)
	return {
		controllerBarHeight = controllerBarHeight,
	}
end)
