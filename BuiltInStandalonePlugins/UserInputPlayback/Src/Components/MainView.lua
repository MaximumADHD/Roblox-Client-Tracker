local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local Components = Plugin.Src.Components
local TabbedView = require(Components.TabbedView)
local PlaybackTabView = require(Components.PlaybackTabView)
local RecordTabView = require(Components.RecordTabView)

local Enums = require(Plugin.Src.Util.Enums)
local DMBridge = require(Plugin.Src.Util.DMBridge)

local SetPluginState = require(Plugin.Src.Actions.Common.SetPluginState)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:didMount()
	DMBridge.setPluginObject(self.props.Plugin:get())
	DMBridge.setPluginStateRoduxActionHandler(self.props.SetPluginState)
end

function MainView:render()
	local props = self.props
	local localization = self.props.Localization
	local disabled = props.PluginState == Enums.PluginState.Disabled
	local isRecording = props.PluginState == Enums.PluginState.Recording
	local isPlaying = props.PluginState == Enums.PluginState.Playing

	return Roact.createElement(TabbedView, {
		Tabs = {
			{
				Label = localization:getText("Plugin", "RecordingTabTitle"),
				ContentComponent = RecordTabView,
				Disabled = disabled or isPlaying,
			},
			{
				Label = localization:getText("Plugin", "PlaybackTabTitle"),
				ContentComponent = PlaybackTabView,
				Disabled = disabled or isRecording,
			},
		},
	})
end

MainView = ContextServices.withContext({
	Plugin = ContextServices.Plugin,
	Localization = ContextServices.Localization,
})(MainView)

local function mapStateToProps(state, props)
	return {
		PluginState = state.common.pluginState,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetPluginState = function(value)
			dispatch(SetPluginState(value))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)
