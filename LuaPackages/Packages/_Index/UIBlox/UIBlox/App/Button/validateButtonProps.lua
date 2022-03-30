local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local t = require(Packages.t)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)

return t.strictInterface({
	-- The automatic size of the button
	automaticSize = t.optional(t.EnumItem),

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

	--The icon of the controller input (A/B/X/Y button) needed to activate the button
	inputIcon = t.optional(validateImage),

	--The font style for the button text
	fontStyle = t.optional(t.union(t.string, validateFontInfo)),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--Determine if it should setup a delay on the input
	isDelayedInput = t.optional(t.boolean),

	--Used to start the input delay, set to true when you want to start the animation.
	enableInputDelayed = t.optional(t.boolean),

	--Amount of seconds to delay input
	delayInputSeconds = t.optional(t.numberPositive),

	--The activated callback for the button
	onActivated = t.callback,

	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- Gamepad Support props
	NextSelectionDown = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	buttonRef = t.optional(t.table),
})
