local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = SocialTestHelpers.TestHelpers.createTreeWithProviders
local mockAnalytics = require(script.Parent.mockAnalytics)
local Analytics = require(ProfileQRCode.Analytics)
local React = require(Packages.React)

return function(element, config)
	local mockAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	return
		React.createElement(Analytics.Context.Provider, {
		value = if config.mockAnalytics then config.mockAnalytics else mockAnalytics.value,
	}, {
		Element = createTreeWithProviders(element, config),
	}),
		mockAnalytics
end
