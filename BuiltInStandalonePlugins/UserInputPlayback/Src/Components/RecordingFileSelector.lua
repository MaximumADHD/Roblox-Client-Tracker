--[[
	Creates a SelectInput component and handles actions for it.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local SelectInput = UI.SelectInput
local Pane = UI.Pane

local Enums = require(Plugin.Src.Util.Enums)
local DMBridge = require(Plugin.Src.Util.DMBridge)

local SetPluginState = require(Plugin.Src.Actions.Common.SetPluginState)
local RecordingFileSelector = Roact.PureComponent:extend("RecordingFileSelector")

function RecordingFileSelector:init()
	self.state = {
		playbackFileNameOptions = {},
		selectedRecordingIndex = nil,
	}

	self.updatePlaybackFileNameOptions = function(guiObject, inputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1
			and inputObject.UserInputState == Enum.UserInputState.Begin then
			DMBridge.searchForUserInputRecordings()
		end
	end

	self.setPlayableRecordings = function(recordings: {string})
		self:setState({
			playbackFileNameOptions = recordings,
		})
	end

	self.loadRecordingIndex = function(index: number)
		local names = self.state.playbackFileNameOptions
		assert(names)
		local name = names[index]
		assert(name)
		DMBridge.loadRecordingWithName(name)
	end

	self.onSelectInputItemActivated = function(name: string, index: number)
		local props = self.props
		if not (props.PluginState == Enums.PluginState.Playing
			or props.PluginState == Enums.PluginState.Disabled) then
			self:setState({
				selectedRecordingIndex = index,
			})
            props.OnCanStartPlaying(true)
			DMBridge.loadRecordingWithName(name)
		end
	end
end

function RecordingFileSelector:didMount()
	DMBridge.connectSetPlayableRecordingsCallback(self.setPlayableRecordings)
end

function RecordingFileSelector:willUnmount()
	DMBridge.disconnectSetPlayableRecordingsCallback()
	self.props.SetPluginState(Enums.PluginState.Default)
end

function RecordingFileSelector:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization
	local style = props.Stylizer

	return Roact.createElement(Pane, {
        Size = UDim2.fromScale(1, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        LayoutOrder = 1,
        BackgroundTransparency = 1,
        Layout = Enum.FillDirection.Horizontal,
        Spacing = UDim.new(0, style.PaddingPx),
        VerticalAlignment = Enum.VerticalAlignment.Center,
        [Roact.Event.InputBegan] = self.updatePlaybackFileNameOptions,
    }, {
        Label = Roact.createElement(TextLabel, {
            Text = localization:getText("PlaybackTabView", "PlayFileLabel"),
            AutomaticSize = Enum.AutomaticSize.XY,
            LayoutOrder = -1,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
        }),
        Input = Roact.createElement(SelectInput, {
            Style = style.PlaybackSelectInput,
            Items = state.playbackFileNameOptions,
            PlaceholderText = localization:getText("PlaybackTabView", "SelectInputDefaultText"),
            SelectedIndex = state.selectedRecordingIndex,
            OnItemActivated = self.onSelectInputItemActivated,
        }),
    })
end

RecordingFileSelector = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(RecordingFileSelector)

local function mapStateToProps(state, props)
	return {
		ShouldSetEmulationDevice = state.playbackTab.shouldSetEmulationDevice,
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

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RecordingFileSelector)
