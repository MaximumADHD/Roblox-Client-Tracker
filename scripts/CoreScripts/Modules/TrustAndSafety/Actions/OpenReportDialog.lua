local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(reportType, targetPlayer, onGoBack)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
		onGoBack = onGoBack,
	}
end)
