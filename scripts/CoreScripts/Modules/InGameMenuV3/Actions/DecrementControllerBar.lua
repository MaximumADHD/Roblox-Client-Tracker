local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("DECREMENT_CONTROLLER_BAR_COUNT", function()
	return {}
end)
