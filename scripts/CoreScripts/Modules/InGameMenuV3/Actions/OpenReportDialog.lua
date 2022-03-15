local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("OPEN_REPORT_DIALOG", function(userId, userName)
	return {
		userId = userId,
		userName = userName,
	}
end)