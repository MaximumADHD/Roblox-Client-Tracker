local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local BiomeSelector = require(ToolParts.BiomeSelector)
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)

local BrushProperties = ToolParts.BrushProperties
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)

local Constants = require(Plugin.Src.Util.Constants)

local BiomeSettingsFragment = Roact.PureComponent:extend("BiomeSettingsFragment")

function BiomeSettingsFragment:render()
	local localization = self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder or 1

	local useHeightPicker = self.props.showHeightPicker

	return Roact.createFragment({
		BiomeSelect = Roact.createElement(BiomeSelector, {
			LayoutOrder = layoutOrder,
			biomeSelection = self.props.biomeSelection,
			selectBiome = self.props.selectBiome,
		}),

		BiomeSize =  Roact.createElement(LabeledSlider, {
			LayoutOrder = layoutOrder + 1,
			Text = localization:getText("Generate", "BiomeSize"),
			Min = Constants.MIN_BIOME_SIZE,
			Max = Constants.MAX_BIOME_SIZE,
			SnapIncrement = Constants.BIOME_SNAP_INCREMENT,
			Value = self.props.biomeSize,
			SetValue = self.props.setBiomeSize,
		}),

		HeightSelection = FFlagTerrainToolsConvertPartTool and useHeightPicker and Roact.createElement(HeightSelectionToggle, {
			LayoutOrder = layoutOrder + 2,
			Label = localization:getText("Generate", "BaseLevel"),
			heightPicker = self.props.heightPicker,
			setHeightPicker = self.props.setHeightPicker,
			planePositionY = self.props.planePositionY,
			setPlanePositionY = self.props.setPlanePositionY,
		}),

		CavesToggle = Roact.createElement(LabeledToggle, {
			LayoutOrder = layoutOrder + 3,
			Text = localization:getText("Generate", "Caves"),
			IsOn = self.props.haveCaves,
			SetIsOn = self.props.setHaveCaves,
		}),
	})
end

ContextServices.mapToProps(BiomeSettingsFragment, {
	Localization = ContextItems.UILibraryLocalization,
})

return BiomeSettingsFragment
