local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_CONTROLLER_BAR_HEIGHT", function(controllerBarHeight)
	return {
		controllerBarHeight = controllerBarHeight,
	}
end)
