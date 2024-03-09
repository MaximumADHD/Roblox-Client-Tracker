return {
	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	-- Indicate whether to enable the new layout for menu/cell
	enableNewMenuLayout = false,

	-- Enables token usage in IconTab
	useTokensInIconTab = false,

	-- Enable IconButton to calculate size based on token values
	useTokensSizeInIconButton = false,

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

	-- Support ControlState.Selected in the hover controller for TooltipV2
	supportControlStateSelectedForTooltipHover = false,
}
