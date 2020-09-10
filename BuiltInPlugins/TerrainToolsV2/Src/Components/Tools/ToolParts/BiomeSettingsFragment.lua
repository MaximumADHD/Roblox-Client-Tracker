local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local ToolParts = script.Parent
local BiomeSelector = require(ToolParts.BiomeSelector)
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)

local BrushProperties = ToolParts.BrushProperties
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)

local Constants = require(Plugin.Src.Util.Constants)

-- TODO: Remove theme when removing FFlagTerrainToolsUseDevFramework
local function BiomeSettingsFragment_render(props, localization, theme)
	local layoutOrder = props.LayoutOrder or 1

	local useHeightPicker = props.showHeightPicker

	return Roact.createFragment({
		BiomeSelect = Roact.createElement(BiomeSelector, {
			LayoutOrder = layoutOrder,
			-- TODO: Remove theme and localization when removing FFlagTerrainToolsUseDevFramework
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
end

if FFlagTerrainToolsUseDevFramework then
	local BiomeSettingsFragment = Roact.PureComponent:extend("BiomeSettingsFragment")

	function BiomeSettingsFragment:render()
		local localization = self.props.Localization:get()

		return BiomeSettingsFragment_render(self.props, localization, nil)
	end

	ContextServices.mapToProps(BiomeSettingsFragment, {
		Localization = ContextItems.UILibraryLocalization,
	})

	return BiomeSettingsFragment
else

	local function BiomeSettingsFragment(props)
		return withLocalization(function(localization)
			return withTheme(function(theme)
				return BiomeSettingsFragment_render(props, localization, theme)
			end)
		end)
	end

	return BiomeSettingsFragment
end
