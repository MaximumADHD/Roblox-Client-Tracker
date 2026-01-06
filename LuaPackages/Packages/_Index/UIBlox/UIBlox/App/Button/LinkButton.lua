--!nonstrict
local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)
local GetTextSize = require(Core.Text.GetTextSize)
local cleanRichTextTags = require(Core.Text.CleanRichTextTags)

local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local HoverButtonBackground = require(Core.Button.HoverButtonBackground)

local useCursorByType = require(App.SelectionCursor.useCursorByType)
local CursorType = require(App.SelectionCursor.CursorType)
local RoactGamepad = require(Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable

local UNDERLINED_HOVER_TRANSPARENCY = 0.3

local LinkButton = Roact.PureComponent:extend("LinkButton")

LinkButton.validateProps = t.strictInterface({
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
	-- Is a permanent underline enabled for this button. By default, an underline is only applied on hover
	underlineAlwaysEnabled = t.optional(t.boolean),

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
	-- Custom min padding X
	minPaddingX = t.optional(t.number),
	-- Custom min padding Y
	minPaddingY = t.optional(t.number),
	-- Custom selection cursor kind
	selectionCursorKind = t.optional(t.userdata),
	-- A callback that replaces getTextSize implementation
	debugGetTextSize = t.optional(t.callback),

	-- Override the default controlState
	debugControlState = t.optional(ControlState.isEnumValue),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	buttonRef = t.optional(t.union(t.callback, t.table)),

	-- The selection cursor object
	cursor = t.optional(t.table),
})

LinkButton.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	layoutOrder = 0,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.fromScale(0, 0),
	text = "",

	fontStyle = "Header2",
	colorStyleDefault = "TextLink",
	colorStyleHover = "TextLink",
	hoverBackgroundEnabled = false,
	underlineAlwaysEnabled = false,

	isDisabled = false,
	userInteractionEnabled = true,

	minPaddingX = 8,
	minPaddingY = 11,

	debugGetTextSize = GetTextSize,
	debugControlState = nil,
}

function LinkButton:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.applyRichTextUnderline = function(text)
		return "<u>" .. text .. "</u>"
	end

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end
end

function LinkButton:render()
	return self:renderWithSelectionCursorProvider(nil, self.props.cursor)
end

function LinkButton:renderWithSelectionCursorProvider(getSelectionCursor, cursor)
	return withStyle(function(style)
		local currentState = self.props.debugControlState or self.state.controlState

		local textStateColorMap = {
			[ControlState.Default] = self.props.colorStyleDefault,
			[ControlState.Hover] = self.props.colorStyleHover,
		}

		local textStyle = getContentStyle(textStateColorMap, currentState, style)
		local fontStyle = style.Font[self.props.fontStyle]

		-- Permanently underlined links should indicate Hover state via "semi-pressed" color change
		if self.props.underlineAlwaysEnabled == true and currentState == ControlState.Hover then
			textStyle.Transparency = UNDERLINED_HOVER_TRANSPARENCY
		end

		local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
		local getTextSize = self.props.debugGetTextSize

		local manipulatedText = cleanRichTextTags(self.props.text)
		local textWidth = getTextSize(manipulatedText, fontSize, fontStyle.Font, Vector2.new(10000, 0)).X

		manipulatedText = self.props.text
		if
			self.props.underlineAlwaysEnabled
			or currentState == ControlState.Hover
			or currentState == ControlState.Pressed
		then
			manipulatedText = self.applyRichTextUnderline(self.props.text)
		end

		local minPaddingX = self.props.minPaddingX
		local minPaddingY = self.props.minPaddingY

		local minSize = Vector2.new(textWidth + minPaddingX * 2, fontSize + minPaddingY * 2)

		local selectionCursor = cursor

		return Roact.createElement(Focusable[Interactable], {
			AnchorPoint = self.props.anchorPoint,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = self.props.size,

			isDisabled = self.props.isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			SelectionImageObject = selectionCursor,
			[Roact.Event.Activated] = self.props.onActivated,

			[Roact.Ref] = self.props.buttonRef,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
		}, {
			sizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = minSize,
			}),
			textLabel = Roact.createElement(GenericTextLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				Text = manipulatedText,
				fontStyle = fontStyle,
				colorStyle = textStyle,
				RichText = true,
			}),
			background = self.props.hoverBackgroundEnabled
				and currentState == ControlState.Hover
				and Roact.createElement(HoverButtonBackground),
		})
	end)
end
function LinkButtonFunctionalWrapper(props)
	local cursor = useCursorByType(CursorType.RoundedRectNoInset)
	return Roact.createElement(
		LinkButton,
		Cryo.Dictionary.join(props, {
			cursor = cursor,
		})
	)
end

return LinkButtonFunctionalWrapper
