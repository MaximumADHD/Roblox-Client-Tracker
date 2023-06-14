local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(reportType, targetPlayer, sortedUserIds)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
		sortedUserIds = sortedUserIds,
	}
end)
