local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local RoundTextButton = UILibrary.Component.RoundTextButton
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local MIN_BUTTON_WIDTH = 64
local MAX_BUTTON_WIDTH = 200
local BUTTON_HEIGHT = 28
local GROUP_HEIGHT = BUTTON_HEIGHT + 24

local function ToggleButtonGroup(props)
	return withTheme(function(theme)
		local layoutOrder = props.LayoutOrder
		local Selected = props.Selected
		local buttons = props.Buttons or {}

		local children = {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
		}

		local buttonWidth = math.max(MAX_BUTTON_WIDTH / #buttons, MIN_BUTTON_WIDTH)

		for index, button in ipairs(buttons) do
			children[button.Key] = Roact.createElement(RoundTextButton, {
				LayoutOrder = index,
				Size = UDim2.new(0, buttonWidth, 0, BUTTON_HEIGHT),
				Style = Selected == button.Key and theme.roundToggleTextButtonTheme.styleSheet or
				theme.roundToggleTextButtonTheme.styleSheetNotToggled,

				TextSize = theme.roundTextButtonTheme.textSize,

				Value = button.Key,
				Name = button.Name,
				Active = button.Active,
				OnClicked = button.OnClicked,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, GROUP_HEIGHT),
			BackgroundTransparency = 1,
		}, children)
	end)
end

return ToggleButtonGroup