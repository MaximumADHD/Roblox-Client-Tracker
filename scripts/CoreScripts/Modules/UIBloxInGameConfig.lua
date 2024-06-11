local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useRobloxGuiFocusedChangedEventInGenericButton = UIBloxFlags.FFlagUIBloxUseRobloxGuiFocused,
	useInputResponsiveShortcutBarChanges = UIBloxFlags.FFlagUIBloxUseInputResponsiveShortcutBarChanges,
	enableFontNameMapping = UIBloxFlags.GetUIBloxEnableFontNameMapping(),
	useGetTextBoundsAsync = UIBloxFlags.GetFFlagUIBloxUseGetTextBoundsAsync(),
	useTokensWithScale = UIBloxFlags.GetFFlagUIBloxUseTokensWithScale(),
	useNewHeaderBar = UIBloxFlags.GetFFlagUIBloxUseNewHeaderBar(),
	ignoreRichTextTagsForTextSizeCalculation = UIBloxFlags.GetFFlagUIBloxIgnoreRichTextTagsForTextSizeCalculation(),
	enableInteractionFeedback = SharedFlags.GetFFlagEnableUISoundAndHaptics(),
	interactiveAlertDesignTokenMinMaxSize = UIBloxFlags.GetFFlagUIBloxInteractiveAlertDesignTokenMinMaxSize(),
	alertTitleDesignTokenHeader = UIBloxFlags.GetFFlagUIBloxAlertTitleDesignTokenHeader(),
	refactorInteractable = UIBloxFlags.FFlagUIBloxUseNewInteractableCoreScript,
	addMiddleContentZIndex = UIBloxFlags.GetFFlagUIBloxUseFullPageModalZIndex(),
	enableTooltipV2HoverControllerReRenderFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2HoverControllerReRenderFix(),
	enableTooltipV2BodyFontFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2BodyFontFix(),
}
