local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local ToolParts = script.Parent
local LabeledToggle = require(ToolParts.LabeledToggle)
local MaterialSelector = require(ToolParts.MaterialSelector)

local function MaterialSettingsFragment_render(props, localization)
	local layoutOrder = props.LayoutOrder or 1
	local autoMaterial = props.autoMaterial

	return Roact.createFragment({
		AutoMaterial = autoMaterial ~= nil and Roact.createElement(LabeledToggle, {
			LayoutOrder = layoutOrder,
			Text = localization:getText("MaterialSettings", "AutoMaterial"),
			IsOn = autoMaterial,
			SetIsOn = props.setAutoMaterial,
		}),

		MaterialSelector = Roact.createElement(MaterialSelector, {
			LayoutOrder = layoutOrder + 1,
			material = props.material,
			setMaterial = props.setMaterial,
			AllowAir = props.AllowAir,
		}),
	})
end

if FFlagTerrainToolsUseDevFramework then
	local MaterialSettingsFragment = Roact.PureComponent:extend("MaterialSettingsFragment")

	function MaterialSettingsFragment:render()
		local localization = self.props.Localization:get()

		return MaterialSettingsFragment_render(self.props, localization)
	end

	ContextServices.mapToProps(MaterialSettingsFragment, {
		Localization = ContextItems.UILibraryLocalization,
	})

	return MaterialSettingsFragment
else
	local function MaterialSettingsFragment(props)
		return withLocalization(function(localization)
			return withTheme(function(theme)
				return MaterialSettingsFragment_render(props, localization)
			end)
		end)
	end

	return MaterialSettingsFragment
end
