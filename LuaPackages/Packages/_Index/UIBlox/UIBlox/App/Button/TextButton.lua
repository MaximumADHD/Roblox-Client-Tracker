local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)
local GetTextSize = require(Core.Text.GetTextSize)

local withStyle = require(Core.Style.withStyle)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)

local TextButton = Roact.PureComponent:extend("TextButton")

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

TextButton.validateProps = t.strictInterface({
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- A string that determines how the font will be styled
	fontStyle = t.optional(t.string),

	-- A string that determines visual styling in default state
	defaultStyle = t.optional(t.string),

	-- A string that determines visual styling in hover state
	hoverStyle = t.optional(t.string),

	-- Is the button visually disabled
	isDisabled = t.optional(t.boolean),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- The activated callback for the button
	onActivated = t.optional(t.callback),

	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.number),
	position= t.optional(t.UDim2),
	size = t.optional(t.UDim2),
	text = t.optional(t.string),

	-- For testing purposes, a callback that replaces getTextSize implementation
	getTextSize = t.optional(t.callback),
})

TextButton.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	layoutOrder = 0,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.fromScale(0, 0),
	text = "",

	fontStyle = "Body",
	defaultStyle = "SystemPrimaryDefault",
	hoverStyle = "SystemPrimaryOnHover",
	isDisabled = false,
	userInteractionEnabled = true,

	getTextSize = GetTextSize,
}

function TextButton:render()
	return withStyle(function(style)
		local currentState = self.state.controlState

		local textStateColorMap = {
			[ControlState.Default] = self.props.defaultStyle,
			[ControlState.Hover] = self.props.hoverStyle,
		}

		local textStyle = getContentStyle(textStateColorMap, currentState, style)
		local fontStyle = style.Font[self.props.fontStyle]

		local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
		local textWidth = self.props.getTextSize(self.props.text, fontSize, fontStyle.Font, Vector2.new(10000, 0)).X

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
				MinSize = Vector2.new(textWidth, fontSize),
			}),
			TextLabel = Roact.createElement(GenericTextLabel, {
				BackgroundTransparency = 1,
				Text = self.props.text,
				fontStyle = fontStyle,
				colorStyle = textStyle,
			})
		})
	end)
end

return TextButton
