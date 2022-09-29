--[[
	The bottom pane of the tag editor, showing settings for the selected tag
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane

local TagSettingsListView = require(script.Parent.TagSettingsListView)

export type Props = {
	IsSettingsPaneMinimized: boolean,
	OnSettingsPaneToggle: (() -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	TitlePaneSize: UDim2,
	TitlePaneSpacing: number,
}

local TagSettingsPane = Roact.PureComponent:extend("TagSettingsPane")

function TagSettingsPane:init()
	self.OnButtonClicked = function()
		print("Click!")
	end
end

function TagSettingsPane:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagSettingsPane

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		TitlePane = Roact.createElement(Pane, {
			Style = "SubtleBox",
			Size = style.TitlePaneSize,
			LayoutOrder = 1,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = style.TitlePaneSpacing,
		}, {
			ExpandCollapseButton = Roact.createElement(IconButton, {
				Text = "Tag Settings",
				LeftIcon = if props.IsSettingsPaneMinimized then "rbxasset://textures/TerrainTools/button_arrow.png" else"rbxasset://textures/TerrainTools/button_arrow_down.png",
				OnClick = props.OnSettingsPaneToggle,
				Size = style.TitlePaneSize,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundStyle = "SubtleBox",
			}),
		}),

		SettingsList = Roact.createElement(TagSettingsListView, {
			LayoutOrder = 2,
		}),
	})
end

TagSettingsPane = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingsPane)

return TagSettingsPane
