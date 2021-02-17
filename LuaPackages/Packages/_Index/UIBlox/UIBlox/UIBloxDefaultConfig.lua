return {
	-- enableAlertTitleIconConfig: turning this on allows the Alert component to take
	-- in an optional titleIcon prop, which displays an icon above the Alert's title.
	enableAlertTitleIconConfig = false,

	--styleRefactorConfig: switch to use the refactored style system from Core and App.
	styleRefactorConfig = false,

	-- fixes the premium icon and text placement on item tiles
	-- when the flag is false, the second line of title text will align with the start of the text.
	-- when the flag is true, the second line will align with the start of the premium icon.
	fixItemTilePremiumIcon = false,

	--enableExperimentalGamepadSupport: Enables support of gamepad navigation via the roact-gamepad
	-- library. This is currently experimental and not yet ready for release.
	enableExperimentalGamepadSupport = false,

	--useNewUICornerRoundedCorners: Uses the new roblox CornerUI Instance instead of mask-based UI corners
	useNewUICornerRoundedCorners = false,

	-- genericSliderFilterOldTouchInputs: Filters inputObjects that trigger inputBegan with a
	-- non Enum.UserInputState.Begin UserInputState in the GenericSlider component
	genericSliderFilterOldTouchInputs = false,
}
