local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local t = require(Packages.t)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

return t.array(t.strictInterface({
	-- Icon can either be an Image in a ImageSet or a regular image asset
	icon = t.optional(t.union(t.table, t.string)),
	-- The label for the specific button
	text = t.string,
	-- The function that fires when the button is clicked
	onActivated = t.callback,
	-- If the cell is disabled or not
	disabled = t.optional(t.boolean),

	-- Input binding key for gamepad support
	inputBindingKey = t.optional(t.string),

	-- A KeyCode to display a keycode hint for, the display string based on
	-- the users keyboard or gamepad button is displayed.
	keyCodeLabel = t.optional(t.union(
		t.enum(Enum.KeyCode),
		t.strictInterface({
			key = t.enum(Enum.KeyCode),
			axis = t.optional(t.string),
		})
	)),
	-- If the cell is selected or not
	selected = t.optional(t.boolean),
	stayOnActivated = t.optional(t.boolean),

	renderRightSideGadget = t.optional(t.callback),
	rightSideGadgetSize = t.optional(t.Vector2),

	-- A value to override the Icon ImageColor with
	iconColorOverride = t.optional(t.Color3),
	-- A value to override the Text TextColor with
	textColorOverride = t.optional(t.Color3),

	-- Add offset to the left of the divider separating elements
	dividerOffset = t.optional(t.number),
	-- Size of the divider
	dividerSize = t.optional(t.number),
	-- Padding to the left of the text
	leftPaddingOffset = t.optional(t.number),
	-- The font style for the element text
	fontStyle = t.optional(t.union(t.string, validateFontInfo, validateTypographyInfo)),
	-- Size of the icon
	iconSize = t.optional(t.integer),
	-- Size of the SelectedIcon
	selectedIconSize = t.optional(t.integer),
	-- Padding at the left side of the Icon
	iconPaddingLeft = t.optional(t.integer),
	-- Padding of the text frame
	textPadding = t.optional(t.strictInterface({
		-- Padding at the left side of the text frame
		left = t.integer,
		-- Padding at the right side of the text frame
		right = t.integer,
	})),
	-- Padding at the right side of the SelectedIcon
	selectedIconPaddingRight = t.optional(t.integer),
	-- Padding at the right side of the keyLabel
	keyLabelPaddingRight = t.optional(t.integer),
	-- Left/right padding for the container when there's only text in the cell
	textOnlyPadding = t.optional(t.integer),
	-- Contains override props for the text label
	buttonTextOverride = t.optional(t.table),
	-- Size of border rounded corner
	borderCornerRadius = t.optional(t.integer),
	-- Background of the cell
	background = t.optional(validateColorInfo),
}))
