--!nonstrict
local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)
local GetTextSize = require(Core.Text.GetTextSize)
local cleanRichTextTags = require(Core.Text.CleanRichTextTags)
local isReactTagProp = require(UIBlox.Utility.isReactTagProp)
local CursorKind = require(App.SelectionImage.CursorKind)

local validateColorInfo = require(Core.Style.Validator.validateColorInfo)
local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)

local useCursor = require(UIBlox.App.SelectionCursor.useCursor)

local CORNER_RADIUS = UDim.new(0, 8)

local TextButton = Roact.PureComponent:extend("TextButton")

TextButton.validateProps = t.strictInterface({
	[React.Tag] = isReactTagProp,

	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- Is the button disabled
	isDisabled = t.optional(t.boolean),
	-- A string that determines how the font will be styled
	fontStyle = t.optional(t.string),
	-- A string that determines visual styling in default state
	colorStyleDefault = t.optional(t.string),
	-- A string that determines visual styling in hover state
	colorStyleHover = t.optional(t.string),
	-- Is a background shown when hover state is active
	hoverBackgroundEnabled = t.optional(t.boolean),
	-- Is richText enabled for this button
	richText = t.optional(t.boolean),
	-- Is a background shown by default (matches IconButton)
	showBackground = t.optional(t.boolean),
	-- backgroundColor
	backgroundColor = t.optional(validateColorInfo),
	-- The Horizontal Padding of the button
	horizontalPadding = t.optional(t.number),
	--The Vertical Padding of the button
	verticalPadding = t.optional(t.number),

	-- A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- Callback for the activated event
	onActivated = t.optional(t.callback),
	-- The AnchorPoint of the button
	anchorPoint = t.optional(t.Vector2),
	-- The LayoutOrder of the button
	layoutOrder = t.optional(t.number),
	-- The Position of the button
	position = t.optional(t.UDim2),
	-- The Size of the button
	size = t.optional(t.UDim2),
	-- The Text of the button
	text = t.optional(t.string),
	-- The selectionCursor to use
	cursor = t.optional(t.table),

	-- A callback that replaces getTextSize implementation
	debugGetTextSize = t.optional(t.callback),

	-- Override the default controlState
	debugControlState = t.optional(ControlState.isEnumValue),
})

TextButton.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	layoutOrder = 0,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.fromScale(0, 0),
	text = "",

	verticalPadding = 11,
	horizontalPadding = 8,
	showBackground = false,

	fontStyle = "Header2",
	colorStyleDefault = "TextEmphasis",
	colorStyleHover = "TextEmphasis",
	hoverBackgroundEnabled = true,
	richText = false,

	isDisabled = false,
	userInteractionEnabled = true,

	debugGetTextSize = GetTextSize,
	debugControlState = nil,
}

function TextButton:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end
end

function TextButton:render()
	return withStyle(function(style)
		return self:renderWithProviders(style, nil, nil)
	end)
end

function TextButton:renderWithProviders(style, getSelectionCursor, getCursor)
	local currentState = self.props.debugControlState or self.state.controlState

	local textStateColorMap = {
		[ControlState.Default] = self.props.colorStyleDefault,
		[ControlState.Hover] = self.props.colorStyleHover,
	}

	local textStyle = getContentStyle(textStateColorMap, currentState, style)
	local fontStyle = style.Font[self.props.fontStyle]

	local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
	local getTextSize = self.props.debugGetTextSize

	local manipulatedText = self.props.richText and cleanRichTextTags(self.props.text) or self.props.text
	local textWidth = getTextSize(manipulatedText, fontSize, fontStyle.Font, Vector2.new(10000, 0)).X

	local showBackground = self.props.showBackground
	local backgroundColor = if showBackground
		then (self.props.backgroundColor or style.Theme["UIMuted"])
		else {
			Color = nil,
			Transparency = 1,
		}

	local verticalPadding = self.props.verticalPadding
	local horizontalPadding = self.props.horizontalPadding

	local backgroundHover = style.Theme.BackgroundOnHover
	if self.props.hoverBackgroundEnabled and currentState == ControlState.Hover then
		-- Lerp between the backgroundColor and the backgroundHover color
		backgroundColor = if backgroundColor.Color
			then {
				Color = backgroundColor.Color:Lerp(backgroundHover.Color, 1 - backgroundHover.Transparency),
				Transparency = backgroundColor.Transparency,
			}
			else backgroundHover
	end

	return Roact.createElement(Interactable, {
		[React.Tag] = self.props[React.Tag],
		AnchorPoint = self.props.anchorPoint,
		LayoutOrder = self.props.layoutOrder,
		Position = self.props.position,
		Size = self.props.size,

		isDisabled = self.props.isDisabled,
		onStateChanged = self.onStateChanged,
		userInteractionEnabled = self.props.userInteractionEnabled,
		BackgroundColor3 = backgroundColor.Color,
		BackgroundTransparency = backgroundColor.Transparency,
		AutoButtonColor = false,

		SelectionImageObject = if getCursor
			then getCursor(CORNER_RADIUS)
			else (getSelectionCursor and getSelectionCursor(CursorKind.RoundedRectNoInset)),
		[Roact.Event.Activated] = self.props.onActivated,
	}, {
		corner = Roact.createElement("UICorner", {
			CornerRadius = CORNER_RADIUS,
		}),
		sizeConstraint = Roact.createElement("UISizeConstraint", {
			MinSize = Vector2.new(textWidth + horizontalPadding * 2, fontSize + verticalPadding * 2),
		}),
		textLabel = Roact.createElement(GenericTextLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
			Text = self.props.text,
			fontStyle = fontStyle,
			colorStyle = textStyle,
			RichText = self.props.richText,
		}),
	})
end
local function TextButtonFunctionalWrapper(props)
	local cursor = useCursor(CORNER_RADIUS)
	return Roact.createElement(
		TextButton,
		Cryo.Dictionary.join(props, {
			cursor = cursor,
		})
	)
end

local TextButtonOuterWrapper = Roact.PureComponent:extend("TextButtonOuterWrapper")

TextButtonOuterWrapper.validateProps = TextButton.validateProps

function TextButtonOuterWrapper:render()
	return Roact.createElement(TextButtonFunctionalWrapper, self.props)
end

return TextButtonOuterWrapper
