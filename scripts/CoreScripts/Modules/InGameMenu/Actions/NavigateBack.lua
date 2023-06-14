local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("NAVIGATE_BACK", function()
	return {}
end)
