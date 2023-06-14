local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(reportType, targetPlayer)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
	}
end)
