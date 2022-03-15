local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("CANCEL_LEAVING_GAME", function()
	return {}
end)