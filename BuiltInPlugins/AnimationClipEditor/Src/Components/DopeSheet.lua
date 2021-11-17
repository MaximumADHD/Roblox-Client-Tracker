--[[
	Represents a collection of tracks in the animation editor.

	Properties:
		UDim2 Position = position of the frame
		UDim2 Size = size of the frame
		Vector2 ParentSize = absolute size of the frame that is the parent of this component
		float Padding = amount of padding from edges that each track should have
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int TopTrackIndex = index of the track that should be displayed at the top of the Dope Sheet
		array Tracks = is expected to be an array where each element is formatted as:
		{
			Name = name of the track,
			Instance = name of the instance that this track belongs to,
			Keyframes = array of keyframe indicies on this track,
		}
		table SelectedKeyframes = table containing information on what keyframes are selected for each track/instance
		table PreviewKeyframes = table containing information on keyframes that are currently being manipulated
		table PreviewData = table containing data for preview keyframes by index
		table NamedKeyframes = table mapping ticks to summary keyframe names.
		int TrackHeight = pixel height of each track
		int SummaryTrackHeight = pixel height of the summary track
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnKeyActivated = A callback for when the user clicks on a keyframe.
		function OnKeyRightClick = A callback for when the user right-clicks on a keyframe.
		function OnKeyInputBegan = A callback for when the user starts interacting with a keyframe.
		function OnKeyInputEnded = A callback for when the user stops interacting with a keyframe.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local SummaryTrack = require(Plugin.Src.Components.SummaryTrack)
local DopeSheetTrack = require(Plugin.Src.Components.DopeSheetTrack)
local BaseTrack = require(Plugin.Src.Components.BaseTrack)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local DopeSheet = Roact.PureComponent:extend("DopeSheet")

function DopeSheet:renderSummaryTrack(components, startIndex, endIndex, showClusters)
	local props = self.props
	local startTick = props.StartTick
	local endTick = props.EndTick
	local tracks = props.Tracks
	local selectedKeyframes = props.SelectedKeyframes
	local namedKeyframes = props.NamedKeyframes
	local summaryTrackHeight = props.SummaryTrackHeight
	local zIndex = props.ZIndex
	local padding = props.Padding or 0

	local onKeyActivated = props.OnKeyActivated
	local onKeyRightClick = props.OnKeyRightClick
	local onKeyInputBegan = props.OnKeyInputBegan
	local onKeyInputEnded = props.OnKeyInputEnded

	local width = props.ParentSize.X - padding

	components.SummaryTrack = Roact.createElement(SummaryTrack, {
		Tracks = tracks,
		SelectedKeyframes = selectedKeyframes,
		NamedKeyframes = namedKeyframes,
		LayoutOrder = 0,
		Size = UDim2.new(1, 0, 0, summaryTrackHeight),
		Width = width,
		StartTick = startTick,
		EndTick = endTick,
		ShowCluster = showClusters,
		ZIndex = zIndex,
		OnKeyActivated = onKeyActivated,
		OnKeyRightClick = onKeyRightClick,
		OnKeyInputBegan = onKeyInputBegan,
		OnKeyInputEnded = onKeyInputEnded,
	})
end

-- Render a track and its children.
function DopeSheet:renderTrackHierarchy(components, track, showClusters, trackCount, path)
	local props = self.props
	local startTick = props.StartTick
	local endTick = props.EndTick
	local selectedKeyframes = props.SelectedKeyframes
	local trackHeight = props.TrackHeight
	local zIndex = props.ZIndex
	local padding = props.Padding or 0

	local onKeyActivated = props.OnKeyActivated
	local onKeyRightClick = props.OnKeyRightClick
	local onKeyInputBegan = props.OnKeyInputBegan
	local onKeyInputEnded = props.OnKeyInputEnded

	local width = props.ParentSize.X - padding

	path = Cryo.List.join(path or {}, {track.Name})

	local name = "Track_" .. table.concat(path, "_")
	trackCount = trackCount or 0

	components[name] = Roact.createElement(DopeSheetTrack, {
		Track = track,
		Path = path,
		SelectedKeyframes = selectedKeyframes,
		LayoutOrder = trackCount,
		Size = UDim2.new(1, 0, 0, trackHeight),
		Width = width,
		StartTick = startTick,
		EndTick = endTick,
		ShowCluster = showClusters,
		ZIndex = zIndex,
		IsChannelAnimation = true,
		OnKeyActivated = onKeyActivated,
		OnKeyRightClick = onKeyRightClick,
		OnKeyInputBegan = onKeyInputBegan,
		OnKeyInputEnded = onKeyInputEnded,
	})
	trackCount = trackCount + 1

	if track.Expanded then
		for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[track.Type]._Order) do
			trackCount = self:renderTrackHierarchy(components, track.Components[componentName], showClusters, trackCount, path)
		end
	end

	return trackCount
end

function DopeSheet:renderTracks(components, startIndex, endIndex, showClusters)
	local props = self.props
	local startTick = props.StartTick
	local endTick = props.EndTick
	local tracks = props.Tracks
	local selectedKeyframes = props.SelectedKeyframes
	local trackHeight = props.TrackHeight
	local zIndex = props.ZIndex
	local padding = props.Padding or 0
	local isChannelAnimation = props.IsChannelAnimation

	local onKeyActivated = props.OnKeyActivated
	local onKeyRightClick = props.OnKeyRightClick
	local onKeyInputBegan = props.OnKeyInputBegan
	local onKeyInputEnded = props.OnKeyInputEnded

	local width = props.ParentSize.X - padding

	local trackCount = 1
	local function incrementTrackCount()
		trackCount = trackCount + 1
	end

	for index, track in ipairs(tracks) do
		-- only create components for tracks that will actually be visible in frame
		if index >= startIndex and index <= endIndex then
			if GetFFlagChannelAnimations() and isChannelAnimation then
				trackCount = self:renderTrackHierarchy(components, track, showClusters, trackCount)
			else
				components["Track_" .. track.Name] = Roact.createElement(DopeSheetTrack, {
					Track = track,
					IsChannelAnimation = false,
					SelectedKeyframes = selectedKeyframes,
					LayoutOrder = trackCount,
					Size = UDim2.new(1, 0, 0, trackHeight),
					Width = width,
					StartTick = startTick,
					EndTick = endTick,
					ShowCluster = showClusters,
					ZIndex = zIndex,
					OnKeyActivated = onKeyActivated,
					OnKeyRightClick = onKeyRightClick,
					OnKeyInputBegan = onKeyInputBegan,
					OnKeyInputEnded = onKeyInputEnded,
				})

				incrementTrackCount()

				if track.Expanded then
					-- Expanded size includes the keyframe track itself, so subtract one to get
					-- the number of empty tracks we need to make to fill the track list.
					local fillSize = TrackUtils.getExpandedSize(track) - 1

					for fill = 1, fillSize do
						components["Fill_" .. track.Name .. "_" .. fill] = Roact.createElement(BaseTrack, {
							LayoutOrder = trackCount,
							Size = UDim2.new(1, 0, 0, trackHeight),
							Width = width,
							ZIndex = zIndex,
						})
						incrementTrackCount()
					end
				end
			end
		end
	end
end

function DopeSheet:countKeyframes(endIndex)
	local props = self.props
	local startTick = props.StartTick
	local endTick = props.EndTick
	local tracks = props.Tracks
	local topTrackIndex = props.TopTrackIndex

	local keyframeCount = 0
	local current = topTrackIndex
	for index, track in ipairs(tracks) do
		local keyframes = track.Keyframes
		if keyframes then
			if index >= topTrackIndex and index <= endIndex then
				if index >= current then
					local count = TrackUtils.countVisibleKeyframes(keyframes, startTick, endTick)
					keyframeCount = keyframeCount + count
					if tracks[index].Expanded then
						current = current + TrackUtils.getExpandedSize(track)
					else
						current = current + 1
					end
				end
			end
		end
	end
	return keyframeCount
end

function DopeSheet:render()
	local props = self.props
	local topTrackIndex = props.TopTrackIndex
	local trackHeight = props.TrackHeight
	local summaryTrackHeight = props.SummaryTrackHeight
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size

	local height = props.ParentSize.Y
	local endIndex = (topTrackIndex - 1) + math.ceil((height - summaryTrackHeight) / trackHeight)

	local showKeyframeClusters = self:countKeyframes(endIndex) > Constants.MAX_VISIBLE_KEYFRAMES

	local components = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		})
	}

	self:renderSummaryTrack(components, topTrackIndex, endIndex, showKeyframeClusters)
	self:renderTracks(components, topTrackIndex, endIndex, showKeyframeClusters)

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, components)
end

return DopeSheet
