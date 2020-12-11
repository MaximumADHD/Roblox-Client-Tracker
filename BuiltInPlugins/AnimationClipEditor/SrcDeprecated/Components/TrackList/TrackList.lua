--[[
	Represents a list of Tracks that appears on the left side of the editor.
	Supports expandable tracks and indentation.

	Props:
		UDim2 Size = The size of the TrackList.
		int TopTrackIndex = The top track which is visible in the TrackList.
		list Tracks = An array of tracks to display in this TrackList.
		array SelectedTracks = The names of the currently selected tracks, if any.
		list UnusedTracks = An array of track names that are not used. Used to populate the
			dropdown if the user chooses to add a new track.
		table AnimationData = The currently loaded animation data table.
		string RootName = The name of the root track. Usually the animation name.
		int LayoutOrder = The display order of this frame in a Layout.

		function OnScroll(delta) = A callback for when the user scrolls inside the TrackList.
		function ToggleTrackExpanded(track, newExpandedState) = A callback for when the
			user clicks the arrow next to an ExpandableTrack.
		function OpenContextMenu(track) = A callback for when the user clicks the button
			next to a track to open a context menu for that track.
		function OnTrackAdded(instanceName, trackName) = A callback for when the user
			selects a track to add.
		function OnTrackSelected(trackName) = A callback for when the user selects a track.
		function OnValueChanged(instanceName, trackName, frame, value) = A callback for
			when the user changes a value by expanding a track and modifying properties.
		function OnChangeBegan() = A function that is called when the user starts interacting
			with a track before changing properties. Used to dispatch AddWaypoint for History.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local TrackUtils = require(Plugin.SrcDeprecated.Util.TrackUtils)
local StringUtils = require(Plugin.SrcDeprecated.Util.StringUtils)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local ExpandableTrack = require(Plugin.SrcDeprecated.Components.TrackList.ExpandableTrack)
local SummaryTrack = require(Plugin.SrcDeprecated.Components.TrackList.SummaryTrack)
local TrackListEntry = require(Plugin.SrcDeprecated.Components.TrackList.TrackListEntry)
local NumberTrack = require(Plugin.SrcDeprecated.Components.TrackList.NumberTrack)
local WideScrollingFrame = require(Plugin.SrcDeprecated.Components.TrackList.WideScrollingFrame)

local TrackList = Roact.PureComponent:extend("TrackList")

function TrackList:init()
	self.maxTrackWidth = 0

	self.trackCount = 1
	self.resetTrackCount = function()
		self.trackCount = 1
	end
	self.incrementTrackCount = function()
		self.trackCount = self.trackCount + 1
	end

	self.state = {
		AbsoluteSize = Vector2.new(),
	}

	self.getTextWidth = function(text, theme)
		local font = theme.font
		local textSize = theme.trackTheme.textSize
		return StringUtils.getTextWidth(text, textSize, font)
	end

	self.sizeChanged = function(rbx)
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
		})
	end

	self.inputChanged = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseWheel and self.props.OnScroll then
			self.props.OnScroll(input.Position.Z)
		end
	end

	self.onTrackExpandToggled = function(track, newExpandedState)
		if self.props.ToggleTrackExpanded then
			self.props.ToggleTrackExpanded({track.Name}, newExpandedState)
		end
	end

	self.onContextButtonClick = function(track)
		if self.props.OpenContextMenu then
			self.props.OpenContextMenu(track)
		end
	end

	self.onTrackAdded = function(instance, track)
		if self.props.OnTrackAdded then
			self.props.OnTrackAdded(instance, track)
		end
	end

	self.onTrackSelected = function(track)
		if self.props.OnTrackSelected then
			self.props.OnTrackSelected(track.Name)
		end
	end

	self.onValueChanged = function(instanceName, trackName, frame, value)
		if self.props.OnValueChanged then
			self.props.OnValueChanged(instanceName, trackName, frame, value)
		end
	end

	self.getTrackWidth = function(indent, innerWidth)
		return Constants.INDENT_PADDING * indent + innerWidth + Constants.TRACKLIST_RIGHT_PADDING
	end
end

function TrackList:renderSummaryTrack(name, children, theme)
	local textWidth = self.getTextWidth(name, theme)
	local trackWidth = self.getTrackWidth(1, textWidth + Constants.TRACKLIST_BUTTON_SIZE)
	self.maxTrackWidth = math.max(self.maxTrackWidth, trackWidth)

	children["SummaryTrack"] = Roact.createElement(SummaryTrack, {
		LayoutOrder = self.trackCount,
		Name = name,
		UnusedTracks = self.props.UnusedTracks,
		OnTrackAdded = self.onTrackAdded,
	})

	self.incrementTrackCount()
end

