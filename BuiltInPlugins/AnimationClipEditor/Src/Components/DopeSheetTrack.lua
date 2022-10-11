--[[
	Represents a single track on the Dope Sheet meant to display a track's
	keyframes within a specified time range. Automatically clusters keyframes
	together if they are not far enough apart on the timeline.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		bool ShowCluster = Whether to show a keyframe cluster rather than individual keyframes.
		table Track = is expected to be a table formatted as such:
		{
			Name = name of the track,
			Instance = name of the instance that this track belongs to,
			Keyframes = array of keyframe indices on this track,
		}
		table Path = optional path to the track (only used for Channel tracks), e.g. {"Head", "Position", "Y"}
		bool ShowBackground = if this track should have an opaque background.
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing keyframes that are currently being transformed for preview
		table PreviewData = table containing data for preview keyframes by index
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

local DopeSheetTrack = Roact.PureComponent:extend("DopeSheetTrack")

function DopeSheetTrack:renderKeyframe(selected, xOffset, track, tck, override, data, filled)
	local props = self.props
	local path = props.Path or { track.Name }

	local tooltipText
	if props.IsChannelAnimation then
		tooltipText = data
				and data.InterpolationMode
				and data.InterpolationMode ~= Enum.KeyInterpolationMode.Linear
				and data.InterpolationMode.Name
			or nil
	else
		tooltipText = data
				and data.EasingStyle
				and data.EasingStyle ~= Enum.PoseEasingStyle.Linear
				and (data.EasingStyle.Name .. ", " .. data.EasingDirection.Name)
			or nil
	end
	return Roact.createElement(Keyframe, {
		Selected = selected,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,
		Width = Constants.KEYFRAME_WIDTH,
		BorderSizePixel = selected and 2 or 1,
		KeyframeStyle = Constants.KEYFRAME_STYLE[override] or nil,
		Filled = filled,

		OnActivated = props.OnKeyActivated,
		OnRightClick = function(_, input)
			props.OnKeyRightClick(track.Instance, path, tck, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnKeyInputBegan(track.Instance, path, tck, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnKeyInputEnded(tck, selected, input)
		end,
	}, {
		Tooltip = tooltipText and Roact.createElement(Tooltip, {
			Text = tooltipText,
			ShowDelay = 0,
		}) or nil,
	})
end

function DopeSheetTrack:renderKeyframeCluster(clusterStart, clusterEnd, clusterHeight, zIndex)
	return Roact.createElement(KeyframeCluster, {
		Position = UDim2.new(0, clusterStart, 0.5, 0),
		Size = UDim2.new(0, clusterEnd - clusterStart, 0, clusterHeight),
		ZIndex = zIndex,
	})
end

function DopeSheetTrack:renderKeyframes(keys)
	local props = self.props
	local width = props.Width
	local track = props.Track
	local startTick = props.StartTick
	local endTick = props.EndTick
	local selectedKeyframes = props.SelectedKeyframes
	local showCluster = props.ShowCluster
	local isChannelAnimation = props.IsChannelAnimation
	local path = props.Path or { track.Name }

	local keyframes = track.Keyframes
	local trackData = track.Data
	local instance = track.Instance

	if showCluster then
		local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, startTick, endTick)
		if startIndex ~= nil and endIndex ~= nil then
			local clusterXPos = TrackUtils.getScaledKeyframePosition(keyframes[startIndex], startTick, endTick, width)
			local clusterXPosEnd = TrackUtils.getScaledKeyframePosition(keyframes[endIndex], startTick, endTick, width)
			keys[endIndex] = self:renderKeyframeCluster(clusterXPos, clusterXPosEnd, Constants.MIN_SPACE_BETWEEN_KEYS)
		end
	else
		local componentsInfo = TrackUtils.getComponentsInfo(track, startTick, endTick)

		-- Find Selected track information
		local selectionTrack = selectedKeyframes[instance]
		for _, part in ipairs(path) do
			if not selectionTrack then
				break
			end
			selectionTrack = selectionTrack.Components and selectionTrack.Components[part] or selectionTrack[part]
		end

		for tck, info in pairs(componentsInfo) do
			local override
			local data = trackData and trackData[tck]
			local complete = not isChannelAnimation or info.Complete

			if componentsInfo[tck].Complete then
				override = isChannelAnimation and componentsInfo[tck].InterpolationMode
					or componentsInfo[tck].EasingStyle
			end

			local xPos = TrackUtils.getScaledKeyframePosition(tck, startTick, endTick, width)
			local selected = selectionTrack and selectionTrack.Selection and selectionTrack.Selection[tck]
			table.insert(keys, self:renderKeyframe(selected, xPos, track, tck, override, data, complete))
		end
	end
end

function DopeSheetTrack:render()
	local props = self.props
	local keys = {}

	self:renderKeyframes(keys)
	return Roact.createElement(BaseTrack, props, keys)
end

return DopeSheetTrack
