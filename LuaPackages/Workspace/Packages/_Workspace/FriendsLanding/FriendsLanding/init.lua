return {
	Components = require(script.Components),
	EntryPoint = require(script.Components.FriendsLandingEntryPoint),
	FriendsLandingAnalytics = require(script.FriendsLandingAnalytics),
	getEntryPointWithParentContext = require(
		script.Components.FriendsLandingEntryPoint.getFriendsLandingEntryPointWithParentContext
	),
	EnumScreens = require(script.EnumScreens),
	installReducer = require(script.installReducer),
	TestHelpers = function()
		return require(script.TestHelpers)
	end,
	["jest.config"] = script["jest.config"],
}
