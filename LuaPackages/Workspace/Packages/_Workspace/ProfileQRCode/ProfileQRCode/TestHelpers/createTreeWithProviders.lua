local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = SocialTestHelpers.TestHelpers.createTreeWithProviders
local mockAnalytics = require(script.Parent.mockAnalytics)
local Analytics = require(ProfileQRCode.Analytics)
local React = require(Packages.React)
local RoactAppExperiment = require(Packages.RoactAppExperiment)
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local MagicMock = LuaSocialLibrariesDeps.Mock.MagicMock

return function(element, config)
	local mockAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	return React.createElement(Analytics.Context.Provider, {
		value = if config.mockAnalytics then config.mockAnalytics else mockAnalytics.value,
	}, {
		React.createElement(RoactAppExperiment.Provider, {
			value = MagicMock.new(),
		}, {
			Element = createTreeWithProviders(element, config),
		}),
	}),
		mockAnalytics
end
