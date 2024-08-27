local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useRobloxGuiFocusedChangedEventInGenericButton = UIBloxFlags.FFlagUIBloxUseRobloxGuiFocused,
	useGetTextBoundsAsync = UIBloxFlags.GetFFlagUIBloxUseGetTextBoundsAsync(),
	useTokensWithScale = UIBloxFlags.GetFFlagUIBloxUseTokensWithScale(),
	useNewHeaderBar = UIBloxFlags.GetFFlagUIBloxUseNewHeaderBar(),
	enableInteractionFeedback = SharedFlags.GetFFlagEnableUISoundAndHaptics(),
	interactiveAlertDesignTokenMinMaxSize = true,
	alertTitleDesignTokenHeader = true,
	refactorInteractable = UIBloxFlags.FFlagUIBloxUseNewInteractableCoreScript,
	enableTooltipV2HoverControllerReRenderFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2HoverControllerReRenderFix(),
	enableTooltipV2BodyFontFix = UIBloxFlags.GetFFlagUIBloxEnableTooltipV2BodyFontFix(),
	enableTextFieldInputType = UIBloxFlags.GetFFlagUIBloxEnableTextFieldInputType(),
	useInteractableWithTileAndCell = UIBloxFlags.GetFFlagUseInteractableWithTileAndCell(),
	fixHeaderBarTitleFlickering = UIBloxFlags.GetFFlagUIBloxFixHeaderBarTitleFlickering(),
	fixHeaderBarDependenciesArray = UIBloxFlags.GetFFlagUIBloxFixHeaderBarDependenciesArray(),
	enableCreateLazyComponent = UIBloxFlags.GetFFlagEnableCreateLazyComponent(),
	ensureTextWrapsInputButton = UIBloxFlags.GetFFlagEnsureTextWrapsInputButton(),
 	leftAlignCellHeadDetailText = UIBloxFlags.GetFFlagLeftAlignCellHeadDetailText(),
 	refactorTileTextHeights = UIBloxFlags.GetFFlagRefactorTileTextHeights(),
	useAutomaticSizeYHeaderBar = UIBloxFlags.GetFFlagUseAutomaticSizeYHeaderBar(),
	recomputeTabSizeSegmentedControl = UIBloxFlags.GetFFlagRecomputeTabSizeSegmentedControl(),
	useAutomaticSizeInStatGroup = UIBloxFlags.GetFFlagUseAutomaticSizeInStatGroup(),
	useAutomaticHeightInTableCell = UIBloxFlags.GetFFlagUseAutomaticHeightInTableCell(),
	consolidateBackgroundsTextButton = UIBloxFlags.GetFFlagConsolidateBackgroundsTextButton(),
	resizeModalTitle = UIBloxFlags.GetFFlagResizeModalTitle(),
	useTextSizeOffsetTileContentPanel = UIBloxFlags.GetFFlagUseTextSizeOffsetTileContentPanel(),
	enableOpenTypeSupport = SharedFlags.GetFFlagLuaAppEnableOpenTypeSupport(),
	enableNavigationBarSelectionChangeFix = UIBloxFlags.GetFFlagUIBloxEnableNavigationBarSelectionCallbackFix(),
	didMountUpdateFullPageModal = UIBloxFlags.GetFFlagUIBloxDidMountUpdateFullPageModal(),
	useFoundationColors = SharedFlags.GetFFlagLuaAppEnableFoundationColors(),
	fixLayerCollectorProviderAbsoluteSize = UIBloxFlags.GetFFlagFixLayerCollectorProviderAbsoluteSize(),
}
