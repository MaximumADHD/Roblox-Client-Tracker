return {
	-- styleRefactorConfig: DEPRECATED: this is a no-op, but is left in so that it's easier to upgrade consumers of
	-- UIBlox that try to assign a value to it (the config layer will throw if assigning to a value that's not in the
	-- default config)
	styleRefactorConfig = false,

	-- useNewGenericTextLabelProps: when false, GenericTextLabel component supports AutomaticSize, TextSize, and Size
	-- props from a traditional TextLabel
	useNewGenericTextLabelProps = false,

	-- Enables token usage in PlayerTile to support scalability
	useTokensInPlayerTile = false,

	-- Config to enable new icon sizes
	enableNewIconSizes = false,

	-- config for supporting right side gadget for Menu Cell
	enableRightSideGadgetView = false,

	-- indicate whether fix for tooltip color styles is enabled
	enableTooltipColorStylesFix = false,

	-- Enable BackgroundContrast background for RateCount
	enableRateCountBackgroundContrast = false,

	-- Bind all laser pointer buttons for left/right switching
	bindAllLaserPointerButtons = false,

	-- This fixes slider behavior when they are within a SurfaceGui instead of a ScreenGui
	allowSlidersToWorkInSurfaceGuis = false,

	-- Enable support for the new Collectible/Limited 2.0 item restriction type
	enableCollectibleItemRestriction = false,

	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	-- Enable rendering the offhand VR laser pointer
	dualVRLaserPointers = false,

	-- Removes central AnchorPoint and Position from ExperienceDetails media gallery Preview
	-- to avoid layout bug related to AutomaticSize
	removePreviewAnchor = false,

	-- Fix Panel3D frame-behind issues when positioned relative to the camera
	vrFixUIJitter = false,

	-- Allow narrower SegmentedControl
	allowNarrowerSegmentedControl = false,

	-- Use new scroll bar in VerticalScrollView
	useNewScrollBar = false,

	-- Fix new scroll bar's margin and paddings in 10ftUi VerticalScrollView
	fixScrollBarLayout10ft = false,

	-- Link button use uiblox selecton image
	linkButtonUseSelectionImage = false,

	-- Work around automatic size bug in StatGroup
	useStatGroupManualSize = false,

	-- Allow UIBlox TextButtons to be shown after Icon Buttons in the ActionBar
	enableTextButtonsInActionBar = false,

	-- Enable alternate platform content icon map for KeyLabel
	usePlatformContentKeyLabels = false,

	-- Indicate whether to enable the new layout for menu/cell
	enableNewMenuLayout = false,

	-- Take size of empty subtitles into consideration when rendering loading shimmer for names in PlayerTile
	fixLoadingShimmerForPlayerTileNames = false,

	-- Enable Cursor Provider on Table Cells to match console navigation styling
	enableSelectionCursorProviderOnTableCell = false,

	-- If true uses the redesigned coplayFoote
	coPlayFooterChangeColorAndShowMoreFaces = false,

	-- Bugfix for ExpandableTextArea not respecting child size
	fixExpandableTextAreaChildSizing = false,

	-- Enables the background prop for table cell to act as the cell's primary background instead of layering on top
	-- This allows us to pass in custom backgrounds that support transparency
	enableTableCellFullBackgroundOverride = false,

	-- Enables token usage in IconTab
	useTokensInIconTab = false,

	-- Enable IconButton to calculate size based on token values
	useTokensSizeInIconButton = false,

	-- Adds a UISizeLimit to PartialPageModal.lua
	partialPageModalSizeLimit = false,

	-- Bugfix for the zindex of ResponsiveRow inside ResponsiveCarousel not being high enough
	fixResponsiveCarouselRowZIndex = false,

	-- Increase the resolution in ImageSet components for ten foot UI
	increaseImageResolutionForTenFoot = false,

	-- Adds an option to change the kind of button shown in a toast
	toastButtonTypesAutoAlignAndNoBorder = false,

	-- enable tokens for action bar
	enableActionBarTokens = false,

	-- Bugfix for the coplay footer badge emphasis border rendering incorrectly
	fixCoPlayFooterBadgeEmphasisBorder = false,

	-- Bugfix for the coplay footer badge text being off center
	fixCoPlayFooterBadgeTextCenteringAndZIndex = false,

	-- enable logger in uiblox.
	-- This is a FFlag config, it will be removed once Logger become stable in prod.
	enableLogger = false,

	-- enable trace level log
	enableTraceLevelLog = false,

	-- Bugfix for the fixed-height basemenu's outer frame is selectable
	fixFixedHeightMenuFrameSelectable = false,

	-- Switch the LoadableImage default loading strategy to default.
	makeDefaultLoadingStrategyDefault = false,

	-- Fix VerticalScrollView error on Event.SelectionChanged
	fixVerticalScrollViewOnSelectionChanged = false,

	-- Add gamepad support to LinkButton
	enableLinkButtonGamepadSupport = false,

	-- Destroy laser pointers if the PointerOverlay component is unmounted
	destroyLaserPointersOnUnmount = false,
}
