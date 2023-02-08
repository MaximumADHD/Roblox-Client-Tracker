--!nonstrict
local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local TestingAnalytics = SocialLuaAnalytics.TestingAnalytics
local mockAnalytics = TestingAnalytics.mockAnalytics
local mockLogger = TestingAnalytics.mockLogger
local Analytics = require(FriendsCarousel.Analytics)
local setupFireEvent = Analytics.setupFireEvent

return function(config: { uid: string? }?, jestStub: { fn: () -> () }?)
	local uid = if config and config.uid then config.uid else "123"
	local analyticsMock = mockAnalytics(jestStub or { fn = function() end })
	local loggerMock = mockLogger(jestStub or { fn = function() end })
	local fireEvent = setupFireEvent({
		analytics = analyticsMock,
		loggerImpl = mockLogger,
		infoForAllEvents = { uid = uid },
	})

	return {
		uid = uid,
		value = {
			fireEvent = fireEvent,
		},
		mockLogger = loggerMock,
		analyticsMock = analyticsMock,
	}
end
