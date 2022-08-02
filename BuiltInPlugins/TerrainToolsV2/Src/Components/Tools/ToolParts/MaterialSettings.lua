--[[
	MaterialSettings.lua
]]
local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = if FFlagRemoveUILibraryCompatLocalization then nil else require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local Panel = require(ToolParts.Panel)

local MaterialSettings = Roact.PureComponent:extend("MaterialSettings")

function MaterialSettings:render()
	local localization = if FFlagRemoveUILibraryCompatLocalization then self.props.Localization else self.props.Localization:get()

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

MaterialSettings = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
})(MaterialSettings)

return MaterialSettings
