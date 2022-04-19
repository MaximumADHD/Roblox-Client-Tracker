local TrustAndSafety = script.Parent.Parent
local OpenReportDialog = require(TrustAndSafety.Actions.OpenReportDialog)

return function()
	return function(store)
		store:dispatch(OpenReportDialog())
	end
end