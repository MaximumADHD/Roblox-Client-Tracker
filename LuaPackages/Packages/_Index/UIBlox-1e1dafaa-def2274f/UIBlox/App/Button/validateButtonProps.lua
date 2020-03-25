local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local t = require(Packages.t)

local validateImage = require(Core.ImageSet.Validator.validateImage)

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
	icon = t.optional(validateImage),

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