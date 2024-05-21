--!strict
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")

local FFlagSwitchCSRootProviderTranslationsPackage =
	game:DefineFastFlag("SwitchCSRootProviderTranslationsPackage", false)

local Localization
if FFlagSwitchCSRootProviderTranslationsPackage then
	Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
else
	Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
end
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local CursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider
local DeviceTypeEnum = RobloxAppEnums.DeviceType
local GamepadDisconnectTokenMapper =
	require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadDisconnectTokenMapper

local GetFFlagEnableUISoundAndHaptics =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableUISoundAndHaptics
local InteractionFeedbackPackage = require(CorePackages.Workspace.Packages.InteractionFeedback)
local InteractionFeedbackContext = InteractionFeedbackPackage.InteractionFeedbackContext
local FeedbackManagerInjectionContextProvider = InteractionFeedbackPackage.FeedbackManagerInjectionContextProvider
local InteractionFeedbackAppConfig =
	require(CorePackages.Workspace.Packages.RobloxAppInteractionFeedbackConfig).InteractionFeedbackAppConfig

local FFlagCoreScriptsDynamicDefaultDeviceType = game:DefineFastFlag("CoreScriptsDynamicDefaultDeviceType", false)

local focusNavigationService =
	ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)

type DeviceType = RobloxAppEnums.DeviceType

export type StyleOverride = {
	themeName: string?,
	fontName: string?,
	deviceType: DeviceType?,
}

export type Props = {
	styleOverride: StyleOverride?,
	children: React.ReactNode,
}

local defaultStyle
if FFlagCoreScriptsDynamicDefaultDeviceType then
	defaultStyle = {
		themeName = "dark",
		fontName = "gotham",
		-- For now, design tokens only have console vs desktop values
		deviceType = if GuiService:IsTenFootInterface() then DeviceTypeEnum.Console else DeviceTypeEnum.Desktop,
	}
else
	defaultStyle = {
		themeName = "dark",
		fontName = "gotham",
		deviceType = DeviceTypeEnum.Desktop,
	}
end

local function CoreScriptsRootProvider(props: Props)
	local style = Cryo.Dictionary.join(defaultStyle, props.styleOverride or {})

	local tree = React.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(function(state)
			return state
		end, {}, {}),
	}, {
		AppStyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
			style = style,
		}, {
			DesignTokenProvider = React.createElement(DesignTokenProvider, {
				tokenMappers = {
					GamepadDisconnect = GamepadDisconnectTokenMapper,
				},
			}, {
				CursorProvider = React.createElement(CursorProvider, {}, {
					LocalizationProvider = React.createElement(LocalizationProvider, {
						localization = Localization.new(LocalizationService.RobloxLocaleId),
					}, {
						FocusNavigationProvider = React.createElement(
							ReactFocusNavigation.FocusNavigationContext.Provider,
							{
								value = focusNavigationService,
							},
							{
								FocusNavigationRegistryProvider = React.createElement(
									FocusNavigationRegistryProvider,
									nil,
									props.children
								),
							}
						),
					}),
				}),
			}),
		}),
	})

	if GetFFlagEnableUISoundAndHaptics() then
		tree = React.createElement(InteractionFeedbackContext.Provider, { value = InteractionFeedbackAppConfig }, {
			tree = React.createElement(FeedbackManagerInjectionContextProvider, nil, {
				tree = tree,
			}),
		})
	end

	return tree
end

return CoreScriptsRootProvider
