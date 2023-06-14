local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_SCREEN_SIZE", function(screenSize)
	return {
		newScreenSize = screenSize,
	}
end)
