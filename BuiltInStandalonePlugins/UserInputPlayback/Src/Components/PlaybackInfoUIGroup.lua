--[[
	Creates a UIGroup that shows information for a selected recording.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local Pane = UI.Pane

local UIKeyValueTextLabel = require(Plugin.Src.Components.UIKeyValueTextLabel)
local StringFormatters = require(Plugin.Src.Util.StringFormatters)

local PlaybackInfoUIGroup = Roact.PureComponent:extend("PlaybackInfoUIGroup")

function PlaybackInfoUIGroup:init()
end

function PlaybackInfoUIGroup:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
	
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
		Label = Roact.createElement(TextLabel, {
			Text = localization:getText("PlaybackTabView", "RecordingInfoLabel"),
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),

		KeyValuePairs = Roact.createElement(Pane, {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 1,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			RecordingDuration = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("PlaybackTabView", "RecordingDuration"),
				Value = tostring(props.CurrentRecordingDurationSec),
				LayoutOrder = 1,
			}),
			NumberOfEvents = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("PlaybackTabView", "RecordingNumberOfEvents"),
				Value = tostring(props.CurrentRecordingNumEvents),
				LayoutOrder = 2,
			}),
			RecordingDeviceId = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("PlaybackTabView", "RecordingDevice"),
				Value = StringFormatters.formatDeviceName(props.CurrentRecordingDeviceId, localization),
				LayoutOrder = 3,
			}),
			RecordingOrientation = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("PlaybackTabView", "RecordingOrientation"),
				Value = StringFormatters.formatDeviceOrientation(props.CurrentRecordingDeviceOrientation, props.CurrentRecordingDeviceId, localization),
				LayoutOrder = 4,
			}),
			RecordingResolution = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("PlaybackTabView", "RecordingResolution"),
				Value = StringFormatters.format2dResolution(props.CurrentRecordingResolution,
					localization:getText("RecordTabView", "ResolutionPixelsName")),
				LayoutOrder = 5,
			}),
		}),
	})
end

PlaybackInfoUIGroup = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(PlaybackInfoUIGroup)


local function mapStateToProps(state, props)
	return {
		CurrentRecordingDurationSec = state.playbackTab.currentRecordingDurationSec,
		CurrentRecordingNumEvents = state.playbackTab.currentRecordingNumEvents,
		CurrentRecordingDeviceId = state.playbackTab.currentRecordingDeviceId,
		CurrentRecordingDeviceOrientation = state.playbackTab.currentRecordingDeviceOrientation,
		CurrentRecordingResolution = state.playbackTab.currentRecordingResolution,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PlaybackInfoUIGroup)
