--[[
	PlaybackTabView: Contains a FileSelector UI group.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane

local Enums = require(Plugin.Src.Util.Enums)

local FileSelectorUIGroup = require(Plugin.Src.Components.FileSelectorUIGroup)
local PlaybackInfoUIGroup = require(Plugin.Src.Components.PlaybackInfoUIGroup)
local FilterSettingsUIGroup = require(Plugin.Src.Components.FilterSettingsUIGroup)

local PlaybackTabView = Roact.PureComponent:extend("PlaybackTabView")

local kRoduxStoreContext = "playbackTabFilter"

function PlaybackTabView:render()
	local props = self.props
	local style = props.Stylizer

	local isUIDisabled = props.PluginState == Enums.PluginState.Playing
		or props.PluginState == Enums.PluginState.Disabled

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = style.PaddingPx,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, style.PaddingPx),
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		FileSelector = Roact.createElement(FileSelectorUIGroup, {
			LayoutOrder = 1,
			RoduxStoreContext = kRoduxStoreContext,
		}),
		PlaybackInfoGroup = Roact.createElement(PlaybackInfoUIGroup, {
			LayoutOrder = 2,
		}),
		FilterSettings = Roact.createElement(FilterSettingsUIGroup, {
			LayoutOrder = 3,
			RoduxStoreContext = kRoduxStoreContext,
			Disabled = isUIDisabled,
		}),
	})
end

PlaybackTabView = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(PlaybackTabView)

local function mapStateToProps(state, props)
	return {
		PluginState = state.common.pluginState,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PlaybackTabView)
