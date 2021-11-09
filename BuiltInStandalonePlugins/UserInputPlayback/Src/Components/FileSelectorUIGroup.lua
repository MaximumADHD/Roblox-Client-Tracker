--[[
	Creates a UIGroup that contains a file selector, "play" button, and status text.
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
local SelectInput = UI.SelectInput
local Pane = UI.Pane
local HoverArea = UI.HoverArea

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local Enums = require(Plugin.Src.Util.Enums)

local FileSelectorUIGroup = Roact.PureComponent:extend("FileSelectorUIGroup")

function FileSelectorUIGroup:init()
	self.updatePlaybackFileNameOptions = function(guiObject, inputObject)
		-- TODO: Update file options
	end

	self.onPlayButtonClicked = function()
		-- TODO: Handle play button clicked
	end

	self.onSelectInputItemActivated = function(value, index)
		-- TODO: Handle select item
	end
end

function FileSelectorUIGroup:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local statusMessage, playButtonText, playButtonStyleModifier
	if props.PlaybackMode == Enums.PlaybackMode.Playing then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessagePlaying")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonStop")
		playButtonStyleModifier = StyleModifier.Pressed
	elseif props.PlaybackMode == Enums.PlaybackMode.Default then
		if props.ShouldStartPlayback then
			statusMessage = localization:getText("PlaybackTabView", "StatusMessageShouldStartPlayback")
			playButtonText = localization:getText("PlaybackTabView", "PlayButtonReady")
			playButtonStyleModifier = StyleModifier.Selected
		else
			statusMessage = localization:getText("PlaybackTabView", "StatusMessageNotPlaying")
			playButtonText = localization:getText("PlaybackTabView", "PlayButtonPlay")
			if props.CurrentPlaybackRecordingDataValid == true then
				playButtonStyleModifier = nil
			else
				playButtonStyleModifier = StyleModifier.Disabled
			end
		end
	elseif props.PlaybackMode == Enums.PlaybackMode.Disabled then
		statusMessage = localization:getText("PlaybackTabView", "StatusMessageDisabled")
		playButtonText = localization:getText("PlaybackTabView", "PlayButtonPlay")
		playButtonStyleModifier = StyleModifier.Disabled
	end

	return Roact.createElement(Pane, {
		LayoutOrder = 1,
		Style = "CornerBox",
		Size = UDim2.fromOffset(style.UIGroupWidthPx, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, style.PaddingPx),
		Padding = style.PaddingPx,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		InputText = Roact.createElement(Pane, {
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
				Items = props.PlaybackFileNameOptions,
				PlaceholderText = localization:getText("PlaybackTabView", "SelectInputDefaultText"),
				SelectedIndex = props.SelectedRecordingIndex,
				OnItemActivated = self.onSelectInputItemActivated,
			}),
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
		SelectedRecordingIndex = state.playbackTab.selectedRecordingIndex,
		PlaybackFileNameOptions = state.playbackTab.playbackFileNameOptions,
		PlaybackMode = state.playbackTab.playbackMode,
		ShouldStartPlayback = state.playbackTab.shouldStartPlayback,
		CurrentPlaybackRecordingDataValid = state.playbackTab.currentPlaybackRecordingDataValid,
		ShouldSetEmulationDevice = state.playbackTab.shouldSetEmulationDevice,
	}
end

local function mapDispatchToProps(dispatch)
	return {
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FileSelectorUIGroup)
