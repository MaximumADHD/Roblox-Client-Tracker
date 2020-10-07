local Validator = script.Parent
local Toast = Validator.Parent
local Dialog = Toast.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

return t.strictInterface({
	iconColorStyle = t.optional(validateColorInfo),
	-- Optional image to be displayed in the toast.
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.optional(t.Vector2),
	iconChildren = t.optional(t.table),
	onActivated = t.optional(t.callback),
	onAppeared = t.optional(t.callback),
	onDismissed = t.optional(t.callback),
	swipeUpDismiss = t.optional(t.boolean),
	toastSubtitle = t.optional(t.string),
	toastTitle = t.string,
})