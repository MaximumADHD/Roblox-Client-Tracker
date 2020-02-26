
local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent
local BiomeSelector = require(ToolParts.BiomeSelector)
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)

local BrushProperties = ToolParts.BrushProperties
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

local Constants = require(Plugin.Src.Util.Constants)

local function BiomeSettingsFragment(props)
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local layoutOrder = props.LayoutOrder or 1

			local useHeightPicker = props.setPlanePositionY and props.setHeightPicker

			return Roact.createFragment({
				BiomeSelect = Roact.createElement(BiomeSelector, {
					LayoutOrder = layoutOrder,
					theme = theme,
					localization = localization,
					biomeSelection = props.biomeSelection,
					selectBiome = props.selectBiome,
				}),

				BiomeSize =  Roact.createElement(LabeledSlider, {
					LayoutOrder = layoutOrder + 1,
					Text = localization:getText("Generate", "BiomeSize"),
					Min = Constants.MIN_BIOME_SIZE,
					Max = Constants.MAX_BIOME_SIZE,
					SnapIncrement = Constants.BIOME_SNAP_INCREMENT,
					Value = props.biomeSize,
					SetValue = props.setBiomeSize,
				}),

				HeightSelection = FFlagTerrainToolsConvertPartTool and useHeightPicker and Roact.createElement(HeightSelectionToggle, {
					LayoutOrder = layoutOrder + 2,
					Label = localization:getText("Generate", "BaseLevel"),
					heightPicker = props.heightPicker,
					setHeightPicker = props.setHeightPicker,
					planePositionY = props.planePositionY,
					setPlanePositionY = props.setPlanePositionY,
				}),

				CavesToggle = Roact.createElement(LabeledToggle, {
					LayoutOrder = layoutOrder + 3,
					Text = localization:getText("Generate", "Caves"),
					IsOn = props.haveCaves,
					SetIsOn = props.setHaveCaves,
				}),
			})
		end)
	end)
end

return BiomeSettingsFragment
