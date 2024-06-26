return {
	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	-- Indicate whether to enable the new layout for menu/cell
	enableNewMenuLayout = false,

	-- enable trace level log
	enableTraceLevelLog = false,

	-- Bugfix for the fixed-height basemenu's outer frame is selectable
	fixFixedHeightMenuFrameSelectable = false,

	-- Add gamepad support to LinkButton
	enableLinkButtonGamepadSupport = false,

	-- Use new selection cursor in related components
	useNewSelectionCursor = false,

	-- Migrate selection image to new selection cursor
	migrateToNewSelectionCursor = false,

	-- Set zindex on ResponsiveCell
	setZIndexOnGridCells = false,

	-- Use the new features of ShortcutBar for responding to last input type and fadeout
	useInputResponsiveShortcutBarChanges = false,

	-- Have StatGroup use vertical AutomaticSize instead of filling its parent
	useAutomaticSizeYInStatGroup = false,

	-- do not mount the Details Page Header Action Bar when the Sticky ActionBar
	-- active
	hideHeaderActionBarWhenStickyBarActive = false,

	-- Use RobloxGuiFocusedChanged event to respond to blur and loading of GenericButton
	useRobloxGuiFocusedChangedEventInGenericButton = false,

	-- In ResponsiveGrid, don't default displayLines to nil. Instead use an empty range
	responsiveGridDisplayLinesNonNil = false,

	-- Use SurfaceGuiWithAdornee for Panel3D
	refactorPanel3D = false,

	-- Use general design tokens with `scale` parameter to adapt to different platforms
	useTokensWithScale = false,

	-- Indicate whether mapping for existing Font names are enabled
	enableFontNameMapping = false,

	-- Add a ref that points to ScrollingFrame in ResponsiveBaseRow
	responsiveBaseRowScrollingFrameRef = false,

	-- Use GetTextBoundsAsync instead of GetTextSize to guarantee a correct result
	useGetTextBoundsAsync = false,

	-- use new refactored interactable
	refactorInteractable = false,

	-- Support ControlState.Selected in the hover controller for TooltipV2
	supportControlStateSelectedForTooltipHover = false,

	-- Make expansion animation happen immediately when selection changes instead of in separate useEffect
	mediaGalleryExpandedViewImmediateAnimation = false,

	-- Use new designed HeaderBar
	useNewHeaderBar = false,

	-- Use InteractionFeedbackManager, which is injected via InteractionFeedbackContext
	enableInteractionFeedback = false,

	-- Fix existing bugs and update MediaGallerySingle
	updateMediaGallerySingle = false,
	-- Multiply FontSizeMax by line height to get the correct textbound in GenericTextLabel
	fixGenericTextLabelTextBound = false,

	-- Use design tokens to set interactive alert's min/max size
	interactiveAlertDesignTokenMinMaxSize = false,

	-- Use design tokens to set alert title's header font size
	alertTitleDesignTokenHeader = false,
	-- Strips RichText tags from string before calculating size of text
	ignoreRichTextTagsForTextSizeCalculation = false,

	-- Indicate whether the fix for the unexpected TooltipV2 Re-Render issue is enabled
	enableTooltipV2HoverControllerReRenderFix = false,

	-- Indicate whether the fix for the the TooltipV2 body font is enabled
	enableTooltipV2BodyFontFix = false,
}
