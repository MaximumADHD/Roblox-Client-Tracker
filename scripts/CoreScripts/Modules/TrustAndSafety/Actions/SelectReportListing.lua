local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(reportType, targetPlayer, sortedUserIds)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
		sortedUserIds = sortedUserIds,
	}
end)
