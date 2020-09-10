--[[
	MaterialSettings.lua
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local ToolParts = script.Parent
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local Panel = require(ToolParts.Panel)

local function MaterialSettings_render(props, localization)
	return Roact.createElement(Panel, {
		Title = localization:getText("MaterialSettings", "MaterialSettings"),
		LayoutOrder = props.LayoutOrder,
	}, {
		MaterialSettingsFragment = Roact.createElement(MaterialSettingsFragment, {
			LayoutOrder = 1,

			autoMaterial = props.autoMaterial,
			setAutoMaterial = props.setAutoMaterial,
			material = props.material,
			setMaterial = props.setMaterial,
			AllowAir = props.AllowAir,
		}),
	})
end

if FFlagTerrainToolsUseDevFramework then
	local MaterialSettings = Roact.PureComponent:extend("MaterialSettings")

	function MaterialSettings:render()
		local localization = self.props.Localization:get()

		return MaterialSettings_render(self.props, localization)
	end

	ContextServices.mapToProps(MaterialSettings, {
		Localization = ContextItems.UILibraryLocalization,
	})

	return MaterialSettings

else
	local function MaterialSettings(props)
		return withLocalization(function(localization)
			return MaterialSettings_render(props, localization)
		end)
	end

	return MaterialSettings
end
