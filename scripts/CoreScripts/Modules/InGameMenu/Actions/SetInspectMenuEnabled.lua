local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_INSPECT_MENU_ENABLED", function(enabled)
	return {
		enabled = enabled,
	}
end)