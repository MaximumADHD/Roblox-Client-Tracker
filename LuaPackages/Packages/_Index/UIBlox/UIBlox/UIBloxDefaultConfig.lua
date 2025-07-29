return {
	-- enable trace level log
	enableTraceLevelLog = false,

	-- Add gamepad support to LinkButton
	enableLinkButtonGamepadSupport = false,

	-- Set zindex on ResponsiveCell
	setZIndexOnGridCells = false,

	-- do not mount the Details Page Header Action Bar when the Sticky ActionBar
	-- active
	hideHeaderActionBarWhenStickyBarActive = false,

	-- In ResponsiveGrid, don't default displayLines to nil. Instead use an empty range
	responsiveGridDisplayLinesNonNil = false,

	-- Use SurfaceGuiWithAdornee for Panel3D
	refactorPanel3D = false,

	-- use new refactored interactable
	refactorInteractable = false,

	-- Support ControlState.Selected in the hover controller for TooltipV2
	supportControlStateSelectedForTooltipHover = false,

	-- Use new designed HeaderBar
	useNewHeaderBar = false,

	-- Use InteractionFeedbackManager, which is injected via InteractionFeedbackContext
	enableInteractionFeedback = false,

	-- Indicate whether the fix for the unexpected TooltipV2 Re-Render issue is enabled
	enableTooltipV2HoverControllerReRenderFix = false,

	-- Indicate whether the fix for the the TooltipV2 body font is enabled
	enableTooltipV2BodyFontFix = false,

	-- Disable token scaling for console
	disableTokenScalingForConsole = false,

	-- Bugfix for HeaderBar title flickering
	fixHeaderBarTitleFlickering = false,

	-- Bugfix for HeaderBar dependencies array
	fixHeaderBarDependenciesArray = false,

	-- Enable OpenType support
	enableOpenTypeSupport = false,

	-- Defer loading component’s code until it is rendered for the first time
	enableCreateLazyComponent = false,

	-- Add the option to pass in callbacks for AccordionView that run on expansion and collapse
	addCallbacksToAccordionView = false,

	-- Indicate whether the fix for the additional NavigationBar#onSelectionChanged call is enabled
	enableNavigationBarSelectionChangeFix = false,

	-- Use new Foundation components
	useFoundationSkeleton = false,

	-- Use Foundation button
	useFoundationButton = false,

	-- Update FullPageModal sizing on mount
	didMountUpdateFullPageModal = false,

	-- Add optional action bar label to DetailsPageHeader
	enableDetailsPageHeaderActionBarLabel = false,

	-- Fix incorrect disabling of LaserPointer in PointerOverlay
	fixLaserPointerDisable = false,

	-- Enable Panel managed anchoring for Panel3D
	enablePanelManagedAnchoring = false,

	-- Enable better laser pointer mode
	enableBetterLaserPointerMode = false,

	-- Remove Details Page files moved to LuaApps
	moveDetailsPageToLuaApps = false,

	-- Allow to disable color mapping for the color experiment on SignUp/Login
	allowDisableColorMapping = false,

	-- Consolidate AnimatedGradients and update to use Foundation tokens
	updateAnimatedGradient = false,

	-- Uses engine rich text support for GetTextBoundsAsync
	useEngineRichTextBounds = false,

	-- Uses the Foundation Interactable component instead
	useFoundationInteractable = false,

	-- Uses the Foundation selectionCursor instead
	useFoundationSelectionCursor = false,

	-- Adds BuilderIcon migration to createImageSetComponent,
	migrateBuilderIcon = false,

	-- Use design tokens for sizing the shortcut bar
	useTokenizedShortcutBar = false,

	-- Pass gridInfo to renderItem when using GridView
	passRowAndColumnDataToItemInGridView = false,

	-- Always use provided ref for button
	useProvidedRefForButton = false,

	-- Enable font scaling for legacy fonts
	enableFontScaling = false,

	-- Add button override to ActionBar
	enableActionBarButtonOverride = false,

	-- Enable icon and style customization on Shortcut
	enableShortcutCustomization = false,

	-- Enable icon scaling for some icons used by experience details
	enableScalingForSomeEdpIcons = false,

	-- Fix PlayerContext text width to not exceed it's frame
	fixPlayerContextTextWidth = false,
}
