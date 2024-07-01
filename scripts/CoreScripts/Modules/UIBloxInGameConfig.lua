local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useRobloxGuiFocusedChangedEventInGenericButton = UIBloxFlags.FFlagUIBloxUseRobloxGuiFocused,
	useInputResponsiveShortcutBarChanges = UIBloxFlags.FFlagUIBloxUseInputResponsiveShortcutBarChanges,
	enableFontNameMapping = true,
	useGetTextBoundsAsync = UIBloxFlags.GetFFlagUIBloxUseGetTextBoundsAsync(),
	useTokensWithScale = UIBloxFlags.GetFFlagUIBloxUseTokensWithScale(),
	useNewHeaderBar = UIBloxFlags.GetFFlagUIBloxUseNewHeaderBar(),
	enableInteractionFeedback = SharedFlags.GetFFlagEnableUISoundAndHaptics(),
	interactiveAlertDesignTokenMinMaxSize = UIBloxFlags.GetFFlagUIBloxInteractiveAlertDesignTokenMinMaxSize(),
	alertTitleDesignTokenHeader = UIBloxFlags.GetFFlagUIBloxAlertTitleDesignTokenHeader(),
	refactorInteractable = UIBloxFlags.FFlagUIBloxUseNewInteractableCoreScript,
	enableTooltipV2HoverControllerReRenderFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2HoverControllerReRenderFix(),
	enableTooltipV2BodyFontFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2BodyFontFix(),
}
