local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_MENU_OPEN", function(isMenuOpen)
	return {
		isMenuOpen = isMenuOpen,
	}
end)