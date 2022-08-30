local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local UILibraryCompat = Plugin.Src.UILibraryCompat

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local Button = if FFlagRemoveUILibraryButton then UI.Button else require(UILibraryCompat.RoundTextButton)

local MIN_BUTTON_WIDTH = 64
local MAX_BUTTON_WIDTH = 200
local BUTTON_HEIGHT = 28
local GROUP_HEIGHT = BUTTON_HEIGHT + 24

local ButtonGroup = Roact.PureComponent:extend("ButtonGroup")

function ButtonGroup:render()
	local theme = self.props.Theme:get()

	local layoutOrder = self.props.LayoutOrder
	local buttons = self.props.Buttons or {}

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
		children[button.Key] = Roact.createElement(Button, if FFlagRemoveUILibraryButton then {
			OnClick = button.OnClicked,
			LayoutOrder = index,
			Size = UDim2.new(0, buttonWidth, 0, BUTTON_HEIGHT),
			Style = "Round",
			StyleModifier = if button.Active then nil else StyleModifier.Disabled,
			Text = button.Name,
		} else {
			LayoutOrder = index,
			Size = UDim2.new(0, buttonWidth, 0, BUTTON_HEIGHT),
			Style = theme.roundTextButtonTheme.styleSheet,

			TextSize = theme.roundTextButtonTheme.textSize,

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
end

ButtonGroup = withContext({
	Theme = ContextItems.UILibraryTheme,
})(ButtonGroup)

return ButtonGroup
