-- mounts React once in SettingsHub and individual children will Portal where needed
-- useful to share Providers/Contexts/Stylelinks

local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local InExperienceLocales = require(CorePackages.Workspace.Packages.InExperienceLocales)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local Settings = script.Parent
local Utils = require(Settings.Integrations.Utils)

local ContextStack = ReactUtils.ContextStack

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

	return React.createElement(ContextStack, {
		providers = {
			React.createElement(LocalizationProvider, {
				localization = localization,
			}),
			React.createElement(FoundationProvider, {
				theme = props.theme or defaultProps.theme,
				device = Utils.getDeviceType(),
			}),
		},
	}, props.children)
end

return React.memo(InExperienceMenuReact)
