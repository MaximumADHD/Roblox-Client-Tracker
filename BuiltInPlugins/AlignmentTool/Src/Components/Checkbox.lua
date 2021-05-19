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

local Framework = require(Plugin.Packages.Framework)

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local ContextServices = Framework.ContextServices
local UI = Framework.UI
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel
local ToggleButton = UI.ToggleButton

local Util = Framework.Util
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
	local theme
	local style
	if THEME_REFACTOR then
		theme = props.Stylizer
	else
		theme = props.Theme
		style = theme:getStyle("Plugin", self)
	end

	local font = THEME_REFACTOR and theme.Font or style.Font
	local textSize = THEME_REFACTOR and theme.TextSize or style.TextSize
	local imageSize = THEME_REFACTOR and theme.CheckboxImageSize or style.ImageSize
	local padding = THEME_REFACTOR and theme.CheckboxLabelSpacing or style.Padding or 0

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
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return Checkbox
