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

	-- fixDropdownMenuListPositionAndSize: Uses the bottom inset for positioning the dropdown menu list for
	-- mobile view, allows sizing relative to parent container size, and limits dropdown width for wide view.
	fixDropdownMenuListPositionAndSize = false,

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

	-- whether you can customize aspects of the slider: background, thumb, etc.
	enableSliderCustomization = false,

	-- if true, SliderTextInput will update its value whenever the text box loses focus,
	-- otherwise it will only update when <enter> is pressed
	sliderUpdateOnDismiss = false,

	-- Adds roact-gamepad navigation support to IconButton
	enableIconButtonGamepadSupport = false,

	-- if true, you can customize Item Tiles with variable sized text underneath, instead of
	-- always using Header2.
	enableAdjustableTextUnderTile = false,

	-- use VirtualizedList.BidirectionalFlatList in HorizontalCarousel component instead of InfiniteScroller
	enableVirtualizedListForCarousel = false,
}
