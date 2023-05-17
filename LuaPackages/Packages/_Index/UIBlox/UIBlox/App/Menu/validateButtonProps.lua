local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

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
}))
