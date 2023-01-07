local ContactImporter = script.Parent.Parent
local Packages = ContactImporter.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local createTreeWithProviders = require(Packages.Dev.SocialTestHelpers).TestHelpers.createTreeWithProviders
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local dependencies = require(ContactImporter.dependencies)
local mockAnalytics = require(ContactImporter.TestHelpers.mockAnalytics)
local Analytics = require(ContactImporter.Analytics)
local Roact = dependencies.Roact
local React = dependencies.React
local RoactExperimentProvider = dependencies.RoactExperimentProvider
local MagicMock = LuaSocialLibrariesDeps.Mock.MagicMock
local RoactNavigation = dependencies.RoactNavigation

return function(element, config)
	local mockAnalytics = mockAnalytics({
		uid = "123",
	}, JestGlobals.jest)

	return Roact.createElement(RoactNavigation.Provider, {
		value = config.navigation or MagicMock.new(),
	}, {
		React.createElement(RoactExperimentProvider, {
			value = if config.experiment then config.experiment else MagicMock.new(),
		}, {
			Element = Roact.createElement(Analytics.Context.Provider, {
				value = if config.mockAnalytics then config.mockAnalytics else mockAnalytics.value,
			}, {
				Element = createTreeWithProviders(element, config),
			}),
		}),
	}),
		mockAnalytics
end
