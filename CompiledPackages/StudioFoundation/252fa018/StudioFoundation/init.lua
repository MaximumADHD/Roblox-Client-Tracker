local Dialog = require(script.Components.Dialog)
local FoundationProviderAdapter = require(script.Components.FoundationProviderAdapter)
local Types = require(script.Types)
local getFFlagStudioFoundationDialogComponent = require(script.SharedFlags.getFFlagStudioFoundationDialogComponent)

export type DialogAction = Types.DialogAction
export type DialogEscapeButtonAction = Types.DialogEscapeButtonAction
export type DialogProps = Dialog.Props
export type DialogType = Types.DialogType
export type FoundationProviderAdapterProps = FoundationProviderAdapter.FoundationProviderAdapterProps

return {
	Components = {
		Dialog = if getFFlagStudioFoundationDialogComponent() then Dialog else nil :: never,
		FoundationProviderAdapter = FoundationProviderAdapter,
	},
	Contexts = {
		StudioThemeContextProvider = require(script.Contexts.StudioThemeContextProvider),
		ThemeContext = require(script.Contexts.ThemeContext),
		Localization = require(script.Contexts.Localization),
		TelemetryServiceContext = if getFFlagStudioFoundationDialogComponent()
			then require(script.Contexts.TelemetryServiceContext)
			else nil :: never,
		TooltipSettingsContext = require(script.Contexts.TooltipSettingsContext),
	},
	SharedFlags = {
		getFFlagStudioFoundationThemeContext = require(script.SharedFlags.getFFlagStudioFoundationThemeContext),
		getFFlagStudioFoundationDialogComponent = getFFlagStudioFoundationDialogComponent,
	},
	Hooks = {
		useWidgetRef = require(script.Hooks.useWidgetRef),
		useWidgets = require(script.Hooks.useWidgets),
		useThemeName = require(script.Hooks.useThemeName),
		usePluginSetting = require(script.Hooks.usePluginSetting),
	},
	Util = {
		StudioUri = require(script.Util.StudioUri),
		createFoundationDesignBinding = require(script.Util.createFoundationDesignBinding),
		safeGetFastFlag = require(script.Util.safeGetFastFlag),
		uriToTestId = require(script.Util.uriToTestId),
	},
}
