-- mounts React once in SettingsHub and individual children will Portal where needed
-- useful to share Providers/Contexts/Stylelinks

local CorePackages = game:GetService("CorePackages")
local EventIngestService = game:GetService("EventIngestService")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local InExperienceLocales = require(CorePackages.Workspace.Packages.InExperienceLocales)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local RoactServiceProvider = require(CorePackages.Workspace.Packages.RoactServices).RoactServices.ServiceProvider
local RoactServiceTags = require(CorePackages.Workspace.Packages.RoactServiceTags)

local Settings = script.Parent
local Utils = require(Settings.Integrations.Utils)

local AppEventIngestService = RoactServiceTags.AppEventIngestService
local RoactAnalytics = RoactServiceTags.RoactAnalytics
local LocalizationProvider = Localization.LocalizationProvider
local GetLocalizationServiceStore = Localization.GetLocalizationServiceStore
local InExperienceLocalesLocalization = InExperienceLocales.Localization

local FoundationProvider = Foundation.FoundationProvider

type InExperienceMenuReactProps = {
	theme: Foundation.Theme?,
	children: React.ReactChild,
} 

local defaultProps = {
	theme = Foundation.Enums.Theme.Dark :: Foundation.Theme,
}

local function InExperienceMenuReact(props: InExperienceMenuReactProps)
	local localizationServiceStore = GetLocalizationServiceStore(false)
	local robloxLocaleId = SignalsReact.useSignalState(localizationServiceStore.getRobloxLocaleId)
	local localization = InExperienceLocalesLocalization.new(robloxLocaleId)

	return React.createElement(RoactServiceProvider, {
		services = {
			[AppEventIngestService] = EventIngest.new(EventIngestService),
			[RoactAnalytics] = Analytics.new() :: any,
		},
	}, {
		LocalizationProvider = React.createElement(LocalizationProvider, {
			localization = localization,
		}, {
			FoundationProvider = React.createElement(FoundationProvider, {
				theme = props.theme or defaultProps.theme,
				device = Utils.getDeviceType(),
			}, props.children)
		})
	})
end

return React.memo(InExperienceMenuReact)
