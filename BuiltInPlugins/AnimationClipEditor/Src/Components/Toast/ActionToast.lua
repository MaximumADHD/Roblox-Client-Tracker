--[[
	Represents a popup message which appears at the bottom right of the
	window and prompts the user with action buttons.

	Props:
		string Text = The message to display.
		array Buttons = An array of items used to render the buttons for this prompt.
		{
			{Key = "Cancel", Text = "SomeLocalizedTextForCancel"},
			{Key = "Save", Text = "SomeLocalizedTextForSave", Style = "Primary"},
		}
		int ButtonWidth = An override width for buttons in this toast, in pixels.

		function OnButtonClicked(key) = A callback for when the user clicked
			a button in the prompt. Accepts the Key of the button that was clicked.
]]

local DEFAULT_WIDTH = 380
local TEXT_FIT = Vector2.new(340, 10000)

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button

local ContextServices = Framework.ContextServices

local BaseToast = require(Plugin.Src.Components.Toast.BaseToast)

local ActionToast = Roact.PureComponent:extend("ActionToast")

function ActionToast:renderButton(index, button, textSize)
	local props = self.props
	local buttonHeight = Constants.PROMPT_BUTTON_SIZE.Y
	local buttonWidth = props.ButtonWidth or Constants.PROMPT_BUTTON_SIZE.X

	return Roact.createElement(Button, {
		Size = UDim2.new(0, buttonWidth, 0, buttonHeight),
		LayoutOrder = index,
		Style = button.Style,
		Text = button.Text,
		OnClick = function()
			props.OnButtonClicked(button.Key)
		end
	})
end

function ActionToast:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local toastTheme = theme.toastTheme
		local buttonPadding = Constants.PROMPT_BUTTON_PADDING
		local buttonHeight = Constants.PROMPT_BUTTON_SIZE.Y
		local text = props.Text
		local buttons = props.Buttons

		local textSize = TextService:GetTextSize(text, toastTheme.textSize, theme.font, TEXT_FIT)
		local height = textSize.Y + Constants.PROMPT_VERTICAL_PADDING * 3 + buttonHeight

		local buttonComponents = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, buttonPadding),
			}),
		}

		for index, button in ipairs(buttons) do
			table.insert(buttonComponents, self:renderButton(index, button, toastTheme.textSize))
		end

		return Roact.createElement(BaseToast, {
			AnchorPoint = Vector2.new(1, 1),
			Size = UDim2.new(0, DEFAULT_WIDTH, 0, height),
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, Constants.PROMPT_VERTICAL_PADDING),
				PaddingBottom = UDim.new(0, Constants.PROMPT_VERTICAL_PADDING),
				PaddingLeft = UDim.new(0, Constants.PROMPT_HORIZONTAL_PADDING),
				PaddingRight = UDim.new(0, Constants.PROMPT_HORIZONTAL_PADDING),
			}),

			Text = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = text,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = toastTheme.textSize,
				TextColor3 = toastTheme.textColor,
				Font = theme.font,
			}),

			Buttons = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, buttonHeight),
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, 0),
				BackgroundTransparency = 1,
			}, buttonComponents),
		})
end

ContextServices.mapToProps(ActionToast, {
	Theme = ContextServices.Theme,
})


return ActionToast
