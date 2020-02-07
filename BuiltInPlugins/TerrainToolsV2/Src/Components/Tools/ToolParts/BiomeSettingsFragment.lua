
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

local Constants = require(Plugin.Src.Util.Constants)

local function BiomeSettingsFragment(props)
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local layoutOrder = props.LayoutOrder or 1

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

				CavesToggle = Roact.createElement(LabeledToggle, {
					LayoutOrder = layoutOrder + 2,
					Text = localization:getText("Generate", "Caves"),
					IsOn = props.haveCaves,
					SetIsOn = props.setHaveCaves,
				}),
			})
		end)
	end)
end

return BiomeSettingsFragment
