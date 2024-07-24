local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

local ButtonType = require(ButtonRoot.Enum.ButtonType)
local StandardButtonSize = require(Core.Button.Enum.StandardButtonSize)
local GenericButton = require(Core.Button.GenericButton)
local ControlState = require(Core.Control.Enum.ControlState)

local isReactTagProp = require(UIBlox.Utility.isReactTagProp)

local Images = require(App.ImageSet.Images)
local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local useCursor = require(UIBlox.App.SelectionCursor.useCursor)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Button = React.PureComponent:extend("Button")

local BUTTON_STATE_COLOR = {
	[ButtonType.Alert] = {
		[ControlState.Default] = "Alert",
	},
	[ButtonType.PrimaryContextual] = {
		[ControlState.Default] = "ContextualPrimaryDefault",
		[ControlState.Hover] = "ContextualPrimaryOnHover",
	},
	[ButtonType.PrimarySystem] = {
		[ControlState.Default] = "SystemPrimaryDefault",
		[ControlState.Hover] = "SystemPrimaryOnHover",
	},
	[ButtonType.Secondary] = {
		[ControlState.Default] = "SecondaryDefault",
		[ControlState.Hover] = "SecondaryOnHover",
	},
}

local CONTENT_STATE_COLOR = {
	[ButtonType.Alert] = {
		[ControlState.Default] = "Alert",
	},
	[ButtonType.PrimaryContextual] = {
		[ControlState.Default] = "ContextualPrimaryContent",
	},
	[ButtonType.PrimarySystem] = {
		[ControlState.Default] = "SystemPrimaryContent",
	},
	[ButtonType.Secondary] = {
		[ControlState.Default] = "SecondaryContent",
		[ControlState.Hover] = "SecondaryOnHover",
	},
}

local IMAGE = {
	[ButtonType.Alert] = Images["component_assets/circle_17_stroke_1"],
	[ButtonType.PrimaryContextual] = Images["component_assets/circle_17"],
	[ButtonType.PrimarySystem] = Images["component_assets/circle_17"],
	[ButtonType.Secondary] = Images["component_assets/circle_17_stroke_1"],
}

local DELAYED_INPUT_IMAGE = {
	[ButtonType.PrimaryContextual] = Images["component_assets/bulletRight_17"],
	[ButtonType.PrimarySystem] = Images["component_assets/bulletRight_17"],
}

local IS_HOVER_BACKGROUND_ENABLED = {
	[ButtonType.Alert] = false,
	[ButtonType.PrimaryContextual] = true,
	[ButtonType.PrimarySystem] = false,
	[ButtonType.Secondary] = false,
}

local CORNER_RADIUS = UDim.new(0, 8)

Button.validateProps = t.strictInterface({
	[React.Tag] = isReactTagProp,
	-- The type of the button
	buttonType = t.optional(ButtonType.isEnumValue),

	-- The automatic size of the button
	automaticSize = t.optional(t.EnumItem),
	-- The size of the button
	size = t.optional(t.UDim2),
	-- Standard button size (Regular/Small/XSmall) is optional
	standardSize = t.optional(StandardButtonSize.isEnumValue),
	-- For standard buttons, optionally override the default max width of 640 for Regular and Small,
	-- or set a max width for XSmall (e.g. width of parent container)
	maxWidth = t.optional(t.numberPositive),
	-- For standard buttons, optionally override the default width behavior.
	-- If true: button just wide enough to fit its text. If false: default to the full width of its container.
	fitContent = t.optional(t.boolean),

	-- The anchor point of the button
	anchorPoint = t.optional(t.Vector2),
	-- The position of the button
	position = t.optional(t.UDim2),
	-- The layout order of the button
	layoutOrder = t.optional(t.number),

	-- The icon of the button
	icon = t.optional(validateImage),
	-- The text of the button
	text = t.optional(t.string),
	-- The icon of the controller input (A/B/X/Y button) needed to activate the button
	inputIcon = t.optional(validateImage),
	-- The font style for the button text
	fontStyle = t.optional(t.union(t.string, validateFontInfo, validateTypographyInfo)),
	-- Contains override props for the text label
	buttonTextOverride = t.optional(t.table),

	-- Is the button disabled
	isDisabled = t.optional(t.boolean),
	-- Is the button loading
	isLoading = t.optional(t.boolean),
	-- Determine whether hover background is enabled
	isHoverBackgroundEnabled = t.optional(t.boolean),
	-- Determine if it should setup a delay on the input
	isDelayedInput = t.optional(t.boolean),
	-- Used to start the input delay, set to true when you want to start the animation.
	enableInputDelayed = t.optional(t.boolean),
	-- Amount of seconds to delay input
	delayInputSeconds = t.optional(t.numberPositive),

	-- The activated callback for the button
	onActivated = t.callback,
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),
	-- A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),
	-- The feedback type for interaction feedback manager
	feedbackType = t.optional(t.string),

	-- Gamepad Support props
	NextSelectionDown = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	buttonRef = t.optional(t.union(t.table, t.callback)),
	-- Boolean to determine if the component will use RoactGamepad for focus navigation
	isRoactGamepadEnabled = t.optional(t.boolean),
	-- Optional selection cursor
	cursor = t.optional(t.any),

	[React.Change.AbsoluteSize] = t.optional(t.callback),
	[React.Change.AbsolutePosition] = t.optional(t.callback),
})

