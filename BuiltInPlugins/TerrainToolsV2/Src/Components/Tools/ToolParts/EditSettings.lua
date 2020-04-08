--[[
	EditSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local ToolParts = script.Parent
local LabeledToggle = require(ToolParts.LabeledToggle)
local Panel = require(ToolParts.Panel)

local EditSettings = Roact.PureComponent:extend(script.Name)

function EditSettings:render()
	return withLocalization(function(localization)
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
	end)
end

return EditSettings
