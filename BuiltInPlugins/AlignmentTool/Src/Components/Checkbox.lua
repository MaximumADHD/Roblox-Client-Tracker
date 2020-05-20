--[[
	A button with a label that can be checked.

	Required Props:
		string Text: The text to display.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		boolean Disabled: Whether or not the checkbox is disabled. OnClick will not work when disabled.
		number LayoutOrder: The layout order of the frame.
		callback OnClick: Fires when the button is checked.
		boolean Selected: Whether or not the checkbox is checked.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel
local ToggleButton = UI.ToggleButton

local Util = require(Plugin.Packages.Framework.Util)
local StyleModifier = Util.StyleModifier

local Checkbox = Roact.PureComponent:extend("Checkbox")

local NO_WRAP = Vector2.new(1000000, 50)

Checkbox.defaultProps = {
	Disabled = false,
	Selected = false,
	OnClick = function() end,
}

function Checkbox:init()
	self.onClick = function()
		local isDisabled = self.props.Disabled
		local onClick = self.props.OnClick
		if not isDisabled then
			onClick(self.props.Id)
		end
	end
end

function Checkbox:render()
	local props = self.props

	local id = props.Id
	local isSelected = props.Selected
	local isDisabled = props.Disabled
	local layoutOrder = props.LayoutOrder
	local size = props.Size
	local text = props.Text
	local theme = props.Theme

	local style = theme:getStyle("Plugin", self)
	local font = style.Font
	local textSize = style.TextSize
	local imageSize = style.ImageSize
	local padding = style.Padding or 0

	local textDimensions
	if font then
		textDimensions = TextService:GetTextSize(text, textSize, font, NO_WRAP)
	else
		textDimensions = Vector2.new()
	end

	local buttonHeight
	local buttonSize
	if imageSize then
		buttonHeight = math.max(imageSize.Y.Offset, textDimensions.Y)
		buttonSize = UDim2.new(0, textDimensions.X + imageSize.X.Offset + padding, 0, buttonHeight)
	else
		buttonSize = UDim2.new(0, textDimensions.X + padding, 0, textDimensions.Y)
	end

	local styleModifier
	if isDisabled then
		styleModifier = StyleModifier.Disabled
	elseif isSelected then
		styleModifier = StyleModifier.Selected
	end

	return Roact.createElement("TextButton", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = buttonSize,
		Text = "",
		[Roact.Event.Activated] = self.onClick,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		CheckImage = Roact.createElement(ToggleButton, {
			LayoutOrder = 1,
			OnClick = self.onClick,
			Size = imageSize,
			Style = "Checkbox",
			Selected = isSelected,
		}),

		TextLabel = Roact.createElement(TextLabel, {
			LayoutOrder = 2,
			Size = UDim2.new(0, textDimensions.X, 1, 0),
			StyleModifier = styleModifier,
			Text = text,
		}),
	})
end

ContextServices.mapToProps(Checkbox, {
	Theme = ContextServices.Theme,
})

return Checkbox
