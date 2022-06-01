local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("OPEN_REPORT_DIALOG", function(reportType, targetPlayer, onGoBack)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
		onGoBack = onGoBack,
	}
end)
