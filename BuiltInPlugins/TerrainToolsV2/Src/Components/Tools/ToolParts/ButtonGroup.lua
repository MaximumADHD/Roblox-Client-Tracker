local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local UILibraryCompat = Plugin.Src.UILibraryCompat
local RoundTextButton = require(UILibraryCompat.RoundTextButton)

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
		children[button.Key] = Roact.createElement(RoundTextButton, {
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

if FFlagTerrainToolsV2WithContext then
	ButtonGroup = withContext({
		Theme = ContextItems.UILibraryTheme,
	})(ButtonGroup)
else
	ContextServices.mapToProps(ButtonGroup, {
		Theme = ContextItems.UILibraryTheme,
	})
end


return ButtonGroup
