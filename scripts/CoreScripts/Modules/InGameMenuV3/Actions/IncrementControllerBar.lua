local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("INCREMENT_CONTROLLER_BAR_COUNT", function()
	return {}
end)
