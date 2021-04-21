return {
	-- enableAlertTitleIconConfig: turning this on allows the Alert component to take
	-- in an optional titleIcon prop, which displays an icon above the Alert's title.
	enableAlertTitleIconConfig = false,

	--styleRefactorConfig: switch to use the refactored style system from Core and App.
	styleRefactorConfig = false,

	--enableExperimentalGamepadSupport: Enables support of gamepad navigation via the roact-gamepad
	-- library. This is currently experimental and not yet ready for release.
	enableExperimentalGamepadSupport = false,

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

	-- hideHorizontalCarouselScrollButtonFix: Enables fix to hide the scroll right button for the
	-- HorizontalCarousel when all items are visible.
	hideHorizontalCarouselScrollButtonFix = false,

	-- useHeaderBarV2: Controls the usage of headerBarV2
	useHeaderBarV2 = false,

	-- useTileThumbnailV2: Controls the usage of TileThumbnailV2
	useTileThumbnailV2 = false,

	-- enableAlertCustomTitleFooterConfig: Enables custom title and footer content for the Alert
	enableAlertCustomTitleFooterConfig = false,

	-- tooltipWidthUsesHeaderToo: Turn on fix for tooltip which calculates the width of the tooltip container
	-- based on the body and title text width.
	tooltipWidthUsesHeaderToo = false,

	-- useUpdatedCheckbox: Enables FitFrame for InputButton and gives Checkbox a gamepad
	-- selection cursor.
	useUpdatedCheckbox = false,
}
