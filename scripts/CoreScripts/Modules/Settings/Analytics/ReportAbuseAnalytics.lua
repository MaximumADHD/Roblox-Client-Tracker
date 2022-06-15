local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Constants = require(RobloxGui.Modules.InGameMenu.Resources.Constants)

local ReportAbuseAnalytics = {}
ReportAbuseAnalytics.__index = ReportAbuseAnalytics

function ReportAbuseAnalytics.new(localUserId, config)
	assert(localUserId, "ReportAbuseAnalytics must be passed the ID of the local user")

	local self = {
		_eventStreamImpl = config.EventStream,
		localUserId = localUserId,
	}
	setmetatable(self, ReportAbuseAnalytics)

	return self
end

function ReportAbuseAnalytics:action(actionName, additionalArgs)
	local target = Constants.AnalyticsTargetName
	local context = Constants.NewAnalyticsReportMenu

	additionalArgs = additionalArgs or {}

	self._eventStreamImpl:SendEventDeferred(target, context, actionName, additionalArgs)
end

return ReportAbuseAnalytics
