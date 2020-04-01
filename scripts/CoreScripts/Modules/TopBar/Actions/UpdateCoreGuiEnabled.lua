local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(coreGuiType, enabled)
	return {
		coreGuiType = coreGuiType,
		enabled = enabled,
	}
end)