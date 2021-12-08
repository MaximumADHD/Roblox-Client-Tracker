--[[
	Creates a UIGroup that contains a RecordingFileSelector, "play" button, and status text.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local Pane = UI.Pane
local HoverArea = UI.HoverArea
local TimeProgressBar = UI.TimeProgressBar

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local LabeledToggleButton = require(Plugin.Src.Components.LabeledToggleButton)
local RecordingFileSelector = require(Plugin.Src.Components.RecordingFileSelector)

local Enums = require(Plugin.Src.Util.Enums)
local DMBridge = require(Plugin.Src.Util.DMBridge)

local SetPluginState = require(Plugin.Src.Actions.Common.SetPluginState)
local SetShouldSetEmulationDevice = require(Plugin.Src.Actions.PlaybackTab.SetShouldSetEmulationDevice)

local FFlagDevFrameworkTimeProgressBar = game:GetFastFlag("DevFrameworkTimeProgressBar")

local FileSelectorUIGroup = Roact.PureComponent:extend("FileSelectorUIGroup")

function FileSelectorUIGroup:init()
	self.state = {
		canStartPlaying = false,
	}

	self.toggleEmulationEnabled = function()
		local props = self.props
		props.SetShouldSetEmulationDevice(not props.ShouldSetEmulationDevice, props.RoduxStoreContext)
	end

	self.onPlayButtonClicked = function()
		local pluginState = self.props.PluginState
		if pluginState == Enums.PluginState.Default and self.state.canStartPlaying then
			if DMBridge.getIsPlayMode() then
				-- Immediately start playback
				DMBridge.onStartPlaybackButtonClicked()
			else
				self.props.SetPluginState(Enums.PluginState.ShouldStartPlayback)
			end

		elseif pluginState == Enums.PluginState.Playing then
			DMBridge.onStopPlaybackButtonClicked()
		
		elseif pluginState == Enums.PluginState.ShouldStartPlayback then
			self.props.SetPluginState(Enums.PluginState.Default)
		end
	end

	self.onCanStartPlaying = function(value: boolean)
		self:setState({
			canStartPlaying = value,
		})
	end
end

function FileSelectorUIGroup:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization
	local style = props.Stylizer

	local statusMessage, playButtonText, playButtonStyleModifier
	local isLoadingBarVisible = false
	local isUIDisabled = false
	if props.PluginState == Enums.PluginState.Playing then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessagePlaying")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonStop")
		playButtonStyleModifier = StyleModifier.Pressed
		isUIDisabled = true
		isLoadingBarVisible = true
	elseif props.PluginState == Enums.PluginState.ShouldStartPlayback then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessageShouldStartPlayback")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonReady")
		playButtonStyleModifier = StyleModifier.Selected
		isUIDisabled = false
	elseif props.PluginState == Enums.PluginState.Default then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessageNotPlaying")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonPlay")
		if state.canStartPlaying then
			playButtonStyleModifier = nil
		else
			playButtonStyleModifier = StyleModifier.Disabled
		end
		isUIDisabled = false
	elseif props.PluginState == Enums.PluginState.Disabled then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessageDisabled")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonPlay")
		playButtonStyleModifier = StyleModifier.Disabled
		isUIDisabled = true
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Style = "CornerBox",
		Size = UDim2.fromOffset(style.UIGroupWidthPx, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, style.PaddingPx),
		Padding = style.PaddingPx,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		RecordingFileSelector = Roact.createElement(RecordingFileSelector, {
			OnCanStartPlaying = self.onCanStartPlaying,
		}),

		LoadingBar = (FFlagDevFrameworkTimeProgressBar and isLoadingBarVisible) and
			Roact.createElement(TimeProgressBar, {
			Width = style.ProgressBarWidth,
			LayoutOrder = 2,
			TotalTime = props.CurrentRecordingDurationSec,
		}),

		Button = Roact.createElement(Button, {
			Size = style.PrimaryButtonSize,
			LayoutOrder = 3,
			AnchorPoint = Vector2.new(0.5, 0),
			Style = "RoundPrimaryPlayButton",
			StyleModifier = playButtonStyleModifier,
			Text = playButtonText,
			OnClick = self.onPlayButtonClicked,
		}, {
			Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
		}),

		EmulationEnabled = Roact.createElement(LabeledToggleButton, {
			Selected = props.ShouldSetEmulationDevice,
			OnClick = self.toggleEmulationEnabled,
			Text = localization:getText("PlaybackTabView", "SetEmulationDeviceLabel"),
			Disabled = isUIDisabled,
			LayoutOrder = 4,
		}),

		StatusTextLabel = Roact.createElement(TextLabel, {
			Text = statusMessage,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 5,
			Style = "StatusTextLabel",
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
	})
end

FileSelectorUIGroup = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(FileSelectorUIGroup)

local function mapStateToProps(state, props)
	return {
		ShouldSetEmulationDevice = state.playbackTab.shouldSetEmulationDevice,
		PluginState = state.common.pluginState,
		CurrentRecordingDurationSec = state.playbackTab.currentRecordingDurationSec,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetPluginState = function(value)
			dispatch(SetPluginState(value))
		end,
		SetShouldSetEmulationDevice = function(value)
			dispatch(SetShouldSetEmulationDevice(value))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FileSelectorUIGroup)
