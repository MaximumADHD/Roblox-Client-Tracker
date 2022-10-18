local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(reportType, targetPlayer)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
	}
end)
