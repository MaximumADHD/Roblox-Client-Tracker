--[[
	Wraps MapSettingsWithPreviewFragment inside a Panel called Map Settings
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local ToolParts = script.Parent
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)

local MapSettingsWithPreview = Roact.PureComponent:extend(script.Name)

function MapSettingsWithPreview:_render(localization)
	local layoutOrder = self.props.LayoutOrder
	local isSubsection = self.props.isSubsection

	local fragmentProps = Cryo.Dictionary.join(self.props, {
		LayoutOrder = Cryo.None,
		isSubsection = Cryo.None,

		InitialLayoutOrder = 1,
	})

	return Roact.createElement(Panel, {
		LayoutOrder = layoutOrder,
		isSubsection = isSubsection,
		Title = localization:getText("MapSettings", "MapSettings"),
		Padding = UDim.new(0, 12),
	}, {
		MapSettingsWithPreviewFragment = Roact.createElement(MapSettingsWithPreviewFragment, fragmentProps),
	})
end

function MapSettingsWithPreview:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(MapSettingsWithPreview, {
		Localization = ContextItems.UILibraryLocalization,
	})
end

return MapSettingsWithPreview