Button.defaultProps = {
	buttonType = ButtonType.PrimarySystem,
	isDisabled = false,
	isLoading = false,
	isRoactGamepadEnabled = true,
}

function Button:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		local isRoactGamepadEnabled = self.props.isRoactGamepadEnabled
		return React.createElement(
			if isRoactGamepadEnabled then RoactGamepad.Focusable[GenericButton] else GenericButton,
			{
				[React.Tag] = self.props[React.Tag],
				Size = self.props.size,
				standardSize = self.props.standardSize,
				maxWidth = self.props.maxWidth,
				fitContent = self.props.fitContent,
				AnchorPoint = self.props.anchorPoint,
				Position = self.props.position,
				LayoutOrder = self.props.layoutOrder,
				SelectionImageObject = if self.props.cursor
					then self.props.cursor
					else getSelectionCursor(CursorKind.RoundedRectNoInset),
				icon = self.props.icon,
				text = self.props.text,
				inputIcon = self.props.inputIcon,
				fontStyle = self.props.fontStyle,
				isDisabled = self.props.isDisabled,
				isLoading = self.props.isLoading,

				isHoverBackgroundEnabled = IS_HOVER_BACKGROUND_ENABLED[self.props.buttonType],
				isDelayedInput = self.props.isDelayedInput,
				enableInputDelayed = self.props.enableInputDelayed,
				delayInputSeconds = self.props.delayInputSeconds,

				onActivated = self.props.onActivated,
				onStateChanged = self.props.onStateChanged,
				userInteractionEnabled = self.props.userInteractionEnabled,
				buttonImage = IMAGE[self.props.buttonType],
				delayedInputImage = DELAYED_INPUT_IMAGE[self.props.buttonType],
				buttonStateColorMap = BUTTON_STATE_COLOR[self.props.buttonType],
				contentStateColorMap = CONTENT_STATE_COLOR[self.props.buttonType],
				buttonTextOverride = self.props.buttonTextOverride,

				NextSelectionUp = self.props.NextSelectionUp,
				NextSelectionDown = self.props.NextSelectionDown,
				NextSelectionLeft = self.props.NextSelectionLeft,
				NextSelectionRight = self.props.NextSelectionRight,
				ref = self.props.buttonRef,

				feedbackType = self.props.feedbackType,

				[React.Change.AbsoluteSize] = self.props[React.Change.AbsoluteSize],
				[React.Change.AbsolutePosition] = self.props[React.Change.AbsolutePosition],
			}
		)
	end)
end

local ButtonFunctionalWrapper = function(passedProps)
	local cursor = useCursor(CORNER_RADIUS)
	local props = Cryo.Dictionary.join({
		cursor = cursor,
	}, passedProps)
	return React.createElement(Button, props)
end

local ButtonForwardRef = React.forwardRef(function(props, ref)
	return React.createElement(
		if UIBloxConfig.useNewSelectionCursor then ButtonFunctionalWrapper else Button,
		Cryo.Dictionary.join(props, {
			buttonRef = ref,
		})
	)
end)

ButtonForwardRef.validateProps = Button.validateProps

return ButtonForwardRef
