--[[
	A button that can be selected and shows text after a Background.

	Required Props:
		string Key: The key that will be sent back to the OnClick function.
		string Text: The text to display.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Automatic sizing.
		string Description: The text to display underneath the main text of the button.
		table LinkProps: Props for a LinkText to show under the description.
		boolean Disabled: Whether or not the radio button is disabled. OnClick will not work when disabled.
		number LayoutOrder: The layout order of the frame.
		callback OnClick: paramters(string key). Fires when the button is activated and returns back the Key.
		boolean Selected: Whether or not the radio button is selected.
		UDim2 Size: The size of the component.
		Style Style: The style with which to render this component.
		Enum.TextXAlignment TextXAlignment: The X alignment of the text.
		boolean TextWrapped: Whether or not the text is wrapped.
		string Tooltip: The tooltip to display when hovering over the button.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Enum.VerticalAlignment VerticalAlignment: The VerticalAlignment of the components.
]]
local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local LinkText = require(Framework.UI.Components.LinkText)
local Tooltip = require(Framework.UI.Components.Tooltip)

local prioritize = require(Framework.Util.prioritize)
local Typecheck = require(Framework.Util.Typecheck)
local StyleModifier = require(Framework.Util.StyleModifier)

local getFFlagDevFrameworkKeyboardNavComponentChanges =
	require(Framework.SharedFlags.getFFlagDevFrameworkKeyboardNavComponentChanges)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local RadioButton = Roact.PureComponent:extend("RadioButton")
Typecheck.wrap(RadioButton, script)

local NO_WRAP = Vector2.new(1000000, 50)

RadioButton.defaultProps = {
	Disabled = false,
	Selected = false,
	OnClick = function() end,
	VerticalAlignment = Enum.VerticalAlignment.Center,
}

function RadioButton:init()
	self.onClick = function()
		local isDisabled = self.props.Disabled
		local key = self.props.Key
		local onClick = self.props.OnClick
		if not isDisabled then
			onClick(key)
		end
	end
end

function RadioButton:render()
	local automaticSize = self.props.AutomaticSize
	local description = self.props.Description
	local linkProps = self.props.LinkProps
	local isSelected = self.props.Selected
	local isDisabled = self.props.Disabled
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local text = self.props.Text
	local style = self.props.Stylizer

	local textWrapped = prioritize(self.props.TextWrapped, style.TextWrapped)
	local textXAlignment = prioritize(self.props.TextXAlignment, style.TextXAlignment)
	local verticalAlignment = prioritize(self.props.VerticalAlignment, style.VerticalAlignment)

	local font = style.Font
	local descriptionTextSize
	local textSize = prioritize(self.props.TextSize, style.TextSize)
	if typeof(textSize) == "table" then
		textSize = self.props.TextSize.MainText
		descriptionTextSize = self.props.TextSize.Description
	end
	local imageSize = style.ImageSize
	local padding = style.Padding or 0

	local textDimensions
	if font then
		textDimensions = TextService:GetTextSize(text, textSize, font, NO_WRAP)
	else
		textDimensions = Vector2.new()
	end

	local descriptionTextDimensions
	if description and descriptionTextSize then
		if font then
			descriptionTextDimensions = TextService:GetTextSize(description, descriptionTextSize, font, NO_WRAP)
		else
			descriptionTextDimensions = Vector2.new()
		end
	elseif description then
		if font then
			descriptionTextDimensions = TextService:GetTextSize(description, textSize, font, NO_WRAP)
		else
			descriptionTextDimensions = Vector2.new()
		end
	end

	local buttonWidth = textDimensions.X + padding
	local buttonHeight = textDimensions.Y

	if descriptionTextDimensions then
		buttonWidth = buttonHeight + descriptionTextDimensions.X
		buttonHeight = buttonHeight + descriptionTextDimensions.Y
	end
	if imageSize then
		buttonWidth = buttonWidth + imageSize.X.Offset
		buttonHeight = math.max(imageSize.Y.Offset, buttonHeight)
	end

	local buttonSize
	local descriptionSize
	local mainTextSize
	if automaticSize ~= nil then
		buttonSize = size
		descriptionSize = size
		mainTextSize = size
	else
		buttonSize = UDim2.new(0, buttonWidth, 0, buttonHeight)
		descriptionSize = if descriptionTextDimensions
			then UDim2.new(0, descriptionTextDimensions.X, 0, descriptionTextDimensions.Y)
			else nil
		mainTextSize = UDim2.new(0, textDimensions.X, 0, textDimensions.Y)
	end

	local buttonStyleModifier

	if isDisabled and isSelected then
		buttonStyleModifier = StyleModifier.Indeterminate
	elseif isDisabled then
		buttonStyleModifier = StyleModifier.Disabled
	elseif isSelected then
		buttonStyleModifier = StyleModifier.Selected
	end

	return Roact.createElement("TextButton", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = buttonSize,
		Selectable = if getFFlagDevFrameworkKeyboardNavComponentChanges() then false else nil,
		Text = "",
		[Roact.Event.Activated] = self.onClick,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, style.Padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = verticalAlignment,
		}),

		RadioImage = Roact.createElement(Button, {
			LayoutOrder = 1,
			OnClick = self.onClick,
			Size = style.ImageSize,
			Style = style.BackgroundStyle,
			StyleModifier = buttonStyleModifier,
		}),

		TextFrame = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 2,
		}, {
			MainTextLabel = Roact.createElement(TextLabel, {
				AutomaticSize = automaticSize,
				LayoutOrder = 1,
				Size = mainTextSize,
				TextTransparency = if isDisabled then 0.5 else 0,
				Text = text,
				TextSize = textSize,
				TextWrapped = textWrapped,
				TextXAlignment = textXAlignment,
			}, {
				Tooltip = if self.props.Tooltip
					then Roact.createElement(Tooltip, {
						Text = self.props.Tooltip,
					})
					else nil,
			}),

			DescriptionTextLabel = description and Roact.createElement(TextLabel, {
				AutomaticSize = automaticSize,
				LayoutOrder = 2,
				Size = descriptionSize,
				StyleModifier = StyleModifier.Disabled,
				Text = description,
				TextSize = descriptionTextSize or nil,
				TextWrapped = textWrapped,
				TextXAlignment = textXAlignment,
			}),

			LinkText = if linkProps
				then Roact.createElement(
					LinkText,
					join({
						LayoutOrder = 3,
						StyleModifier = StyleModifier.Disabled,
						TextXAlignment = textXAlignment,
						Size = descriptionSize,
					}, linkProps)
				)
				else nil,
		}),
	})
end

RadioButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(RadioButton)

return RadioButton
