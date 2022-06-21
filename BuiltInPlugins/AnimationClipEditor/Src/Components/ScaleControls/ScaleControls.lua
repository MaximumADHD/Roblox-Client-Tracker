--[[
	Component that contains two handles for keyframe scaling, as well
	as time labels for when the handles are being dragged. Only visible
	if there are keyframes selected by the user.

	Properties:
		table SelectedKeyframes = data about what keyframes are selected
		table PreviewKeyframes = temporary table of keyframes for when keys are being moved/scaled
		int StartTick = starting timeline range in the editor
		int EndTick = ending timeline range in the editor
		int TrackPadding = amount of total padding
		int TopTrackIndex = index of the track displayed at the top of the track list
		array Tracks = list of tracks currently present on the DopeSheet
		bool Dragging = whether or not the user is dragging scale handles
		bool ShowAsSeconds = whether or not to display time as seconds or frames
		int DopeSheetWidth = width of the dope sheet - padding included
		int ZIndex = display order of this frame
		bool ShowSelectionArea = show a blue selection box covering the area of selected keys
		bool FullHeight = Use the full height, rather than selected tracks. Used by the Curve Editor

		function OnScaleHandleDragStart(tick) = callback for when user begins to drag a scale handle
		function OnScaleHandleDragMoved(input) = callback for when user is actively dragging a scale handle
		function OnScaleHandleDragEnded() = callback for when user has finished dragging a scale handle
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local Constants = require(Plugin.Src.Util.Constants)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local ScaleHandle = require(Plugin.Src.Components.ScaleControls.ScaleHandle)
local TimeTag = require(Plugin.Src.Components.ScaleControls.TimeTag)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local ScaleControls = Roact.PureComponent:extend("PureComponent")

local PADDING = 24
local HANDLE_WIDTH = 6
local TIME_TAG_HEIGHT = 18
local TIME_TAG_SIZE = UDim2.new(0, 30, 0, TIME_TAG_HEIGHT)

function ScaleControls:init()
	self.leftScaleHandleDragStart = function()
		if self.props.OnScaleHandleDragStart then
			local tick = self.getSelectionData().latestKeyframe
			self.props.OnScaleHandleDragStart(tick)
		end
	end

	self.rightScaleHandleDragStart = function()
		if self.props.OnScaleHandleDragStart then
			local tick = self.getSelectionData().earliestKeyframe
			self.props.OnScaleHandleDragStart(tick)
		end
	end

	self.getSelectionChannelExtents = function(selectionData)
		local props = self.props
		local tracks = props.Tracks
		local topTrackIndex = props.TopTrackIndex
		local line = 1
		local topValue = selectionData.topSelectedChannelIndex
		local bottomValue = selectionData.bottomSelectedChannelIndex
		local topLine = nil
		local bottomLine = nil

		local trackIndex = topTrackIndex
		while trackIndex <= #tracks do
			local track = tracks[trackIndex]

			local function traverse(track, path)
				local pathValue = PathUtils.getPathValue(path)
				local componentIndex = trackIndex + pathValue
				if componentIndex >= topValue and topLine == nil then
					topLine = line
				end
				if componentIndex <= bottomValue then
					bottomLine = line
				end
				if track.Expanded then
					if self.props.IsChannelAnimation then
						line = line + 1
						for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[track.Type]._Order) do
							local component = track.Components and track.Components[componentName]
							if component then
								traverse(component, Cryo.List.join(path, {componentName}))
							end
						end
					else
						line = line + TrackUtils.getExpandedSize(track)
					end
				else
					line = line + 1
				end
			end

			traverse(track, {})
			trackIndex = trackIndex + 1
		end
		return topLine, bottomLine
	end

	self.calculateScaleHandleExtents = function(selectionData)
		local props = self.props

		local tracks = props.Tracks
		local topTrackIndex = props.TopTrackIndex
		local startTick = props.StartTick
		local endTick = props.EndTick
		local trackWidth = props.DopeSheetWidth

		if GetFFlagChannelAnimations() then
			if GetFFlagCurveEditor() and props.UseFullHeight then
				return {
					left = TrackUtils.getScaledKeyframePosition(selectionData.earliestKeyframe, startTick, endTick, trackWidth),
					right = TrackUtils.getScaledKeyframePosition(selectionData.latestKeyframe, startTick, endTick, trackWidth),
				}
			else
				local topLine, bottomLine = self.getSelectionChannelExtents(selectionData)

				if topLine and bottomLine then
					return {
						top = Constants.SUMMARY_TRACK_HEIGHT + (topLine - 1) * Constants.TRACK_HEIGHT,
						bottom = Constants.SUMMARY_TRACK_HEIGHT + bottomLine * Constants.TRACK_HEIGHT,
						left = TrackUtils.getScaledKeyframePosition(selectionData.earliestKeyframe, startTick, endTick, trackWidth),
						right = TrackUtils.getScaledKeyframePosition(selectionData.latestKeyframe, startTick, endTick, trackWidth),
					}
				else
					return nil
				end
			end
		else
			table.sort(selectionData.trackIndices)
			local topSelectedTrackIndex = selectionData.trackIndices[1]
			local bottomSelectedTrackIndex = selectionData.trackIndices[#selectionData.trackIndices]

			return {
				top = TrackUtils.getTrackYPosition(tracks, topTrackIndex, topSelectedTrackIndex),
				bottom =TrackUtils.getTrackYPosition(tracks, topTrackIndex, bottomSelectedTrackIndex) + Constants.TRACK_HEIGHT,
				left = TrackUtils.getScaledKeyframePosition(selectionData.earliestKeyframe, startTick, endTick, trackWidth),
				right = TrackUtils.getScaledKeyframePosition(selectionData.latestKeyframe, startTick, endTick, trackWidth),
			}
		end
	end

	self.getSelectionData = function()
		local trackIndices = {}
		local earliestKeyframe = self.props.EndTick + 1
		local latestKeyframe = 0
		local selectionData = self.props.SelectedKeyframes
		local topSelectedChannelIndex = nil
		local bottomSelectedChannelIndex = nil

		if GetFFlagChannelAnimations() then
			local function traverse(track, trackIndex, path)
				if track.Selection then
					if not GetFFlagCurveEditor() or not self.props.UseFullHeight then
						-- This component has a selection. Calculate the path value, add it
						-- to the trackIndex, and check if the result extends the current
						-- trackRange

						local pathValue = PathUtils.getPathValue(path)
						local componentIndex = trackIndex + pathValue
						if topSelectedChannelIndex == nil then
							topSelectedChannelIndex = componentIndex
							bottomSelectedChannelIndex = componentIndex
						else
							topSelectedChannelIndex = math.min(topSelectedChannelIndex, componentIndex)
							bottomSelectedChannelIndex = math.max(bottomSelectedChannelIndex, componentIndex)
						end
					end

					-- Calculate the extents of the selection
					for tick, _ in pairs(track.Selection or {}) do
						earliestKeyframe = math.min(earliestKeyframe, tick)
						latestKeyframe = math.max(latestKeyframe, tick)
					end
				end
				for componentName, component in pairs(track.Components or {}) do
					local componentPath = Cryo.List.join(path, {componentName})
					traverse(component, trackIndex, componentPath)
				end
			end

			for _, instance in pairs(selectionData) do
				for trackName, track in pairs(instance) do
					if not GetFFlagCurveEditor() or not self.props.UseFullHeight then
						local trackIndex = TrackUtils.getTrackIndex(self.props.Tracks, trackName)
						if trackIndex then
							traverse(track, trackIndex, {})
						end
					else
						traverse(track, nil, {})
					end
				end
			end
		else
			for _, instance in pairs(selectionData) do
				for trackName, keyframes in pairs(instance) do
					local trackIndex = TrackUtils.getTrackIndex(self.props.Tracks, trackName)
					table.insert(trackIndices, trackIndex)
					for key, _ in pairs(keyframes) do
						earliestKeyframe = math.min(earliestKeyframe, key)
						latestKeyframe = math.max(latestKeyframe, key)
					end
				end
			end
		end

		return {
			trackIndices = not GetFFlagChannelAnimations() and trackIndices or nil,
			earliestKeyframe = earliestKeyframe,
			latestKeyframe = latestKeyframe,
			topSelectedChannelIndex = GetFFlagChannelAnimations() and topSelectedChannelIndex or nil,
			bottomSelectedChannelIndex = GetFFlagChannelAnimations() and bottomSelectedChannelIndex or nil,
		}
	end
end

function ScaleControls:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	local showSelectionArea = props.ShowSelectionArea
	local showAsSeconds = props.ShowAsSeconds
	local dragging = props.Dragging
	local frameRate = props.FrameRate
	local useFullHeight = props.UseFullHeight

	local zIndex = props.ZIndex

	local onScaleHandleDragMoved = props.OnScaleHandleDragMoved
	local onScaleHandleDragEnd = props.OnScaleHandleDragEnd

	local selectionData = self.getSelectionData()
	local extents = self.calculateScaleHandleExtents(selectionData)
	if GetFFlagChannelAnimations() and not extents then
		return
	end

	local earliestKeyframe = selectionData.earliestKeyframe
	local latestKeyframe = selectionData.latestKeyframe

	local height
	local width

	if GetFFlagCurveEditor() then
		width = UDim.new(0, extents.right - extents.left + PADDING)
		height = UDim.new(if useFullHeight then 1 else 0, if useFullHeight then 0 else extents.bottom - extents.top)
	else
		height = extents.bottom - extents.top
		width = extents.right - extents.left + PADDING
	end

	local timeTagYOffset
	if GetFFlagCurveEditor() then
		if useFullHeight then
			timeTagYOffset = Constants.SUMMARY_TRACK_HEIGHT + (Constants.SUMMARY_TRACK_HEIGHT - TIME_TAG_HEIGHT) / 2
		else
			timeTagYOffset = Constants.SUMMARY_TRACK_HEIGHT - extents.top + (Constants.SUMMARY_TRACK_HEIGHT - TIME_TAG_HEIGHT) / 2
		end
	else
		timeTagYOffset = -extents.top - (Constants.SUMMARY_TRACK_HEIGHT - TIME_TAG_HEIGHT) / 2
		timeTagYOffset = Constants.SUMMARY_TRACK_HEIGHT + timeTagYOffset or timeTagYOffset
	end

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.selectionBox,
		BackgroundTransparency = showSelectionArea and 0.8 or 1,
		Position = UDim2.new(0, (props.TrackPadding / 2) + extents.left - (PADDING / 2), 0, if GetFFlagCurveEditor() and useFullHeight then 0 else extents.top),
		Size = if GetFFlagCurveEditor() then UDim2.new(width, height) else UDim2.new(0, width, 0, height),
		ZIndex = zIndex,
	}, {
		LeftHandle = Roact.createElement(ScaleHandle, {
			Position = UDim2.new(0, (-HANDLE_WIDTH / 2), 0, 0),
			Size = if GetFFlagCurveEditor() then UDim2.new(UDim.new(0, HANDLE_WIDTH), height) else UDim2.new(0, HANDLE_WIDTH, 0, height),
			ZIndex = zIndex,
			OnScaleHandleDragStart = self.leftScaleHandleDragStart,
			OnScaleHandleDragMoved = onScaleHandleDragMoved,
			OnScaleHandleDragEnd = onScaleHandleDragEnd,
		}),

		RightHandle = Roact.createElement(ScaleHandle, {
			Position = UDim2.new(1, (-HANDLE_WIDTH / 2), 0, 0),
			Size = if GetFFlagCurveEditor() then UDim2.new(UDim.new(0, HANDLE_WIDTH), height) else UDim2.new(0, HANDLE_WIDTH, 0, height),
			ZIndex = zIndex,
			OnScaleHandleDragStart = self.rightScaleHandleDragStart,
			OnScaleHandleDragMoved = onScaleHandleDragMoved,
			OnScaleHandleDragEnd = onScaleHandleDragEnd,
		}),

		LeftTimeTag = dragging and Roact.createElement(TimeTag, {
			Position = UDim2.new(0, 0, 0, timeTagYOffset),
			Size = TIME_TAG_SIZE,
			AnchorPoint = Vector2.new(1, 1),
			Time = StringUtils.formatTime(earliestKeyframe, frameRate, showAsSeconds),
			ZIndex = zIndex,
		}),

		RightTimeTag = dragging and Roact.createElement(TimeTag, {
			Position = UDim2.new(1, 0, 0, timeTagYOffset),
			Size = TIME_TAG_SIZE,
			AnchorPoint = Vector2.new(0, 1),
			Time = StringUtils.formatTime(latestKeyframe, frameRate, showAsSeconds),
			ZIndex = zIndex,
		}),
	})
end

ScaleControls = withContext({
	Stylizer = ContextServices.Stylizer,
})(ScaleControls)

return ScaleControls