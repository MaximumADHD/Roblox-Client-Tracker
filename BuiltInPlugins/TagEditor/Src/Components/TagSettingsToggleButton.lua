--[[
	The bottom pane of the tag editor, showing settings for the selected tag
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane

local Action = require(Plugin.Src.Actions)

export type Props = {
	LayoutOrder: number,
	IsSettingsPaneMinimized: boolean,
	OnTagSettingsPaneToggle: (() -> ()),
	tagMenu: string,
	minimizedSettingsPane: boolean,
	setMinimizedSettingsPane: ((boolean) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ClosedArrowImage: string,
	OpenArrowImage: string,
	Size: UDim2,
	Spacing: number,
}

local TagSettingsToggleButton = Roact.PureComponent:extend("TagSettingsToggleButton")

function TagSettingsToggleButton:init()
	self.onExpandCollapseClicked = function()
		local props: _Props = self.props
		props.setMinimizedSettingsPane(not props.minimizedSettingsPane)
	end

end

function TagSettingsToggleButton:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagSettingsToggleButton

	local settingsForString = localization:getText("Info", "SettingsFor")
	local tagSettingsString = localization:getText("Info", "TagSettings")

	local tagName = props.tagMenu

	return Roact.createElement(Pane, {
		Style = "SubtleBox",
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = style.Spacing,
	}, {
		ExpandCollapseButton = Roact.createElement(IconButton, {
			Text = if tagName ~= nil then settingsForString .. " " .. tagName else tagSettingsString,
			LeftIcon = if props.minimizedSettingsPane then style.ClosedArrowImage else style.OpenArrowImage,
			OnClick = self.onExpandCollapseClicked,
			Size = style.Size,
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundStyle = "SubtleBox",
		}),
	})
end

TagSettingsToggleButton = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingsToggleButton)


local function mapStateToProps(state, _)
	return {
		tagMenu = state.TagMenu,
		minimizedSettingsPane = state.MinimizedSettingsPane,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setMinimizedSettingsPane = function(minimized: boolean)
			dispatch(Action.SetMinimizedSettingsPane(minimized))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagSettingsToggleButton)
