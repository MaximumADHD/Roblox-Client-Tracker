return {
	-- enable trace level log
	enableTraceLevelLog = false,

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

	-- Indicate whether the fix for button loading shimmer panel not covering edges is enabled
	enableButtonLoadingShimmerPanelFix = false,

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

	-- Add the option to pass in a visibility property for Experience Details Page components
	addEdpComponentVisibility = false,

	-- Indicate whether the fix for the additional NavigationBar#onSelectionChanged call is enabled
	enableNavigationBarSelectionChangeFix = false,

	-- Use colors from Foundation tokens
	useFoundationColors = false,

	-- Use new Foundation components
	useFoundationSkeleton = false,

	-- Use Foundation button
	useFoundationButton = false,

	-- Update FullPageModal sizing on mount
	didMountUpdateFullPageModal = false,

	-- Add optional action bar label to DetailsPageHeader
	enableDetailsPageHeaderActionBarLabel = false,

	-- Fix gradient issue in ExpandableTextArea in color update
	enableExpandableTextAreaGradientFix = false,

	-- Fix incorrect disabling of LaserPointer in PointerOverlay
	fixLaserPointerDisable = false,

	-- Enable Panel managed anchoring for Panel3D
	enablePanelManagedAnchoring = false,

	-- Fix press state for modal bottom sheet
	fixModalBottomSheetPressState = false,

	-- Fix the AppNav related test issues
	fixAppNavTestIssues = false,

	-- Update NavigationBar & NavigationRail's backgrounds to be transparent
	enableAppNavTransparentBackground = false,

	-- Enable the workaround to fix the text flickering engine bug
	enableAppNavTextFlickerFix = false,

	-- Enable better laser pointer mode
	enableBetterLaserPointerMode = false,

	-- Remove Details Page files moved to LuaApps
	moveDetailsPageToLuaApps = false,

	-- Allow to disable color mapping for the color experiment on SignUp/Login
	allowDisableColorMapping = false,

	-- Uses engine rich text support for GetTextBoundsAsync
	useEngineRichTextBounds = false,

	-- Uses the Foundation Interactable component instead
	useFoundationInteractable = false,

	-- Adds BuilderIcon migration to createImageSetComponent,
	migrateBuilderIcon = false,

	-- Use design tokens for sizing the shortcut bar
	useTokenizedShortcutBar = false,

	-- Pass gridInfo to renderItem when using GridView
	passRowAndColumnDataToItemInGridView = false,

	-- Always use provided ref for button
	useProvidedRefForButton = false,
}
