--[[
	MaterialSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local Panel = require(ToolParts.Panel)

local MaterialSettings = Roact.PureComponent:extend("MaterialSettings")

function MaterialSettings:render()
	local localization = self.props.Localization:get()

	return Roact.createElement(Panel, {
		Title = localization:getText("MaterialSettings", "MaterialSettings"),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		MaterialSettingsFragment = Roact.createElement(MaterialSettingsFragment, {
			LayoutOrder = 1,

			autoMaterial = self.props.autoMaterial,
			setAutoMaterial = self.props.setAutoMaterial,
			material = self.props.material,
			setMaterial = self.props.setMaterial,
			AllowAir = self.props.AllowAir,
		}),
	})
end

ContextServices.mapToProps(MaterialSettings, {
	Localization = ContextItems.UILibraryLocalization,
})

return MaterialSettings
