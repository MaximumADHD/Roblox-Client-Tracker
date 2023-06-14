local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("INCREMENT_CONTROLLER_BAR_COUNT", function()
	return {}
end)
