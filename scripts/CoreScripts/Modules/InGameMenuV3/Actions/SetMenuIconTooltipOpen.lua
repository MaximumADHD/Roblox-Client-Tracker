local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_MENU_ICON_TOOLTIP_OPEN", function(status)
	return {
		menuIconTooltipOpen = status,
	}
end)
