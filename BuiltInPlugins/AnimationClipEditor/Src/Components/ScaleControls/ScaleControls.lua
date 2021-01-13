--[[
	Component that contains two handles for keyframe scaling, as well
	as time labels for when the handles are being dragged. Only visible
	if there are keyframes selected by the user.

	Properties:
		table SelectedKeyframes = data about what keyframes are selected
		table PreviewKeyframes = temporary table of keyframes for when keys are being moved/scaled
		int StartFrame = starting timeline range in the editor
		int EndFrame = ending timeline range in the editor
		int TopTrackIndex = index of the track displayed at the top of the track list
		array Tracks = list of tracks currently present on the DopeSheet
		bool Dragging = whether or not the user is dragging scale handles
		bool ShowAsSeconds = whether or not to display time as seconds or frames
		int FrameRate = frame rate of this animation clip
		int DopeSheetWidth = width of the dope sheet - padding included
		int ZIndex = display order of this frame
		bool ShowSelectionArea = show a blue selection box covering the area of selected keys

		function OnScaleHandleDragStart(frame) = callback for when user begins to drag a scale handle
		function OnScaleHandleDragMoved(input) = callback for when user is actively dragging a scale handle
		function OnScaleHandleDragEnded() = callback for when user has finished dragging a scale handle
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Constants = require(Plugin.Src.Util.Constants)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local ScaleHandle = require(Plugin.Src.Components.ScaleControls.ScaleHandle)
local TimeTag = require(Plugin.Src.Components.ScaleControls.TimeTag)

local ScaleControls = Roact.PureComponent:extend("PureComponent")

local PADDING = 24
local HANDLE_WIDTH = 6
local TIME_TAG_HEIGHT = 18
local TIME_TAG_SIZE = UDim2.new(0, 30, 0, TIME_TAG_HEIGHT)

function ScaleControls:init()
	self.leftScaleHandleDragStart = function()
		if self.props.OnScaleHandleDragStart then
			local frame = self.getSelectionData().latestKeyframe
			self.props.OnScaleHandleDragStart(frame)
		end
	end

	self.rightScaleHandleDragStart = function()
		if self.props.OnScaleHandleDragStart then
			local frame = self.getSelectionData().earliestKeyframe
			self.props.OnScaleHandleDragStart(frame)
		end
	end

	self.calculateScaleHandleExtents = function(selectionData)
		local props = self.props

		local tracks = props.Tracks
		local topTrackIndex = props.TopTrackIndex
		local startFrame = props.StartFrame
		local endFrame = props.EndFrame
		local trackWidth = props.DopeSheetWidth

		table.sort(selectionData.trackIndices)
		local topSelectedTrackIndex = selectionData.trackIndices[1]
		local bottomSelectedTrackIndex = selectionData.trackIndices[#selectionData.trackIndices]

		return {
			top = TrackUtils.getTrackYPosition(tracks, topTrackIndex, topSelectedTrackIndex),
			bottom =TrackUtils.getTrackYPosition(tracks, topTrackIndex, bottomSelectedTrackIndex) + Constants.TRACK_HEIGHT,
			left = TrackUtils.getScaledKeyframePosition(selectionData.earliestKeyframe, startFrame, endFrame, trackWidth),
			right = TrackUtils.getScaledKeyframePosition(selectionData.latestKeyframe, startFrame, endFrame, trackWidth),
		}
	end

	self.getSelectionData = function()
		local trackIndices = {}
		local earliestKeyframe = self.props.EndFrame + 1
		local latestKeyframe = 0
		local hasPreview = self.props.PreviewKeyframes ~= nil
		local selectionData = hasPreview and self.props.PreviewKeyframes or self.props.SelectedKeyframes
		for _, instance in pairs(selectionData) do
			for trackName, keyframes in pairs(instance) do
				local trackIndex = TrackUtils.getTrackIndex(self.props.Tracks, trackName)
				table.insert(trackIndices, trackIndex)
				for key, value in pairs(keyframes) do
					if hasPreview then
						earliestKeyframe = math.min(earliestKeyframe, value)
						latestKeyframe = math.max(latestKeyframe, value)
					else
						earliestKeyframe = math.min(earliestKeyframe, key)
						latestKeyframe = math.max(latestKeyframe, key)
					end
				end
			end
		end

		return {
			trackIndices = trackIndices,
			earliestKeyframe = earliestKeyframe,
			latestKeyframe = latestKeyframe,
		}
	end
end

function ScaleControls:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")

		local showSelectionArea = props.ShowSelectionArea
		local showAsSeconds = props.ShowAsSeconds
		local frameRate = props.FrameRate
		local dragging = props.Dragging

		local zIndex = props.ZIndex

		local onScaleHandleDragMoved = props.OnScaleHandleDragMoved
		local onScaleHandleDragEnd = props.OnScaleHandleDragEnd

		local selectionData = self.getSelectionData()
		local extents = self.calculateScaleHandleExtents(selectionData)
		local earliestKeyframe = selectionData.earliestKeyframe
		local latestKeyframe = selectionData.latestKeyframe

		local height = extents.bottom - extents.top
		local width = extents.right - extents.left + PADDING

		local timeTagYOffset = -extents.top - (Constants.SUMMARY_TRACK_HEIGHT - TIME_TAG_HEIGHT) / 2
		timeTagYOffset = Constants.SUMMARY_TRACK_HEIGHT + timeTagYOffset or timeTagYOffset

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.selectionBox,
			BackgroundTransparency = showSelectionArea and 0.8 or 1,
			Position = UDim2.new(0, (Constants.TRACK_PADDING / 2) + extents.left - (PADDING / 2), 0, extents.top),
			Size = UDim2.new(0, width, 0, height),
			ZIndex = zIndex,
		}, {
			LeftHandle = Roact.createElement(ScaleHandle, {
				Position = UDim2.new(0, (-HANDLE_WIDTH / 2), 0, 0),
				Size = UDim2.new(0, HANDLE_WIDTH, 0, height),
				ZIndex = zIndex,
				OnScaleHandleDragStart = self.leftScaleHandleDragStart,
				OnScaleHandleDragMoved = onScaleHandleDragMoved,
				OnScaleHandleDragEnd = onScaleHandleDragEnd,
			}),

			RightHandle = Roact.createElement(ScaleHandle, {
				Position = UDim2.new(1, (-HANDLE_WIDTH / 2), 0, 0),
				Size = UDim2.new(0, HANDLE_WIDTH, 0, height),
				ZIndex = zIndex,
				OnScaleHandleDragStart = self.rightScaleHandleDragStart,
				OnScaleHandleDragMoved = onScaleHandleDragMoved,
				OnScaleHandleDragEnd = onScaleHandleDragEnd,
			}),

			LeftTimeTag = dragging and Roact.createElement(TimeTag, {
				Position = UDim2.new(0, 0, 0, timeTagYOffset),
				Size = TIME_TAG_SIZE,
				AnchorPoint = Vector2.new(1, 1),
				Time = showAsSeconds and StringUtils.formatTime(earliestKeyframe, frameRate) or earliestKeyframe,
				ZIndex = zIndex,
			}),

			RightTimeTag = dragging and Roact.createElement(TimeTag, {
				Position = UDim2.new(1, 0, 0, timeTagYOffset),
				Size = TIME_TAG_SIZE,
				AnchorPoint = Vector2.new(0, 1),
				Time = showAsSeconds and StringUtils.formatTime(latestKeyframe, frameRate) or latestKeyframe,
				ZIndex = zIndex,
			}),
		})
end

ContextServices.mapToProps(ScaleControls, {
	Theme = ContextServices.Theme,
})


return ScaleControls