local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local enumerate = require(Packages.enumerate)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)
local GetTextSize = require(Core.Text.GetTextSize)
local cleanRichTextTags = require(Core.Text.CleanRichTextTags)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)

local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local HoverButtonBackground = require(Core.Button.HoverButtonBackground)

local VERTICAL_PADDING = 8
local HORIZONTAL_PADDING = 11

local TextButton = Roact.PureComponent:extend("TextButton")
TextButton.debugProps = enumerate("debugProps", {
	"getTextSize",
	"controlState",
})

TextButton.validateProps = t.strictInterface({
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- Is the button visually disabled
	isDisabled = t.optional(t.boolean),

	fontStyle = t.optional(t.string),
	colorStyleDefault = t.optional(t.string),
	colorStyleHover = t.optional(t.string),
	hoverBackgroundEnabled = t.optional(t.boolean),
	richText = t.optional(t.boolean),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- The activated callback for the button
	onActivated = t.optional(t.callback),

	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.number),
	position= t.optional(t.UDim2),
	size = t.optional(t.UDim2),
	text = t.optional(t.string),

	-- A callback that replaces getTextSize implementation
	[TextButton.debugProps.getTextSize] = t.optional(t.callback),

	-- Override the default controlState
	[TextButton.debugProps.controlState] = t.optional(enumerateValidator(ControlState)),
})

TextButton.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	layoutOrder = 0,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.fromScale(0, 0),
	text = "",

	fontStyle = "Header2",
	colorStyleDefault = "SystemPrimaryDefault",
	colorStyleHover = "SystemPrimaryDefault",
	hoverBackgroundEnabled = true,
	richText = false,

	isDisabled = false,
	userInteractionEnabled = true,

	[TextButton.debugProps.getTextSize] = GetTextSize,
	[TextButton.debugProps.controlState] = nil,
}

function TextButton:init()
	self:setState({
		controlState = ControlState.Initialize
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
		local currentState = self.props[TextButton.debugProps.controlState] or self.state.controlState

		local textStateColorMap = {
			[ControlState.Default] = self.props.colorStyleDefault,
			[ControlState.Hover] = self.props.colorStyleHover,
		}

		local textStyle = getContentStyle(textStateColorMap, currentState, style)
		local fontStyle = style.Font[self.props.fontStyle]

		local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
		local getTextSize = self.props[TextButton.debugProps.getTextSize]

		local manipulatedText = self.props.richText and cleanRichTextTags(self.props.text) or self.props.text
		local textWidth = getTextSize(manipulatedText, fontSize, fontStyle.Font, Vector2.new(10000, 0)).X

		return Roact.createElement(Interactable, {
			AnchorPoint = self.props.anchorPoint,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = self.props.size,

			isDisabled = self.props.isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			[Roact.Event.Activated] = self.props.onActivated,
		}, {
			sizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(textWidth + VERTICAL_PADDING*2, fontSize + HORIZONTAL_PADDING*2),
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
			background = self.props.hoverBackgroundEnabled and currentState == ControlState.Hover
				and Roact.createElement(HoverButtonBackground)
		})
	end)
end

return TextButton
