local FoundationProviderAdapter = require(script.Components.FoundationProviderAdapter)
export type FoundationProviderAdapterProps = FoundationProviderAdapter.FoundationProviderAdapterProps

return {
	Components = {
		FoundationProviderAdapter = FoundationProviderAdapter,
	},
	Contexts = {
		StudioThemeContextProvider = require(script.Contexts.StudioThemeContextProvider),
		ThemeContext = require(script.Contexts.ThemeContext),
		Localization = require(script.Contexts.Localization),
		TooltipSettingsContext = require(script.Contexts.TooltipSettingsContext),
	},
	SharedFlags = {
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
		isStyleSheetPolyfillOn = require(script.Util.isStyleSheetPolyfillOn),
		uriToTestId = require(script.Util.uriToTestId),
	},
}
