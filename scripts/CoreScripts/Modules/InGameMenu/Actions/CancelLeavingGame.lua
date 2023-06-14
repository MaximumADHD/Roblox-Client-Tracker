local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("CANCEL_LEAVING_GAME", function()
	return {}
end)
