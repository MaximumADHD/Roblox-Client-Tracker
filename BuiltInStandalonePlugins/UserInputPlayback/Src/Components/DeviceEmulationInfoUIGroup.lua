local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local Pane = UI.Pane

local StringFormatters = require(Plugin.Src.Util.StringFormatters)
local UIKeyValueTextLabel = require(Plugin.Src.Components.UIKeyValueTextLabel)

local DeviceEmulationInfoUIGroup = Roact.PureComponent:extend("DeviceEmulationInfoUIGroup")

function DeviceEmulationInfoUIGroup:init()
end

function DeviceEmulationInfoUIGroup:render()
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
			Text = localization:getText("RecordTabView", "CurrentRecordingDeviceLabel"),
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
			DeviceName = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("RecordTabView", "EmulationDeviceName"),
				Value = StringFormatters.formatDeviceName(props.EmulationDeviceId, localization),
				LayoutOrder = 1,
			}),
			Orientation = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("RecordTabView", "EmulationDeviceOrientation"),
				Value = StringFormatters.formatDeviceOrientation(props.EmulationDeviceOrientation, props.EmulationDeviceId, localization),
				LayoutOrder = 2,
			}),
			Resolution = Roact.createElement(UIKeyValueTextLabel, {
				Label = localization:getText("RecordTabView", "EmulationDeviceResolution"),
				Value = StringFormatters.format2dResolution(props.CurrentScreenSize,
					localization:getText("RecordTabView", "ResolutionPixelsName")),
				LayoutOrder = 3,
			}),
		}),
	})
end

DeviceEmulationInfoUIGroup = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(DeviceEmulationInfoUIGroup)

local function mapStateToProps(state, props)
	return {
		ShouldRecordOnGamePlayStart = state.recordTab.shouldStart,
		CurrentScreenSize = state.recordTab.screenSize,
		EmulationDeviceId = state.recordTab.emulationDeviceId,
		EmulationDeviceOrientation = state.recordTab.emulationDeviceOrientation,
		RecordingMode = state.recordTab.recordingMode,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(DeviceEmulationInfoUIGroup)
