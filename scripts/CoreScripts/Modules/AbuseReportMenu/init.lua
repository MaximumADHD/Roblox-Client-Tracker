local AbuseReportMenu = require(script.Components.AbuseReportMenuNew)
local AbuseReportMenuV2 = require(script.V2.AbuseReportMenu)
local ReportAbuseAnalytics = require(script.Analytics.ReportAbuseAnalytics)

return {
	AbuseReportMenu = AbuseReportMenu,
	AbuseReportMenuV2 = AbuseReportMenuV2,
	ReportAbuseAnalytics = ReportAbuseAnalytics,
	["jest.config"] = script["jest.config"],
}
