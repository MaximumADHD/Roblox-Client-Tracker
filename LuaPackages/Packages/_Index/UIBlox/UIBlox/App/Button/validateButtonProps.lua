local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)
local t = require(Packages.t)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local StandardButtonSize = require(Core.Button.Enum.StandardButtonSize)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local isReactTagProp = require(UIBlox.Utility.isReactTagProp)

-- standardSize and maxWidth are only allowed if UIBloxConfig.enableStandardButtonSizes is on
-- These special functions let us flag the prop validation in way that dynamically checks the flag's value,
-- which is good for tests which dynamically modify flags, instead of just checking the flag once on init.
local function standardSizeValidator(value)
	if UIBloxConfig.enableStandardButtonSizes then
		return t.optional(enumerateValidator(StandardButtonSize))(value)
	else
		return value == nil
	end
end
local function maxWidthValidator(value)
	if UIBloxConfig.enableStandardButtonSizes then
		return t.optional(t.numberPositive)(value)
	else
		return value == nil
	end
end
local function buttonType(value)
	return t.optional(t.userdata)(value)
end

return t.strictInterface({
	[React.Tag] = isReactTagProp,

	-- The type of the button
	buttonType = buttonType,

	-- The automatic size of the button
	automaticSize = t.optional(t.EnumItem),

	--The size of the button
	size = t.optional(t.UDim2),

	-- Standard button size (Regular/Small/XSmall) is optional
	standardSize = standardSizeValidator,

	--For standard buttons, optionally override the default max width of 640 for Regular and Small,
	--or set a max width for XSmall (e.g. width of parent container)
	maxWidth = maxWidthValidator,

	--For standard buttons, optionally override the default width behavior.
	--If true: button just wide enough to fit its text. If false: default to the full width of its container.
	fitContent = t.optional(t.boolean),

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

	--Determine whether hover background is enabled
	isHoverBackgroundEnabled = t.optional(t.boolean),

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

	[React.Change.AbsoluteSize] = t.optional(t.callback),
	[React.Change.AbsolutePosition] = t.optional(t.callback),
})
