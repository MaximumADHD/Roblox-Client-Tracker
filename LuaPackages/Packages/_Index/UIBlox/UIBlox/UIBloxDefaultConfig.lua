return {
	-- Changes to UIBlox's LoadableImage so that it takes advantage of new ContentProvider APIs that give better feedback
	-- on loading/pending/resolved state of content.
	loadableImageResponsiveThumbnails = false,

	-- styleRefactorConfig: DEPRECATED: this is a no-op, but is left in so that it's easier to upgrade consumers of
	-- UIBlox that try to assign a value to it (the config layer will throw if assigning to a value that's not in the
	-- default config)
	styleRefactorConfig = false,

	-- Warning for deprecated components.
	-- This is not a flag but a temporary config to show a warning for using deprecated components.
	-- current deprecated components are,
	-- src\App\Loading\Enum\LoadingState.lua
	-- src\App\Loading\Enum\ReloadingStyle.lua
	devHasDeprecationWarning = false,

	-- useNewGenericTextLabelProps: when false, GenericTextLabel component supports AutomaticSize, TextSize, and Size
	-- props from a traditional TextLabel
	useNewGenericTextLabelProps = false,

	-- New version of vertical scroll view
	useNewVerticalScrollView = false,

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

	-- Use curved panels with antialiasing in VR
	useCurvedPanel3D = false,

	-- Removes central AnchorPoint and Position from ExperienceDetails media gallery Preview
	-- to avoid layout bug related to AutomaticSize
	removePreviewAnchor = false,

	-- Use automatic size in PillGroup to fix initial layout issues
	pillGroupAutomaticSize = false,

	-- Indicate whether design token support is enabled
	enableRoDSDesignTokenSupport = false,

	-- Change how VR Panel3D aligned to the in-game panel
	vrAlignPanel3DUnderInGamePanel = false,

	-- Fix Panel3D frame-behind issues when positioned relative to the camera
	vrFixUIJitter = false,

	-- Indicate whether fix for TileOverlay is enabled
	enableTileOverlayFix = false,

	-- Use a selectedPills prop in PillGroup, rather than tracking selection internally
	usePillGroupSelectedPills = false,
}
