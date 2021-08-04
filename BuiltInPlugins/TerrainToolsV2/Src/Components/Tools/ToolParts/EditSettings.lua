--[[
	EditSettings.lua
]]
local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local LabeledToggle = require(ToolParts.LabeledToggle)
local Panel = require(ToolParts.Panel)

local EditSettings = Roact.PureComponent:extend(script.Name)

function EditSettings:render()
	local localization = self.props.Localization:get()

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

if FFlagTerrainToolsV2WithContext then
	EditSettings = withContext({
		Localization = ContextItems.UILibraryLocalization,
	})(EditSettings)
else
	ContextServices.mapToProps(EditSettings, {
		Localization = ContextItems.UILibraryLocalization,
	})
end


return EditSettings
