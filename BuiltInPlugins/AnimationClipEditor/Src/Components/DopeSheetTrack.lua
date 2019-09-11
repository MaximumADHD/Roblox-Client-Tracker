--[[
	Represents a single track on the Dope Sheet meant to display a track's
	keyframes within a specified time range. Automatically clusters keyframes
	together if they are not far enough apart on the timeline.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartFrame = beginning frame of timeline range
		int EndFrame = end frame of timeline range
		bool ShowCluster = Whether to show a keyframe cluster rather than individual keyframes.
		table Track = is expected to be a table formatted as such:
		{
			Name = name of the track,
			Instance = name of the instance that this track belongs to,
			Keyframes = array of keyframe indicies on this track,
		}
		bool ShowBackground = if this track should have an opaque background.
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing keyframes that are currently being transformed for preview
		table PreviewData = table containing data for preview keyframes by index
		bool ShowLegacyKeyframes = Whether to highlight keyframes off of the framerate with an error color.
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnKeyActivated = A callback for when the user clicks on a keyframe.
		function OnKeyRightClick = A callback for when the user right-clicks on a keyframe.
		function OnKeyInputBegan = A callback for when the user starts interacting with a keyframe.
		function OnKeyInputEnded = A callback for when the user stops interacting with a keyframe.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local BaseTrack = require(Plugin.Src.Components.BaseTrack)

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Keyframe = require(Plugin.UILibrary.Components.Timeline.Keyframe)
local KeyframeCluster = require(Plugin.Src.Components.KeyframeCluster)
local Tooltip = require(Plugin.Src.Components.Tooltip)

local DopeSheetTrack = Roact.PureComponent:extend("DopeSheetTrack")

function DopeSheetTrack:renderKeyframe(selected, xOffset, track, frame, override, data)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = selected,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,
		Width = Constants.KEYFRAME_WIDTH,
		BorderSizePixel = selected and 2 or 1,
		Style = Constants.KEYFRAME_STYLE[override] or nil,

		OnActivated = props.OnKeyActivated,
		OnRightClick = function(_, input)
			props.OnKeyRightClick(track.Instance, track.Name, frame, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnKeyInputBegan(track.Instance, track.Name, frame, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnKeyInputEnded(frame, selected, input)
		end,
	}, {
		Tooltip = data and data.EasingStyle and data.EasingStyle ~= Enum.PoseEasingStyle.Linear
			and Roact.createElement(Tooltip, {
			Text = data.EasingStyle.Name .. ", " .. data.EasingDirection.Name,
			ShowDelay = 0,
		}),
	})
end

function DopeSheetTrack:renderKeyframeCluster(clusterStart, clusterEnd, clusterHeight, zIndex)
	return Roact.createElement(KeyframeCluster, {
		Position = UDim2.new(0, clusterStart, 0.5, 0),
		Size = UDim2.new(0, clusterEnd - clusterStart, 0, clusterHeight),
		ZIndex = zIndex,
	})
end

function DopeSheetTrack:renderPreviewKeyframe(xOffset, frame, override)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = true,
		Style = Constants.KEYFRAME_STYLE[override] or nil,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex + 1,
		Width = Constants.KEYFRAME_WIDTH,
	})
end

function DopeSheetTrack:renderKeyframes(keys)
	local props = self.props
	local width = props.Width
	local track = props.Track
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local selectedKeyframes = props.SelectedKeyframes
	local previewKeyframes = props.PreviewKeyframes
	local showCluster = props.ShowCluster
	local showLegacyKeyframes = props.ShowLegacyKeyframes

	local frames = track.Keyframes
	local trackData = track.Data
	local instance = track.Instance
	local name = track.Name

	local startIndex, endIndex = TrackUtils.getKeyframesExtents(frames, startFrame, endFrame)

	if showCluster then
		local clusterXPos = TrackUtils.getScaledKeyframePosition(frames[startIndex], startFrame, endFrame, width)
		local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(frames[endIndex], startFrame, endFrame, width)
		keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
	elseif startIndex ~= nil and endIndex ~= nil then
		for index = startIndex, endIndex do
			local frame = frames[index]

			local override, data
			if showLegacyKeyframes and frame ~= math.floor(frame) then
				override = Constants.KEYFRAME_STYLE.Error
			else
				data = trackData[frame]
				override = data.EasingStyle
			end

			local xPos = TrackUtils.getScaledKeyframePosition(frame, startFrame, endFrame, width)
			local selected = selectedKeyframes[instance] and selectedKeyframes[instance][name]
				and selectedKeyframes[instance][name][frame]
			-- Don't render selected keyframes when rendering preview keyframes
			if not (previewKeyframes and selected) then
				keys[index] = self:renderKeyframe(selected, xPos, track, frame, override, data)
			end
		end
	end
end

function DopeSheetTrack:renderPreviewKeyframes(keys)
	local props = self.props
	local width = props.Width
	local track = props.Track
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local previewKeyframes = props.PreviewKeyframes
	local previewData = props.PreviewData
	local showLegacyKeyframes = props.ShowLegacyKeyframes
	local showCluster = props.ShowCluster

	local instance = track.Instance
	local name = track.Name

	if previewKeyframes and previewKeyframes[instance] then
		local keyframes = previewKeyframes[instance][name]
		if keyframes then
			if showCluster then
				table.sort(keyframes)
				local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, startFrame, endFrame)
				local clusterXPos = TrackUtils.getScaledKeyframePosition(keyframes[startIndex], startFrame, endFrame, width)
				local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(keyframes[endIndex], startFrame, endFrame, width)
				keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
			else
				for index, frame in ipairs(keyframes) do
					if frame >= startFrame and frame <= endFrame then
						local override
						if showLegacyKeyframes and frame ~= math.floor(frame) then
							override = Constants.KEYFRAME_STYLE.Error
						else
							local data = previewData and previewData[instance][name][index]
							override = data.EasingStyle
						end

						local xPos = TrackUtils.getScaledKeyframePosition(frame, startFrame, endFrame, width)
						table.insert(keys, self:renderPreviewKeyframe(xPos, frame, override))
					end
				end
			end
		end
	end
end

function DopeSheetTrack:render()
	local props = self.props

	local keys = {}

	local track = props.Track
	if track.Keyframes then
		self:renderKeyframes(keys)
		self:renderPreviewKeyframes(keys)
	end

	return Roact.createElement(BaseTrack, props, keys)
end

return DopeSheetTrack