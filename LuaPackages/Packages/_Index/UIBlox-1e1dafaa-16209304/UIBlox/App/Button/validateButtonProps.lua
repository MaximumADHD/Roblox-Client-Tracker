local ButtonRoot = script.Parent
local CoreRoot = ButtonRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent
local t = require(Packages.t)

return t.strictInterface({
	--The size of the button
	size = t.optional(t.UDim2),

	--The anchor point of the button
	anchorPoint = t.optional(t.Vector2),

	--The position of the button
	position = t.optional(t.UDim2),

	--The layout order of the button
	layoutOrder = t.optional(t.number),

	--The icon of the button
	icon = t.optional(t.string),

	--The text of the button
	text = t.optional(t.string),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--The activated callback for the button
	onActivated = t.callback,

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),
})