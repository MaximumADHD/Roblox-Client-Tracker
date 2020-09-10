local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local UILibraryCompat = Plugin.Src.UILibraryCompat
local RoundTextButton = FFlagTerrainToolsUseDevFramework
	and require(UILibraryCompat.RoundTextButton)
	or UILibrary.Component.RoundTextButton

-- TODO: This is very related to ButtonGroup, should simplify this to be DRY
local MIN_BUTTON_WIDTH = 64
local MAX_BUTTON_WIDTH = 200
local BUTTON_HEIGHT = 28
local GROUP_HEIGHT = BUTTON_HEIGHT + 24

local function ToggleButtonGroup_render(props, theme)
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
end

if FFlagTerrainToolsUseDevFramework then
	local ToggleButtonGroup = Roact.PureComponent:extend("ButtonGroup")

	function ToggleButtonGroup:render()
		local theme = self.props.Theme:get()

		return ToggleButtonGroup_render(self.props, theme)
	end

	ContextServices.mapToProps(ToggleButtonGroup, {
		Theme = ContextItems.UILibraryTheme,
	})


	return ToggleButtonGroup
else

	local function ToggleButtonGroup(props)
		return withTheme(function(theme)
			return ToggleButtonGroup_render(props, theme)
		end)
	end

	return ToggleButtonGroup
end
