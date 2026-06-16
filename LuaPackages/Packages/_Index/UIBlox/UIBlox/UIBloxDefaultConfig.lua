return {
	-- fix conditional hooks in CoPlayFooter
	fixCoplayFooterConditionalHooks = false,

	-- enable trace level log
	enableTraceLevelLog = false,

	-- Set zindex on ResponsiveCell
	setZIndexOnGridCells = false,

	-- In ResponsiveGrid, don't default displayLines to nil. Instead use an empty range
	responsiveGridDisplayLinesNonNil = false,

	-- Indicate whether the fix for the unexpected TooltipV2 Re-Render issue is enabled
	enableTooltipV2HoverControllerReRenderFix = false,

	-- Indicate whether the fix for the the TooltipV2 body font is enabled
	enableTooltipV2BodyFontFix = false,

	-- Enable OpenType support
	enableOpenTypeSupport = false,

	-- Use Foundation button
	useFoundationButton = false,

	-- Update FullPageModal sizing on mount
	didMountUpdateFullPageModal = false,

	-- Use design tokens for sizing the shortcut bar
	useTokenizedShortcutBar = false,

	-- Pass gridInfo to renderItem when using GridView
	passRowAndColumnDataToItemInGridView = false,

	-- Add button override to ActionBar
	enableActionBarButtonOverride = false,

	-- Enable icon and style customization on Shortcut
	enableShortcutCustomization = false,

	-- Enable icon scaling for some icons used by experience details
	enableScalingForSomeEdpIcons = false,

	-- Disable token scaling so scale is always 1
	disableTokenScaling = false,
}
