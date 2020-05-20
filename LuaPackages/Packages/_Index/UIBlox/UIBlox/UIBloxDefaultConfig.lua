return {
	-- fixToastResizeConfig: fixes bug where Toasts
	-- will not resize when text changes.
	fixToastResizeConfig = false,

	-- expandableTextAutomaticResizeConfig: refactor of ExpandableTextArea to
	-- automatically resize to fit its container. Also removes width prop.
	expandableTextAutomaticResizeConfig = false,

	-- enableAlertTitleIconConfig: turning this on allows the Alert compoennt to take
	-- in an optional titleIcon prop, which displays an icon above the Aletr's title.
	enableAlertTitleIconConfig = false,

	--styleRefactorConfig: switch to use the refactored style system from Core and App.
	styleRefactorConfig = false,

	-- fixes the premium icon and text placement on item tiles
	-- when the flag is false, the second line of title text will align with the start of the text.
	-- when the flag is true, the second line will align with the start of the premium icon.
	fixItemTilePremiumIcon = false,

	--modalWindowAnchorPoint: Allows passing an anchorPoint to a modalWindow (makes it easier
	-- to use with a tween), and fix issues when the anchorPoint/position are not the usual (0.5, 0.5)
	modalWindowAnchorPoint = false,
}
