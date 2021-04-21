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
	-- optional sequence number so you can, if you want to, display the same
	-- toast message twice in a row (Without this SlideFromTopToast would 'eat'
	-- the second, matching message without notifying the caller about it being
	-- dismissed or activated or whatever)
	sequenceNumber = t.optional(t.integer),
	toastTitle = t.string,
})