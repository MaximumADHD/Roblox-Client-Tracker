local validatorRoot = script.Parent
local ButtonRoot = validatorRoot.Parent
local AppRoot = ButtonRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local validateButtonProps = require(ButtonRoot.validateButtonProps)

local ButtonType = require(ButtonRoot.Enum.ButtonType)

return t.strictInterface({
	-- buttons: A table of button tables that contain props that PrimaryContextualButton,
	-- AlertButton, PrimarySystemButton, or SecondaryButton allow. Also contains a prop "buttonType"
	-- to determine which of these button types to use.
	buttons = t.array(t.strictInterface({
		buttonType = t.optional(enumerateValidator(ButtonType)),
		props = validateButtonProps,
	})),

	buttonHeight = t.optional(t.numberMin(0)),

	-- forceFillDirection: What fill direction to force into. If nil, then the fillDirection
	-- will be Vertical and automatically change to Horizontal if any button's text is
	-- too long.
	forcedFillDirection = t.optional(t.enum(Enum.FillDirection)),

	-- marginBetween: the margin between each button.
	marginBetween = t.optional(t.numberMin(0)),

	-- minHorizontalButtonPadding: The minimum left and right padding used to calculate
	-- the when the button text overflows and automatically changes fillDirection.
	-- The overflow calculation will be if the length of the button text is over
	-- the button size - (2 * minHorizontalButtonPadding).
	minHorizontalButtonPadding = t.optional(t.numberMin(0)),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	[Roact.Ref] = t.optional(t.table),
})