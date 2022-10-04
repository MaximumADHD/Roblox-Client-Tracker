--[[
	The bottom pane of the tag editor, showing settings for the selected tag
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Pane = UI.Pane

local TagSettingsListView = require(script.Parent.TagSettingsListView)
local TagSettingsToggleButton = require(script.Parent.TagSettingsToggleButton)

local TagSettingsPane = Roact.PureComponent:extend("TagSettingsPane")

function TagSettingsPane:render()

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		TagSettingsToggleButton = Roact.createElement(TagSettingsToggleButton, {
			LayoutOrder = 1,
		}),
		TagSettingsList = Roact.createElement(TagSettingsListView, {
			LayoutOrder = 2,
		}),
	})
end


return TagSettingsPane
