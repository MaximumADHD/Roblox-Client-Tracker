local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

return t.array(t.strictInterface({
	-- Icon can either be an Image in a ImageSet or a regular image asset
	icon = t.optional(t.union(t.table, t.string)),
	text = t.string,
	onActivated = t.callback,
	disabled = t.optional(t.boolean),

	-- A KeyCode to display a keycode hint for, the display string based on the users keyboard is displayed.
	keyCodeLabel = t.optional(t.enum(Enum.KeyCode)),
	selected = t.optional(t.boolean),

	iconColorOverride = t.optional(t.Color3),
	textColorOverride = t.optional(t.Color3),
}))