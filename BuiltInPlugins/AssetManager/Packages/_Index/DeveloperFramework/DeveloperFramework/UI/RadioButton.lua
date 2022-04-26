--[[
	A button that can be selected and shows text after a Background.

	Required Props:
		string Key: The key that will be sent back to the OnClick function.
		string Text: The text to display.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Automatic sizing.
		string Description: The text to display underneath the main text of the button.
		boolean Disabled: Whether or not the radio button is disabled. OnClick will not work when disabled.
		number LayoutOrder: The layout order of the frame.
		callback OnClick: paramters(string key). Fires when the button is activated and returns back the Key.
		boolean Selected: Whether or not the radio button is selected.
		UDim2 Size: The size of the component.
		Style Style: The style with which to render this component.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Enum.TextXAlignment TextXAlignment: The X alignment of the text.
		boolean TextWrapped: Whether or not the text is wrapped.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Enum.VerticalAlignment VerticalAlignment: The VerticalAlignment of the components.
]]
local FFlagToolboxAssetConfigUpdatePrivateAudioMessage = game:GetFastFlag("ToolboxAssetConfigUpdatePrivateAudioMessage")

local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Button = require(Framework.UI.Button)
local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = Util.Typecheck
local StyleModifier = Util.StyleModifier
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

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
	local isSelected = self.props.Selected
	local isDisabled = self.props.Disabled
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local text = self.props.Text
	local theme = self.props.Theme

	local style
	if THEME_REFACTOR then
		style = self.props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local textWrapped
	local textXAlignment
	local verticalAlignment
	if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then
		textWrapped = prioritize(self.props.TextWrapped, style.TextWrapped)
		textXAlignment = prioritize(self.props.TextXAlignment, style.TextXAlignment)
		verticalAlignment = prioritize(self.props.VerticalAlignment, style.VerticalAlignment)
	end

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
		buttonWidth  = buttonWidth + imageSize.X.Offset
		buttonHeight = math.max(imageSize.Y.Offset, buttonHeight)
	end

	local buttonSize
	local descriptionSize
	local mainTextSize
	if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then
		if automaticSize ~= nil then
			buttonSize = size
			descriptionSize = size
			mainTextSize = size
		else
			buttonSize = UDim2.new(0, buttonWidth, 0, buttonHeight)
			descriptionSize = if descriptionTextDimensions then UDim2.new(0, descriptionTextDimensions.X, 0, descriptionTextDimensions.Y) else nil
			mainTextSize = UDim2.new(0, textDimensions.X, 0, textDimensions.Y)
		end
	else
		buttonSize = UDim2.new(0, buttonWidth, 0, buttonHeight)
	end

	local buttonStyleModifier
	local textStyleModifier

	if isDisabled and isSelected then
		buttonStyleModifier = StyleModifier.Indeterminate
		textStyleModifier = StyleModifier.Disabled
	elseif isDisabled then
		buttonStyleModifier = StyleModifier.Disabled
		textStyleModifier = StyleModifier.Disabled
	elseif isSelected then
		buttonStyleModifier = StyleModifier.Selected
		textStyleModifier = StyleModifier.Selected
	end

	return Roact.createElement("TextButton", {
		AutomaticSize = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then automaticSize else nil,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = buttonSize,
		Text = "",
		[Roact.Event.Activated] = self.onClick,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, style.Padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then verticalAlignment else Enum.VerticalAlignment.Center,
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
				AutomaticSize = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then automaticSize else nil,
				LayoutOrder = 1,
				Size = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then mainTextSize else UDim2.new(0, textDimensions.X, 0, textDimensions.Y),
				StyleModifier = textStyleModifier,
				Text = text,
				TextSize = textSize,
				TextWrapped = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then textWrapped else nil,
				TextXAlignment = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then textXAlignment else nil,
			}),

			DescriptionTextLabel = description and Roact.createElement(TextLabel, {
				AutomaticSize = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then automaticSize else nil,
				LayoutOrder = 2,
				Size = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then descriptionSize else UDim2.new(0, descriptionTextDimensions.X, 0, descriptionTextDimensions.Y),
				StyleModifier = StyleModifier.Disabled,
				Text = description,
				TextSize = descriptionTextSize or nil,
				TextWrapped = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then textWrapped else nil,
				TextXAlignment = if FFlagToolboxAssetConfigUpdatePrivateAudioMessage then textXAlignment else nil,
			}),
		}),
	})
end

RadioButton = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(RadioButton)

return RadioButton