return {
	-- This fixes slider behavior when they are within a SurfaceGui instead of a ScreenGui
	allowSlidersToWorkInSurfaceGuis = false,

	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	-- Link button use uiblox selecton image
	linkButtonUseSelectionImage = false,

	-- Work around automatic size bug in StatGroup
	useStatGroupManualSize = false,

	-- Allow UIBlox TextButtons to be shown after Icon Buttons in the ActionBar
	enableTextButtonsInActionBar = false,

	-- Indicate whether to enable the new layout for menu/cell
	enableNewMenuLayout = false,

	-- Enables token usage in IconTab
	useTokensInIconTab = false,

	-- Enable IconButton to calculate size based on token values
	useTokensSizeInIconButton = false,

	-- Adds a UISizeLimit to PartialPageModal.lua
	partialPageModalSizeLimit = false,

	-- enable tokens for action bar
	enableActionBarTokens = false,

	-- enable trace level log
	enableTraceLevelLog = false,

	-- Bugfix for the fixed-height basemenu's outer frame is selectable
	fixFixedHeightMenuFrameSelectable = false,

	-- Add gamepad support to LinkButton
	enableLinkButtonGamepadSupport = false,

	-- Destroy laser pointers if the PointerOverlay component is unmounted
	destroyLaserPointersOnUnmount = false,

	-- Use new selection cursor in related components
	useNewSelectionCursor = false,

	-- Set zindex on ResponsiveCell
	setZIndexOnGridCells = false,

	-- Use the new features of ShortcutBar for responding to last input type and fadeout
	useInputResponsiveShortcutBarChanges = false,

	-- Use tokens for StatGroup
	useTokensStatGroup = false,

	-- do not mount the Details Page Header Action Bar when the Sticky ActionBar
	-- active
	hideHeaderActionBarWhenStickyBarActive = false,
}
