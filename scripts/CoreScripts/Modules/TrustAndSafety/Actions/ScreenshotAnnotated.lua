-- This is when the user has finished annotating the whole screenshot,
-- and transition to the next step. We don't want to fire this for
-- every single annotation/click.
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(reportCategory, reportType, annotationPoints)
	return {
		reportCategory = reportCategory,
		reportType = reportType,
		annotationPoints = annotationPoints,
	}
end)
