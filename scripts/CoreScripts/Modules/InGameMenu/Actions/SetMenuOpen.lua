local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_MENU_OPEN", function(isMenuOpen)
	return {
		isMenuOpen = isMenuOpen,
	}
end)
