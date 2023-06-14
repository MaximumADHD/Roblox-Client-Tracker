local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("START_LEAVING_GAME", function()
	return {}
end)
