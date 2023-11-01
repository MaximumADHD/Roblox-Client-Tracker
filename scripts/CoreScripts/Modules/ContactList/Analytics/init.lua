local CorePackages = game:GetService("CorePackages")

local SocialLuaAnalytics = require(CorePackages.Workspace.Packages.SocialLuaAnalytics)
local GetFFlagIrisAnalyticsLoggingEnabled_DEV =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisAnalyticsLoggingEnabled_DEV

local AnalyticsFactory = SocialLuaAnalytics.Analytics.AnalyticsFactory
local DefaultAnalyticsService = SocialLuaAnalytics.Analytics.DefaultAnalyticsService

local EventStreamActionList = require(script.EventStreamActionList)

return {
	Analytics = AnalyticsFactory.setUpAnalyticsFactory({
		eventLists = {
			EventStream = EventStreamActionList,
			Diag = nil,
		},
		analyticsImpl = {
			EventStream = DefaultAnalyticsService.EventStream,
			Diag = nil,
		},
		-- TODO (timothyhsu): Remove this once we no longer need to test
		loggerImpl = if GetFFlagIrisAnalyticsLoggingEnabled_DEV() then { info = print } else nil,
	}),
	useAnalytics = require(script.useAnalytics),
}
