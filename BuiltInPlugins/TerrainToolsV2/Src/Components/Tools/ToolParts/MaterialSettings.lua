--[[
	MaterialSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local ToolParts = script.Parent
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local Panel = require(ToolParts.Panel)

local function MaterialSettings(props)
	return withLocalization(function(localization)
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
	end)
end

return MaterialSettings
