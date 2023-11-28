local CorePackages = game:GetService("CorePackages")

local SocialLuaAnalytics = require(CorePackages.Workspace.Packages.SocialLuaAnalytics)

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
	}),
	useAnalytics = require(script.useAnalytics),
}
