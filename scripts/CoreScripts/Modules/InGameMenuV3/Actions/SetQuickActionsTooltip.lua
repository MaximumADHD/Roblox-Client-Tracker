local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_QUICKACTIONS_TOOLTIP", function(tooltipText)
	assert(type(tooltipText) == "string", "SetQuickActionsTooltip: tooltipText must be a string")

	return {
		tooltipText = tooltipText,
	}
end)
