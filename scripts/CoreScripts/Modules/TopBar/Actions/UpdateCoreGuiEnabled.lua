local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(coreGuiType, enabled)
	return {
		coreGuiType = coreGuiType,
		enabled = enabled,
	}
end)
