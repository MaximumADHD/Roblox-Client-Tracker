local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("OPEN_REPORT_DIALOG", function(userId, userName)
	return {
		userId = userId,
		userName = userName,
	}
end)
