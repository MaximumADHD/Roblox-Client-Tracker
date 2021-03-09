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

local UNDERLINED_HOVER_TRANSPARENCY = 0.3
local VERTICAL_PADDING = 8
local HORIZONTAL_PADDING = 11

local LinkButton = Roact.PureComponent:extend("LinkButton")
LinkButton.debugProps = enumerate("debugProps", {
	"getTextSize",
	"controlState",
})

LinkButton.validateProps = t.strictInterface({
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- Is the button visually disabled
	isDisabled = t.optional(t.boolean),

	fontStyle = t.optional(t.string),
	colorStyleDefault = t.optional(t.string),
	colorStyleHover = t.optional(t.string),
	hoverBackgroundEnabled = t.optional(t.boolean),
	underlineAlwaysEnabled = t.optional(t.boolean),

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
	[LinkButton.debugProps.getTextSize] = t.optional(t.callback),

	-- Override the default controlState
	[LinkButton.debugProps.controlState] = t.optional(enumerateValidator(ControlState)),
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

	[LinkButton.debugProps.getTextSize] = GetTextSize,
	[LinkButton.debugProps.controlState] = nil,
}

function LinkButton:init()
	self:setState({
		controlState = ControlState.Initialize
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
	return withStyle(function(style)
		local currentState = self.props[LinkButton.debugProps.controlState] or self.state.controlState

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
		local getTextSize = self.props[LinkButton.debugProps.getTextSize]

		local manipulatedText = cleanRichTextTags(self.props.text)
		local textWidth = getTextSize(manipulatedText, fontSize, fontStyle.Font, Vector2.new(10000, 0)).X

        manipulatedText = self.props.text
        if self.props.underlineAlwaysEnabled or currentState == ControlState.Hover or
			currentState == ControlState.Pressed then
            manipulatedText = self.applyRichTextUnderline(self.props.text)
        end

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
				Text = manipulatedText,
				fontStyle = fontStyle,
				colorStyle = textStyle,
				RichText = true,
			}),
			background = self.props.hoverBackgroundEnabled and currentState == ControlState.Hover
				and Roact.createElement(HoverButtonBackground),
		})
	end)
end

return LinkButton
