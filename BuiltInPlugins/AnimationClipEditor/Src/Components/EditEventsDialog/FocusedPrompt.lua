--[[
	A prompt which appears over top of everything else in the window.
	Can accept text by default, but other types of prompts can be made using Children.

	Props:
		UDim2 Size = The size of the center popup frame.
		string PromptText = The text to display in the prompt.
		array Buttons = An array of items used to render the buttons for this prompt.
		{
			{Key = "Cancel", Text = "SomeLocalizedTextForCancel"},
			{Key = "Save", Text = "SomeLocalizedTextForSave", Style = "Primary"},
		}

		function OnButtonClicked(key) = A callback for when the user clicked
			a button in the prompt. Accepts the Key of the button that was clicked.
		function OnClose = A callback for when the user closed the prompt.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button
local CaptureFocus = Framework.UI.CaptureFocus

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FocusedPrompt = Roact.PureComponent:extend("FocusedPrompt")

function FocusedPrompt:renderButton(index, button, textSize)
	local props = self.props
	local buttonHeight = Constants.PROMPT_BUTTON_SIZE.Y
	local buttonWidth = Constants.PROMPT_BUTTON_SIZE.X

	return Roact.createElement(Button, {
		Size = UDim2.new(0, buttonWidth, 0, buttonHeight),
		LayoutOrder = index,
		Style = "RoundPrimary",
		Text = button.Text,
		OnClick = function()
			props.OnButtonClicked(button.Key)
		end,
	})
	end

function FocusedPrompt:render()
	local props = self.props
	local theme = props.Stylizer.PluginTheme
	local dialogTheme = theme.dialogTheme

	local buttonPadding = Constants.PROMPT_BUTTON_PADDING
	local buttonHeight = Constants.PROMPT_BUTTON_SIZE.Y
	local buttons = props.Buttons
	local promptText = props.PromptText
	local size = props.Size or Constants.PROMPT_SIZE

	local contents
	if promptText then
		contents = {
			PromptText = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				TextSize = dialogTheme.textSize,
				TextColor3 = dialogTheme.textColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = theme.font,
				Text = promptText,
				TextWrapped = true,
			})
		}
	else
		contents = self.props[Roact.Children]
	end

	local buttonComponents = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, buttonPadding),
		}),
	}

	for index, button in ipairs(buttons) do
		table.insert(buttonComponents, self:renderButton(index, button, dialogTheme.textSize))
	end

	return Roact.createElement(CaptureFocus, {}, {
		Background = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0.35,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(),
		}, {
			CenterFrame = Roact.createElement("ImageButton", {
				Size = size,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.backgroundColor,
				AutoButtonColor = false,
				ImageTransparency = 1,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, Constants.PROMPT_VERTICAL_PADDING),
					PaddingBottom = UDim.new(0, Constants.PROMPT_VERTICAL_PADDING),
					PaddingLeft = UDim.new(0, Constants.PROMPT_HORIZONTAL_PADDING),
					PaddingRight = UDim.new(0, Constants.PROMPT_HORIZONTAL_PADDING),
				}),

				Container = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -(buttonHeight + Constants.PROMPT_VERTICAL_PADDING)),
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
					BackgroundTransparency = 1,
				}, contents),

				Buttons = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, buttonHeight),
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.new(0.5, 0, 1, 0),
					BackgroundTransparency = 1,
				}, buttonComponents),
			}),
		}),
	})
end

FocusedPrompt = withContext({
	Stylizer = ContextServices.Stylizer,
})(FocusedPrompt)

return FocusedPrompt