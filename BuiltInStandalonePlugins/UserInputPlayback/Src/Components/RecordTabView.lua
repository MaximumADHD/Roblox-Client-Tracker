--[[
	RecordTabView: Contains a FilterSettingsUIGroup, DeviceEmulationInfoUIGroup, and a record button
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel
local HoverArea = UI.HoverArea

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local FilterSettingsUIGroup = require(Plugin.Src.Components.FilterSettingsUIGroup)
local DeviceEmulationInfoUIGroup = require(Plugin.Src.Components.DeviceEmulationInfoUIGroup)
local Enums = require(Plugin.Src.Util.Enums)

local RecordTabView = Roact.PureComponent:extend("TabView")

RecordTabView.defaultProps = {
	ShouldRecordOnGamePlayStart = false,
	RecordingMode = Enums.RecordingMode.Default,
}

function RecordTabView:init()
	self.onRecordingButtonClicked = function()
	end
end

function RecordTabView:render()
	local props = self.props
	local style = props.Stylizer
	local localization = self.props.Localization

	local statusMessage, recordButtonText, recordButtonStyleModifier
	local isUIDisabled
	if props.RecordingMode == Enums.RecordingMode.Recording then
		statusMessage = localization:getText("RecordTabView", "StatusMessageRecording")
		recordButtonText = localization:getText("RecordTabView", "RecordButtonStopRecording")
		recordButtonStyleModifier = StyleModifier.Pressed
		isUIDisabled = true
	elseif props.RecordingMode == Enums.RecordingMode.Default then
		isUIDisabled = false
		if props.ShouldRecordOnGamePlayStart then
			statusMessage = localization:getText("RecordTabView", "StatusMessageShouldRecordOnGamePlayStart")
			recordButtonText = localization:getText("RecordTabView", "RecordButtonReadyToRecord")
			recordButtonStyleModifier = StyleModifier.Selected
		else
			statusMessage = localization:getText("RecordTabView", "StatusMessageNotRecording")
			recordButtonText = localization:getText("RecordTabView", "RecordButtonRecord")
			recordButtonStyleModifier = nil
		end
	elseif props.RecordingMode == Enums.RecordingMode.Disabled then
		statusMessage = localization:getText("RecordTabView", "StatusMessageDisabled")
		recordButtonText = localization:getText("RecordTabView", "RecordButtonRecord")
		recordButtonStyleModifier = StyleModifier.Disabled
		isUIDisabled = true
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = style.PaddingPx,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, style.PaddingPx),
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		FilterSettings = Roact.createElement(FilterSettingsUIGroup, {
			LayoutOrder = 1,
			Disabled = isUIDisabled,
			RoduxStoreContext = "recordTabFilter",
		}),

		DeviceEmulationInfoGroup = Roact.createElement(DeviceEmulationInfoUIGroup, {
			LayoutOrder = 2,
		}),
		
		RecordingButtonContainer = Roact.createElement(Pane, {
			LayoutOrder = 3,
			Style = "CornerBox",
			Size = UDim2.fromOffset(style.UIGroupWidthPx, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			Spacing = UDim.new(0, style.PaddingPx),
			Padding = style.PaddingPx,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			Button = Roact.createElement(Button, {
				Size = style.PrimaryButtonSize,
				LayoutOrder = 1,
				Style = "RoundPrimaryRecordButton",
				StyleModifier = recordButtonStyleModifier,
				Text = recordButtonText,
				OnClick = self.onRecordingButtonClicked,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),

			StatusTextLabel = Roact.createElement(TextLabel, {
				Text = statusMessage,
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
				Style = "StatusTextLabel",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
		}),
	})
end

RecordTabView = ContextServices.withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(RecordTabView)

local function mapStateToProps(state, props)
	return {
		RecordingMode = state.recordTab.recordingMode,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(RecordTabView)
