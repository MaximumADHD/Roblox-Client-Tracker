return {
	-- styleRefactorConfig: DEPRECATED: this is a no-op, but is left in so that it's easier to upgrade consumers of
	-- UIBlox that try to assign a value to it (the config layer will throw if assigning to a value that's not in the
	-- default config)
	styleRefactorConfig = false,

	--useNewUICornerRoundedCorners: Uses the new roblox CornerUI Instance instead of mask-based UI corners
	useNewUICornerRoundedCorners = false,

	-- genericSliderFilterOldTouchInputs: Filters inputObjects that trigger inputBegan with a
	-- non Enum.UserInputState.Begin UserInputState in the GenericSlider component
	genericSliderFilterOldTouchInputs = false,

	-- useAnimatedXboxCursors: Uses the new animated selection cursors when selecting UI elements in xbox
	useAnimatedXboxCursors = false,

	--allowSystemBarToAcceptString: Allows you to pass a string as the value for 'badgeValue'. Passing a
	--string will show the badge even if the string is empty.
	allowSystemBarToAcceptString = false,

	-- emptyStateControllerSupport: Enables controller support for the EmptyState component.
	emptyStateControllerSupport = false,

	-- useTileThumbnailV2: Controls the usage of TileThumbnailV2
	useTileThumbnailV2 = false,

	-- useUpdatedCheckbox: Enables FitFrame for InputButton and gives Checkbox a gamepad
	-- selection cursor.
	useUpdatedCheckbox = false,

	-- enableSubtitleOnTile: Enables a subtitle label positioned below the title
	-- that can be passed in as a prop.
	enableSubtitleOnTile = false,

	-- Warning for deprecated components.
	-- This is not a flag but a temporary config to show a warning for using deprecated components.
	-- current deprecated components are,
	-- src\App\Loading\Enum\LoadingState.lua
	-- src\App\Loading\Enum\ReloadingStyle.lua
	devHasDeprecationWarning = false,

	-- useNewGenericTextLabelProps: when false, GenericTextLabel component supports AutomaticSize, TextSize, and Size
	-- props from a traditional TextLabel
	useNewGenericTextLabelProps = false,

	-- genericButtonInputChanges: Allows delayed input + input icon on buttons
	genericButtonInputChanges = false,

	-- enableGamepadKeyCodeSupportForKeyLabel: Allows KeyLabel to accept a gamepad
	-- KeyCode and displays the appropriate gamepad button image
	enableGamepadKeyCodeSupportForKeyLabel = false,

	-- enableAnimatedCursorForNonRoactGamepadComponent: enable animated selection cursor for contextual menu
	-- without using RoactGamepad component in IGM
	enableAnimatedCursorForNonRoactGamepadComponent = false,

	enableCustomMinPaddingForLinkButton = false,

	-- New version of vertical scroll view
	useNewVerticalScrollView = false,

	-- Adds roact-gamepad navigation support to RadioButtonList and RadioButton.
	enableRadioButtonGamepadSupport = false,

	-- Config to enable new icon sizes
	enableNewIconSizes = false,

	-- enableActionBarLayoutFix : Indicate whether the fix to update the action bar layout is enabled
	enableActionBarLayoutFix = false,

	-- enablePlayerTilePaddingFix : Indicate whether the fix to update the player tile padding is enabled
	enablePlayerTilePaddingFix = false,

	-- config for supporting right side gadget for Menu Cell
	enableRightSideGadgetView = false,

	-- indicate whether hover background fix for button is enabled
	enableGenericButtonHoverBackgroundFix = false,

	-- Allow standardSize enum (Regular/Small/XSmall) for GenericButton, PrimaryContextualButton, etc.
	enableStandardButtonSizes = false,

	-- indicate whether fix for tooltip color styles is enabled
	enableTooltipColorStylesFix = false,

	-- if true, SliderTextInput will update its value whenever the text box loses focus,
	-- otherwise it will only update when <enter> is pressed
	sliderUpdateOnDismiss = false,

	-- if true, the text component in DropdownMenuCell is truncated
	-- otherwise it overflows the icon and the component boundaries if it's too long
	fixDropdownMenuCellTextSize = false,

	-- if true, devMode features (like props validation) will be enabled
	devMode = false,

	-- if true, uses the new refactored PlayerCount
	useNewPlayerCount = false,

	-- Add a new ItemTile Icon for dynamic heads
	useDynamicHeadIcon = false,

	-- Support React tags when running in DEV mode
	enableReactTag = false,

	-- disable tooltip animation
	disableTooltipAnimation = false,

	-- support bottom aligns items in SystemBar
	systemBarBottomAlignedItems = false,

	-- Enable fix for the image set resolution scale
	enableImageSetResolutionScaleFix = false,

	-- Enable Button to take buttonType prop that is used in ActionBar to manually specify a button style
	enableActionBarButtonTypeOverride = false,

	-- Register gamepad buttons for VR laser pointer input
	moveBindActivate = false,
	-- Enable support for the new Collectible/Limited 2.0 item restriction type
	enableCollectibleItemRestriction = false,

	-- New color palettes of color system 1.1
	useNewThemeColorPalettes = false,

	detailsTemplateUseNewGradientHeader = false,

	-- support updating DropdownMenu selectedValue from placeholder when the new cellDatas does not
	-- contain the current selecteValue
	enableDropdownMenuUpdateSelectedValueFromPlaceholder = false,

	-- Enable auto hiding of VR Pointer Overlay when VR sessions is not visible
	enableAutoHidingPointerOverlay = false,

	-- Should we apply a fix that allows Camera.HeadScale to affect VR tracking positions
	vrApplyHeadScale = false,

	-- True if left/right navigation arrows should be shown for TagGroup (mouse and keyboard only)
	arrowsOnTagGroup = false,
}
