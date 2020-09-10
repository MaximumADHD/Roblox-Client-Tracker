--[[
	EditSettings.lua
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
local LabeledToggle = require(ToolParts.LabeledToggle)
local Panel = require(ToolParts.Panel)

local EditSettings = Roact.PureComponent:extend(script.Name)

function EditSettings:_render(localization)
	return Roact.createElement(Panel, {
		Title = localization:getText("EditSettings", "EditSettings"),
		Padding = UDim.new(0, 12),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		MergeEmptyToggle = Roact.createElement(LabeledToggle, {
			LayoutOrder = 1,
			Text = localization:getText("EditSettings", "MergeEmpty"),
			IsOn = self.props.mergeEmpty,
			SetIsOn = self.props.setMergeEmpty,
		}),
	})
end

function EditSettings:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(EditSettings, {
		Localization = ContextItems.UILibraryLocalization,
	})
end

return EditSettings
