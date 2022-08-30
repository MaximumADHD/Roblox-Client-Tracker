--[[
	Represents the top entry in a TrackList.

	Props:
		int LayoutOrder = The order this element displays in a UIListLayout.
		string Name = The name to display in this track.
		list<string> UnusedTracks = Tracks that are available to add but have not
			been added.

		function OnTrackAdded(track) = A callback for when the user clicks the
			add button and then selects a track to add to the TrackList.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local IKController = require(Plugin.Src.Components.IK.IKController)

local FaceControlsEditorController = require(Plugin.Src.Components.FaceControlsEditor.FaceControlsEditorController)
local RecordingModeButton = require(Plugin.Src.Components.FacialAnimationRecorder.RecordingModeButton)

local TrackListEntry = require(Plugin.Src.Components.TrackList.TrackListEntry)
local AddTrackButton = require(Plugin.Src.Components.TrackList.AddTrackButton)
local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFFlagFaceControlsEditorUI = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUI)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local SummaryTrack = Roact.PureComponent:extend("SummaryTrack")

local PADDING = 12

function SummaryTrack:init()
	self.onTrackAdded = function(instance, track, trackType)
		if self.props.OnTrackAdded then
			self.props.OnTrackAdded(instance, track, trackType)
		end
	end
end

function truncateAtMiddle(labelText, maxChars, separator)
	if #labelText > maxChars then
		local separator = separator or "..."
		local separatorLength = #separator
		local charsToShow = maxChars - separatorLength
		local frontChars = math.ceil(charsToShow / 2)
		local backChars = math.floor(charsToShow / 2)
		return string.sub(labelText, 0, frontChars) .. separator .. string.sub(labelText,  #labelText - backChars)
	end
	return labelText
end

function SummaryTrack:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local name = props.Name
	local layoutOrder = props.LayoutOrder
	local tracks = props.UnusedTracks
	local facs = props.UnusedFacs

	local trackTheme = theme.trackTheme
	local truncatedAtMiddleName = ""
	local textWidth = StringUtils.getTextWidth(name, trackTheme.textSize, theme.font)
	if GetFFlagFacialAnimationRecordingInStudio() then
		truncatedAtMiddleName = truncateAtMiddle( name, 16)
		textWidth = StringUtils.getTextWidth(truncatedAtMiddleName , trackTheme.textSize, theme.font)
	end
	local showTrackButton = (tracks and not isEmpty(tracks)) or (facs and not isEmpty(facs))

	return Roact.createElement(TrackListEntry, {
		Height = Constants.SUMMARY_TRACK_HEIGHT,
		Indent = 1,
		LayoutOrder = layoutOrder,
		Primary = true,
	}, {
		NameLabel = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,

			Text = ( GetFFlagFacialAnimationRecordingInStudio() and truncatedAtMiddleName) or name,
			Font = theme.font,
			TextSize = trackTheme.textSize,
			TextColor3 = trackTheme.textColor,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		--new multi buttons in list layout for when FaceControlsEditorUI is enabled
		LeftButtonsListContainer = GetFFlagFaceControlsEditorUI() and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			Position = UDim2.new(0, textWidth + PADDING, 0.5, 0),
		},	{
			LeftButtonsList = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),
			IKController = Roact.createElement(IKController, {
			}),
			FaceControlsEditorController = Roact.createElement(FaceControlsEditorController, {
			}),
			-- TODO: replace with integration with FaceControlsEditorController button with popup menu
			RecordingModeButton = GetFFlagFacialAnimationRecordingInStudio() and Roact.createElement(RecordingModeButton, {
			}),
		}),

		--old single button layout for when FaceControlsEditorUI is not enabled
		IKController = not GetFFlagFaceControlsEditorUI() and Roact.createElement(IKController, {
			Position = UDim2.new(0, textWidth + PADDING, 0.5, 0),
		}) or nil,

		AddTrackButton = showTrackButton and Roact.createElement(AddTrackButton, {
			Size = UDim2.new(0, Constants.TRACKLIST_BUTTON_SIZE, 0, Constants.TRACKLIST_BUTTON_SIZE),
			Position = UDim2.new(1, -Constants.TRACKLIST_RIGHT_PADDING, 0.5, 0),
			Tracks = tracks,
			Facs = facs,
			OnTrackSelected = self.onTrackAdded,
		}) or nil,
	})
end

SummaryTrack = withContext({
	Stylizer = ContextServices.Stylizer,
})(SummaryTrack)

return SummaryTrack
