--[[
	Represents the top-level summary track of the dope sheet meant to display
	a summary of all keyframes visible in the dope sheet.

	When the user drags or selects a keyframe here, it is intended to
	modify all the keyframes below it at that frame.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartFrame = beginning frame of timeline range
		int EndFrame = end frame of timeline range
		bool ShowCluster = Whether to show a keyframe cluster rather than individual keyframes.
		table Tracks = a table of all tracks in the dope sheet.
		bool ShowBackground = if this track should have an opaque background.
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing keyframes that are currently being transformed for preview
		table NamedKeyframes = table mapping frames to summary keyframe names.
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
local UILibrary = require(Plugin.UILibrary)

local FFlagRemoveUILibraryTimeline = game:GetFastFlag("RemoveUILibraryTimeline")

local BaseTrack = require(Plugin.Src.Components.BaseTrack)

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Keyframe = FFlagRemoveUILibraryTimeline
	and require(Plugin.Src.Components.Timeline.Keyframe)
	or UILibrary.Component.Keyframe
local KeyframeCluster = require(Plugin.Src.Components.KeyframeCluster)
local Tooltip = require(Plugin.Src.Components.Tooltip)

local SummaryTrack = Roact.PureComponent:extend("SummaryTrack")

function SummaryTrack:getSummaryKeyframes()
	local props = self.props
	local tracks = props.Tracks
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local previewKeyframes = props.PreviewKeyframes
	local selectedKeyframes = props.SelectedKeyframes

	return TrackUtils.getSummaryKeyframes(tracks, startFrame, endFrame, selectedKeyframes, previewKeyframes)
end

function SummaryTrack:renderKeyframe(selected, xOffset, frame, name, override)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = selected,
		Style = Constants.KEYFRAME_STYLE[override] or Constants.KEYFRAME_STYLE.Primary,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,
		Width = Constants.SUMMARY_KEYFRAME_WIDTH,
		BorderSizePixel = selected and 2 or 1,

		OnActivated = props.OnKeyActivated,
		OnRightClick = function(_, input)
			props.OnKeyRightClick(nil, nil, frame, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnKeyInputBegan(nil, nil, frame, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnKeyInputEnded(frame, selected, input)
		end,
	}, {
		Tooltip = name and Roact.createElement(Tooltip, {
			Text = name,
			ShowDelay = 0,
		}),
	})
end

function SummaryTrack:renderKeyframeCluster(clusterStart, clusterEnd, clusterHeight, zIndex)
	return Roact.createElement(KeyframeCluster, {
		Primary = true,
		Position = UDim2.new(0, clusterStart, 0.5, 0),
		Size = UDim2.new(0, clusterEnd - clusterStart, 0, clusterHeight),
		ZIndex = zIndex,
	})
end

function SummaryTrack:renderPreviewKeyframe(xOffset, frame, override)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = true,
		Style = Constants.KEYFRAME_STYLE[override] or Constants.KEYFRAME_STYLE.Primary,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex + 1,
		Width = Constants.SUMMARY_KEYFRAME_WIDTH,
	})
end

function SummaryTrack:renderKeyframes(keys)
	local frames, selectedFrames = self:getSummaryKeyframes()
	table.sort(frames)
	if #frames == 0 then
		return
	end

	local props = self.props
	local width = props.Width
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local showCluster = props.ShowCluster
	local namedKeyframes = props.NamedKeyframes
	local showLegacyKeyframes = props.ShowLegacyKeyframes

	local startIndex, endIndex = TrackUtils.getKeyframesExtents(frames, startFrame, endFrame)

	if showCluster then
		local clusterXPos = TrackUtils.getScaledKeyframePosition(frames[startIndex], startFrame, endFrame, width)
		local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(frames[endIndex], startFrame, endFrame, width)
		keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
	elseif startIndex ~= nil and endIndex ~= nil then
		for index = startIndex, endIndex do
			local frame = frames[index]
			local xPos = TrackUtils.getScaledKeyframePosition(frame, startFrame, endFrame, width)
			local selected = selectedFrames[frame]

			local override = (showLegacyKeyframes and frame ~= math.floor(frame))
				and Constants.KEYFRAME_STYLE.PrimaryError or nil
			keys[index] = self:renderKeyframe(selected, xPos, frame, namedKeyframes[frame], override)
		end
	end
end

function SummaryTrack:renderPreviewKeyframes(keys)
	local props = self.props
	local width = props.Width
	local tracks = props.Tracks
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local showLegacyKeyframes = props.ShowLegacyKeyframes
	local showCluster = props.ShowCluster

	local previewKeyframes = props.PreviewKeyframes

	local addedFrames = {}
	for _, track in pairs(tracks) do
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
					for _, frame in ipairs(keyframes) do
						if frame >= startFrame and frame <= endFrame and not addedFrames[frame] then
							local xPos = TrackUtils.getScaledKeyframePosition(frame, startFrame, endFrame, width)

							local override = (showLegacyKeyframes and frame ~= math.floor(frame))
								and Constants.KEYFRAME_STYLE.PrimaryError or nil
							table.insert(keys, self:renderPreviewKeyframe(xPos, frame, override))
							addedFrames[frame] = true
						end
					end
				end
			end
		end
	end
end

function SummaryTrack:render()
	local props = self.props
	props.Primary = true

	local keys = {}
	self:renderKeyframes(keys)
	self:renderPreviewKeyframes(keys)

	return Roact.createElement(BaseTrack, props, keys)
end

return SummaryTrack