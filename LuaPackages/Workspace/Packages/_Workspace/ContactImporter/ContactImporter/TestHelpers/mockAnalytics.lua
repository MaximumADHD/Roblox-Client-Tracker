--!nonstrict
local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local TestingAnalytics = SocialLuaAnalytics.TestingAnalytics
local mockAnalytics = TestingAnalytics.mockAnalytics
local mockLogger = TestingAnalytics.mockLogger
local Analytics = require(FriendsCarousel.Analytics)
local setupFireAnalyticsEvents = Analytics.setupFireAnalyticsEvents

return function(config: { uid: string? }?, jest: any)
	local uid = if config and config.uid then config.uid else "123"
	local analyticsMock = mockAnalytics(jest)
	local loggerMock = mockLogger(jest)
	local fireAnalyticsEvent = setupFireAnalyticsEvents({
		diag = analyticsMock.Diag,
		eventStreamImpl = analyticsMock.EventStream,
		loggerImpl = mockLogger,
		infoForAllEvents = { uid = uid },
	})

	return {
		uid = uid,
		value = {
			fireAnalyticsEvent = fireAnalyticsEvent,
			entryPoint = nil,
		},
		mockLogger = loggerMock,
		analyticsMock = analyticsMock,
	}
end
