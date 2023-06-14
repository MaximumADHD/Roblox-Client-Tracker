local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("OPEN_REPORT_SENT_DIALOG", function()
	return {}
end)
