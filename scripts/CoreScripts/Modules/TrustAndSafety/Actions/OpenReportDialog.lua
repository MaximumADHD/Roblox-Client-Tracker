local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("OPEN_REPORT_DIALOG", function(placeName, userId, userName)
	return {
		placeName = placeName,
		userId = userId,
		userName = userName,
	}
end)
