local Dialog = require(script.Components.Dialog)
local DialogContext = require(script.Contexts.DialogContext)
local FoundationProviderAdapter = require(script.Components.FoundationProviderAdapter)
local Types = require(script.Types)

export type DialogAction = Types.DialogAction
export type DialogContextType = DialogContext.DialogContextType
export type DialogEscapeButtonAction = Types.DialogEscapeButtonAction
export type DialogProps = Dialog.Props
export type DialogTertiaryActionVariant = Types.DialogTertiaryActionVariant
export type DialogType = Types.DialogType
export type FoundationProviderAdapterProps = FoundationProviderAdapter.FoundationProviderAdapterProps

return {
	Components = {
		Dialog = Dialog,
		FoundationProviderAdapter = FoundationProviderAdapter,
	},
	Contexts = {
		DialogContext = DialogContext.Context,
		DialogDmIdContext = require(script.Contexts.DialogDmIdContext),
		StudioThemeContextProvider = require(script.Contexts.StudioThemeContextProvider),
		ThemeContext = require(script.Contexts.ThemeContext),
		Localization = require(script.Contexts.Localization),
		TelemetryServiceContext = require(script.Contexts.TelemetryServiceContext),
		TooltipSettingsContext = require(script.Contexts.TooltipSettingsContext),
	},
	SharedFlags = {
		getFFlagStudioFoundationDialogContext = require(script.SharedFlags.getFFlagStudioFoundationDialogContext),
		getFFlagStudioFoundationThemeContext = require(script.SharedFlags.getFFlagStudioFoundationThemeContext),
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
