local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("OPEN_REPORT_SENT_DIALOG", function(reportType, targetPlayer)
	return {
		reportType = reportType,
		targetPlayer = targetPlayer,
	}
end)
