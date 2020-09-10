local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local FlattenMode = TerrainEnums.FlattenMode

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SelectableImageButton = require(ToolParts.SelectableImageButton)

local BUTTON_BACKGROUND_COLOR = Color3.fromRGB(228, 238, 254)
local FRAME_BORDER_COLOR1 = Color3.fromRGB(227, 227, 227)

local function FlattenModeSelector_render(props, theme, localization)
	local layoutOrder = props.LayoutOrder
	local flattenMode = props.flattenMode
	local setFlattenMode = props.setFlattenMode

	local flattenBothImage = theme.brushSettingsTheme.flattenBothImage
	local flattenErodeImage = theme.brushSettingsTheme.flattenErodeImage
	local flattenGrowImage = theme.brushSettingsTheme.flattenGrowImage

	local flattenModes = {
		{FlattenMode.Erode, flattenErodeImage},
		{FlattenMode.Grow, flattenGrowImage},
		{FlattenMode.Both, flattenBothImage},
	}

	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}

	for i, flattenModeDetails in ipairs(flattenModes) do
		children[flattenModeDetails[1]] = Roact.createElement(SelectableImageButton, {
			LayoutOrder = i,
			Item = flattenModeDetails[1],
			Image = flattenModeDetails[2],
			IsSelected = flattenMode == flattenModeDetails[1],
			SelectItem = setFlattenMode,
			Size = UDim2.new(0, 40, 0, 40),
			BackgroundColor3 = BUTTON_BACKGROUND_COLOR,
			SelectedTransparency = 0,
		})
	end

	return Roact.createElement(LabeledElementPair, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 48),
		BackgroundTransparency = 1,
		Text = localization:getText("BrushSettings", "FlattenMode"),
	}, {
		FlattenModes = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, 120, 0, 40),
			Image = theme.roundedBorderImage,
			ImageTransparency = 0,
			ImageColor3 = FRAME_BORDER_COLOR1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = theme.roundedBorderSlice,
			BackgroundTransparency = 1,
		}, children),
	})
end

if FFlagTerrainToolsUseDevFramework then
	local FlattenModeSelector = Roact.PureComponent:extend("FlattenModeSelector")

	function FlattenModeSelector:render()
		local theme = self.props.Theme:get()
		local localization = self.props.Localization:get()

		return FlattenModeSelector_render(self.props, theme, localization)
	end

	ContextServices.mapToProps(FlattenModeSelector, {
		Theme = ContextItems.UILibraryTheme,
		Localization = ContextItems.UILibraryLocalization,
	})

	return FlattenModeSelector

else
	local function FlattenModeSelector(props)
		return withLocalization(function(localization)
			return withTheme(function(theme)
				return FlattenModeSelector_render(props, theme, localization)
			end)
		end)
	end

	return FlattenModeSelector
end
