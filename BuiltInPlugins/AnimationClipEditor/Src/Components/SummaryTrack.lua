--[[
	Represents the top-level summary track of the dope sheet meant to display
	a summary of all keyframes visible in the dope sheet.

	When the user drags or selects a keyframe here, it is intended to
	modify all the keyframes below it at that tick.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		bool ShowCluster = Whether to show a keyframe cluster rather than individual keyframes.
		table Tracks = a table of all tracks in the dope sheet.
		bool ShowBackground = if this track should have an opaque background.
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing keyframes that are currently being transformed for preview
		table NamedKeyframes = table mapping ticks to summary keyframe names.
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnKeyActivated = A callback for when the user clicks on a keyframe.
		function OnKeyRightClick = A callback for when the user right-clicks on a keyframe.
		function OnKeyInputBegan = A callback for when the user starts interacting with a keyframe.
		function OnKeyInputEnded = A callback for when the user stops interacting with a keyframe.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local BaseTrack = require(Plugin.Src.Components.BaseTrack)

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Keyframe = require(Plugin.Src.Components.Timeline.Keyframe)
local KeyframeCluster = require(Plugin.Src.Components.KeyframeCluster)
local Tooltip = require(Plugin.Src.Components.Tooltip)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local SummaryTrack = Roact.PureComponent:extend("SummaryTrack")

function SummaryTrack:getSummaryKeyframes()
	local props = self.props
	local tracks = props.Tracks
	local startTick = props.StartTick
	local endTick = props.EndTick
	local previewKeyframes = props.PreviewKeyframes
	local selectedKeyframes = props.SelectedKeyframes

	return TrackUtils.getSummaryKeyframes(tracks, startTick, endTick, selectedKeyframes, previewKeyframes)
end

function SummaryTrack:renderKeyframe(selected, xOffset, tick, name)
	local props = self.props
	return Roact.createElement(Keyframe, {
		Selected = selected,
		Style = Constants.KEYFRAME_STYLE.Primary,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,
		Width = Constants.SUMMARY_KEYFRAME_WIDTH,
		BorderSizePixel = selected and 2 or 1,
		Filled = true,

		OnActivated = props.OnKeyActivated,
		OnRightClick = function(_, input)
			props.OnKeyRightClick(nil, nil, tick, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnKeyInputBegan(nil, nil, tick, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnKeyInputEnded(tick, selected, input)
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

function SummaryTrack:renderKeyframes(keys)
	local ticks, selectedTicks = self:getSummaryKeyframes()
	table.sort(ticks)
	if #ticks == 0 then
		return
	end

	local props = self.props
	local width = props.Width
	local startTick = props.StartTick
	local endTick = props.EndTick
	local showCluster = props.ShowCluster
	local namedKeyframes = props.NamedKeyframes

	local startIndex, endIndex = TrackUtils.getKeyframesExtents(ticks, startTick, endTick)

	if showCluster then
		local clusterXPos = TrackUtils.getScaledKeyframePosition(ticks[startIndex], startTick, endTick, width)
		local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(ticks[endIndex], startTick, endTick, width)
		keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
	elseif startIndex ~= nil and endIndex ~= nil then
		for index = startIndex, endIndex do
			local tick = ticks[index]
			local xPos = TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
			local selected = selectedTicks[tick]

			keys[index] = self:renderKeyframe(selected, xPos, tick, namedKeyframes[tick])
		end
	end
end

function SummaryTrack:render()
	local props = self.props
	props.Primary = true

	local keys = {}
	self:renderKeyframes(keys)

	return Roact.createElement(BaseTrack, props, keys)
end

return SummaryTrack