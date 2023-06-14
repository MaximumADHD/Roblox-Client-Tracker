local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(menuOpen)
	return {
		menuOpen = menuOpen,
	}
end)