function TrackList:renderExpandedCFrameTrack(track, children, theme)
	local props = self.props
	local indent = track.Depth
	local instance = track.Instance
	local name = track.Name
	local properties = Constants.PROPERTY_KEYS
	local animationData = props.AnimationData
	local playhead = props.Playhead

	local nameWidth = math.max(self.getTextWidth(properties.Position, theme),
		self.getTextWidth(properties.Rotation, theme))
	local trackWidth = self.getTrackWidth(indent, nameWidth)

	local currentValue = TrackUtils.getCurrentValue(track, playhead, animationData)
	local items = TrackUtils.getItemsForProperty(track, currentValue)
	trackWidth = trackWidth + #items.Position
		* (Constants.NUMBERBOX_WIDTH + Constants.NUMBERTRACK_PADDING * 2)

	self.maxTrackWidth = math.max(self.maxTrackWidth, trackWidth)

	local function makeNumberTrack(name, targetProperty)
		children[name .. "_" .. targetProperty] = Roact.createElement(NumberTrack, {
			LayoutOrder = self.trackCount,
			Name = targetProperty,
			NameWidth = nameWidth,
			Items = items[targetProperty],
			Height = Constants.TRACK_HEIGHT,
			Indent = indent,
			OnItemChanged = function(key, value)
				for _, item in ipairs(items[targetProperty]) do
					if item.Key == key then
						item.Value = value
					end
				end
				local newValue = TrackUtils.getPropertyForItems(track, items)
				self.onValueChanged(instance, name, playhead, newValue)
			end,
			OnChangeBegan = props.OnChangeBegan,
		})
		self.incrementTrackCount()
	end

	makeNumberTrack(name, properties.Position)
	makeNumberTrack(name, properties.Rotation)
end

function TrackList:renderExpandedGenericTrack(track, children, theme)
	local indent = track.Depth
	local name = track.Name
	-- Placeholder for generic track type
	children["Expanded_" .. name] = Roact.createElement(TrackListEntry, {
		LayoutOrder = self.trackCount,
		Height = Constants.TRACK_HEIGHT,
		Indent = indent,
	})
	self.incrementTrackCount()
end

function TrackList:renderExpandedTracks(track, children, theme)
	local trackType = track.Type

	if trackType == Constants.TRACK_TYPES.CFrame then
		self:renderExpandedCFrameTrack(track, children, theme)
	else
		self:renderExpandedGenericTrack(track, children, theme)
	end
end

function TrackList:isSelected(name)
	if self.props.SelectedTracks then
		for _, track in ipairs(self.props.SelectedTracks) do
			if name == track then
				return true
			end
		end
	end
	return false
end

function TrackList:renderTrack(track, children, theme)
	local indent = track.Depth
	local expanded = track.Expanded
	local name = track.Name

	local selected = self:isSelected(name)

	local textWidth = self.getTextWidth(name, theme)
	local trackWidth = self.getTrackWidth(indent, Constants.ARROW_SIZE * 2
		+ textWidth + Constants.TRACKLIST_BUTTON_SIZE)
	self.maxTrackWidth = math.max(self.maxTrackWidth, trackWidth)

	children["Track_" .. name] = Roact.createElement(ExpandableTrack, {
		LayoutOrder = self.trackCount,
		Indent = indent,
		Name = name,
		Expanded = expanded,
		Selected = selected,

		OnTrackSelected = function()
			self.onTrackSelected(track)
		end,

		OnExpandToggled = function(newExpandedState)
			self.onTrackExpandToggled(track, newExpandedState)
		end,

		OnContextButtonClick = function()
			self.onContextButtonClick(track)
		end,
	})

	self.incrementTrackCount()

	if expanded then
		self:renderExpandedTracks(track, children, theme)
	end
end

function TrackList:renderTracks(startIndex, endIndex, theme)
	local props = self.props
	local tracks = props.Tracks
	local rootName = props.RootName

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	self:renderSummaryTrack(rootName, children, theme)
	for index, track in ipairs(tracks) do
		if index >= startIndex and self.trackCount <= endIndex then
			self:renderTrack(track, children, theme)
		end
	end

	return children
end

function TrackList:render()
	return withTheme(function(theme)
		self.resetTrackCount()
		self.maxTrackWidth = 0

		local props = self.props
		local state = self.state

		local size = props.Size
		local topTrackIndex = props.TopTrackIndex
		local height = state.AbsoluteSize.Y
		local width = state.AbsoluteSize.X
		local layoutOrder = props.LayoutOrder

		local endIndex
		if topTrackIndex == 0 then
			endIndex = math.ceil((height - Constants.SUMMARY_TRACK_HEIGHT) / Constants.TRACK_HEIGHT) + 1
		else
			endIndex = topTrackIndex + math.ceil(height / Constants.TRACK_HEIGHT) - 1
		end

		local children = self:renderTracks(topTrackIndex, endIndex, theme)

		return Roact.createElement(WideScrollingFrame, {
			Size = size,
			Width = width,
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,
			CanvasSize = UDim2.new(0, self.maxTrackWidth + Constants.TRACKLIST_RIGHT_PADDING, 0, 0),
			ZIndex = 2,

			OnInputChanged = self.inputChanged,
			OnSizeChanged = self.sizeChanged,
		}, children)
	end)
end

return TrackList