local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local TestingAnalytics = SocialLuaAnalytics.TestingAnalytics
local mockAnalytics = TestingAnalytics.mockAnalytics
local mockLogger = TestingAnalytics.mockLogger
local Analytics = require(ProfileQRCode.Analytics)
local setupFireEvent = Analytics.setupFireEvent

return function(config: { uid: string? }?, jestStub: any)
	local uid = if config and config.uid then config.uid else "123"
	local analyticsMock = mockAnalytics(jestStub)
	local loggerMock = mockLogger(jestStub)
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
