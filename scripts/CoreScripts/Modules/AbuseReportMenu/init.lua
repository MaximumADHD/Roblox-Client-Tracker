local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAbuseReportMenuV2 = SharedFlags.FFlagAbuseReportMenuV2

local AbuseReportMenu = require(script.Components.AbuseReportMenuNew)
local AbuseReportMenuV2 = if FFlagAbuseReportMenuV2 then require(script.V2.AbuseReportMenu) else nil
local ReportAbuseAnalytics = require(script.Analytics.ReportAbuseAnalytics)

return {
	AbuseReportMenu = AbuseReportMenu,
	AbuseReportMenuV2 = AbuseReportMenuV2,
	ReportAbuseAnalytics = ReportAbuseAnalytics,
	["jest.config"] = script["jest.config"],
}
