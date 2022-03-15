local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_SCREEN_SIZE", function(screenSize)
	return {
		newScreenSize = screenSize,
	}
end)