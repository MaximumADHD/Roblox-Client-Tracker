return {
	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

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

	-- Add a ref that points to ScrollingFrame in ResponsiveBaseRow
	responsiveBaseRowScrollingFrameRef = false,

	-- Use GetTextBoundsAsync instead of GetTextSize to guarantee a correct result
	useGetTextBoundsAsync = false,

	-- use new refactored interactable
	refactorInteractable = false,

	-- Support ControlState.Selected in the hover controller for TooltipV2
	supportControlStateSelectedForTooltipHover = false,

	-- Use new designed HeaderBar
	useNewHeaderBar = false,

	-- Use InteractionFeedbackManager, which is injected via InteractionFeedbackContext
	enableInteractionFeedback = false,

	-- Fix existing bugs and update MediaGallerySingle
	updateMediaGallerySingle = false,
	-- Multiply FontSizeMax by line height to get the correct textbound in GenericTextLabel
	fixGenericTextLabelTextBound = false,

	-- Indicate whether the fix for the unexpected TooltipV2 Re-Render issue is enabled
	enableTooltipV2HoverControllerReRenderFix = false,

	-- Indicate whether the fix for the the TooltipV2 body font is enabled
	enableTooltipV2BodyFontFix = false,

	-- Allow the user to specify the input type for TextField
	enableTextFieldInputType = false,

	-- Disable token scaling for console
	disableTokenScalingForConsole = false,

	-- Use automatic sizing for the text under PlayerTile
	playerTileAutomaticSizeXY = false,

	-- Flag for updating tile and cell to use Interactable
	useInteractableWithTileAndCell = false,

	-- Add optional max height to getTextHeight
	getTextHeightOptionalMaxHeight = false,

	-- Add support for large-scaled text in Cell
	useAutomaticHeightInTableCell = false,

	-- Indicate whether the fix for button loading shimmer panel not covering edges is enabled
	enableButtonLoadingShimmerPanelFix = false,

	-- Use automatic sizing in stat group
	useAutomaticSizeInStatGroup = false,

	-- Use GetTextSize and AutomaticSize to add support for larger than default text in Tile and TileName
	refactorTileTextHeights = false,

	-- Bugfix for HeaderBar title flickering
	fixHeaderBarTitleFlickering = false,

	-- Bugfix for HeaderBar dependencies array
	fixHeaderBarDependenciesArray = false,

	-- Enable OpenType support
	enableOpenTypeSupport = false,

	-- Fixes input button to better suppot large text
	ensureTextWrapsInputButton = false,

	-- Align text on the left of CellHeadDetail
	leftAlignCellHeadDetailText = false,

	-- Defer loading component’s code until it is rendered for the first time
	enableCreateLazyComponent = false,

	-- Some components expose calculate functions as member function, move it out as a separate function
	useSeparatedCalcFunction = false,

	-- Use automatic size Y in header bar s.t text does not get cut off at larger-than-default sizes
	useAutomaticSizeYHeaderBar = false,

	-- Add the option to pass in callbacks for AccordionView that run on expansion and collapse
	addCallbacksToAccordionView = false,

	-- Define size and reposition ModalTitle s.t text does not overflow container bounds
	resizeModalTitle = false,

	-- Use textSizeOffset to better support large text in TileContentPanel
	useTextSizeOffsetTileContentPanel = false,

	-- Add the option to pass in a visibility property for Experience Details Page components
	addEdpComponentVisibility = false,

	-- Indicate whether the fix for the additional NavigationBar#onSelectionChanged call is enabled
	enableNavigationBarSelectionChangeFix = false,

	-- Use colors from Foundation tokens
	useFoundationColors = false,

	-- Update FullPageModal sizing on mount
	didMountUpdateFullPageModal = false,

	-- Removes math error absoluteSize setting statement
	fixLayerCollectorProviderAbsoluteSize = false,

	-- Fix the horizontalAlignment prop on Tile
	tileHorizontalAlignmentFix = false,

	-- Set name text in playertile to richtext
	enableRichTextPlayerTileName = false,

	-- Enable useStyleMetadata hook
	enableUseStyleMetadata = false,
}
