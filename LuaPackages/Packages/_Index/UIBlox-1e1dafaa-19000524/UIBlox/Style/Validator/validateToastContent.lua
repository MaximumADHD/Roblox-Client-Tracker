local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)
local validateColorInfo = require(UIBloxRoot.Style.Validator.validateColorInfo)

return t.strictInterface({
	iconColorStyle = t.optional(validateColorInfo),
	-- Optional image to be displayed in the toast.
	iconImage = t.optional(t.union(t.table, t.string)),
	iconSize = t.optional(t.Vector2),
	onActivated = t.optional(t.callback),
	onAppeared = t.optional(t.callback),
	onDismissed = t.optional(t.callback),
	swipeUpDismiss = t.optional(t.boolean),
	toastSubtitle = t.optional(t.string),
	toastTitle = t.string,
})