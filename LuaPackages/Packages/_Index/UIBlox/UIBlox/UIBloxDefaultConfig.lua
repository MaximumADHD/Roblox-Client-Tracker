return {
	-- fixLoadableImageLoadingFailed: when true, we correctly assess if a loadable image attempt
	-- to load an asset has failed.
	fixLoadableImageLoadingFailed = false,

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

	-- indicate whether hover background fix for button is enabled
	enableGenericButtonHoverBackgroundFix = false,

	-- indicate whether fix for tooltip color styles is enabled
	enableTooltipColorStylesFix = false,

	-- if true, uses the new refactored PlayerCount
	useNewPlayerCount = false,

	-- if true, uses the new KeyLabelV2
	useNewKeyLabel = false,

	-- Bind all laser pointer buttons for left/right switching
	bindAllLaserPointerButtons = false,

	-- Enable support for the new Collectible/Limited 2.0 item restriction type
	enableCollectibleItemRestriction = false,

	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	-- for new updated media gallery
	enableMediaGalleryUpdate = false,

	-- Enable auto hiding of VR Pointer Overlay when VR sessions is not visible
	enableAutoHidingPointerOverlay = false,

	-- Enable rendering the offhand VR laser pointer
	dualVRLaserPointers = false,

	-- Removes central AnchorPoint and Position from ExperienceDetails media gallery Preview
	-- to avoid layout bug related to AutomaticSize
	removePreviewAnchor = false,

	-- Use automatic size in PillGroup to fix initial layout issues
	pillGroupAutomaticSize = false,

	-- Change how VR Panel3D aligned to the in-game panel
	vrAlignPanel3DUnderInGamePanel = false,

	-- Fix Panel3D frame-behind issues when positioned relative to the camera
	vrFixUIJitter = false,

	-- Use new scroll bar in VerticalScrollView
	useNewScrollBar = false,

	-- Link button use uiblox selecton image
	linkButtonUseSelectionImage = false,

	-- Removes default value for player tile name
	removeDefaultValueForPlayerTileName = false,

	-- Work around automatic size bug in StatGroup
	useStatGroupManualSize = false,

	-- Allow UIBlox TextButtons to be shown after Icon Buttons in the ActionBar
	enableTextButtonsInActionBar = false,

	-- Enable the option to add a button to the Toast component
	enableToastButton = false,

	-- Allow to pass buttonText and buttonType to EmptyState component
	buttonPropsForEmptyState = false,

	-- Add hover delay support for ExperienceTileV3
	experienceTileHoverDelay = false,

	-- Enable alternate platform content icon map for KeyLabel
	usePlatformContentKeyLabels = false,

	-- Indicate whether to enable the new layout for menu/cell
	enableNewMenuLayout = false,

	-- Take size of empty subtitles into consideration when rendering loading shimmer for names in PlayerTile
	fixLoadingShimmerForPlayerTileNames = false,

	-- Enable Cursor Provider on Table Cells to match console navigation styling
	enableSelectionCursorProviderOnTableCell = false,

	-- If true uses the redesigned coplayFoote
	coPlayFooterChangeColorAndShowMoreFaces = true,

	-- Bugfix for ExpandableTextArea not respecting child size
	fixExpandableTextAreaChildSizing = false,

	-- Enables the background prop for table cell to act as the cell's primary background instead of layering on top
	-- This allows us to pass in custom backgrounds that support transparency
	enableTableCellFullBackgroundOverride = false,

	-- Enables token usage in IconTab
	useTokensInIconTab = false,
}
