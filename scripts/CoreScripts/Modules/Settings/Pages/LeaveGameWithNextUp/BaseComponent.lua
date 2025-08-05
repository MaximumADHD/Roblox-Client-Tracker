--!strict

local EventIngestService = game:GetService("EventIngestService")
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")

local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics
local RoactServiceTags = require(CorePackages.Workspace.Packages.RoactServiceTags)
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local RoactServiceProvider = require(CorePackages.Workspace.Packages.RoactServices).RoactServices.ServiceProvider
local Style = require(CorePackages.Workspace.Packages.Style)

local FFlagEnableNextUpImageLatencyTelemetry = require(script.Parent.Flags.FFlagEnableNextUpImageLatencyTelemetry)

local FoundationProvider = Foundation.FoundationProvider
local AppEventIngestService = RoactServiceTags.AppEventIngestService
local RoactAnalytics = RoactServiceTags.RoactAnalytics
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

local localizationValue = Localization.new(LocalizationService.RobloxLocaleId)
local focusNavigationService =
	ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)

return function(props)
	return React.createElement(RoactServiceProvider, {
		services = {
			[AppEventIngestService] = EventIngest.new(EventIngestService),
			[RoactAnalytics] = Analytics.new() :: any,
		},
	}, {
		localizationProvider = React.createElement(LocalizationProvider, {
			localization = localizationValue,
		}, {
			foundationProvider = React.createElement(FoundationProvider, nil, {
				FocusNavigationProvider = React.createElement(
					ReactFocusNavigation.FocusNavigationContext.Provider,
					{
						value = focusNavigationService,
					},
					if FFlagEnableNextUpImageLatencyTelemetry
						then props.children
						else {
							uiBloxStyleProvider = React.createElement(
								StyleProviderWithDefaultTheme,
								nil,
								props.children
							),
						}
				),
			}),
		}),
	})
end
