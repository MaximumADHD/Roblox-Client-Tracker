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
		function OnTrackSelected(path) = A callback for when the user selects a track or a component.
		function OnValueChanged(instanceName, path, trackType, tick, value) = A callback for when
			the user changes a value by modifying properties.
		function OnChangeBegan() = A function that is called when the user starts interacting
			with a track before changing properties. Used to dispatch AddWaypoint for History.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local StringUtils = require(Plugin.Src.Util.StringUtils)
local SignalsContext = require(Plugin.Src.Context.Signals)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local SummaryTrack = require(Plugin.Src.Components.TrackList.SummaryTrack)
local TrackListEntry = require(Plugin.Src.Components.TrackList.TrackListEntry)
local Track = require(Plugin.Src.Components.TrackList.Track)
local WideScrollingFrame = require(Plugin.Src.Components.TrackList.WideScrollingFrame)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

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

	self.onTrackExpandToggled = function(trackPath, newExpandedState)
		if self.props.ToggleTrackExpanded then
			self.props.ToggleTrackExpanded({trackPath}, newExpandedState)
		end
	end

	self.onTrackExpandToggled_deprecated = function(track, newExpandedState)
		if self.props.ToggleTrackExpanded then
			self.props.ToggleTrackExpanded({track.Name}, newExpandedState)
		end
	end

	self.onContextButtonClick = function(instanceName, path, trackType, rotationType)
		if self.props.OpenContextMenu then
			self.props.OpenContextMenu(instanceName, path, trackType, rotationType)
		end
	end

	self.onTrackAdded = function(instance, track, trackType)
		if self.props.OnTrackAdded then
			self.props.OnTrackAdded(instance, track, trackType)
		end
	end

	self.onTrackSelected = function(path)
		if self.props.OnTrackSelected then
			self.props.OnTrackSelected(path)
		end
	end

	self.onValueChanged = function(instanceName, path, trackType, tck, value)
		if self.props.OnValueChanged then
			self.props.OnValueChanged(instanceName, path, trackType, tck, value)
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
		UnusedFacs = self.props.UnusedFacs,
		OnFacsAdded = self.onFacsAdded,
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
	local isPlaying = self.props.PlayState ~= Constants.PLAY_STATE.Pause

	local nameWidth = math.max(self.getTextWidth(properties.Position, theme),
		self.getTextWidth(properties.Rotation, theme))
	local trackWidth = self.getTrackWidth(indent, nameWidth)

	local currentValue = TrackUtils.getCurrentValue(track, playhead, animationData, props.DefaultEulerAnglesOrder)
	local items = TrackUtils.getItemsForProperty(track, currentValue, nil, props.DefaultEulerAnglesOrder)
	trackWidth = trackWidth + #items.Position
		* (Constants.NUMBERBOX_WIDTH + Constants.NUMBERTRACK_PADDING * 2)

	self.maxTrackWidth = math.max(self.maxTrackWidth, trackWidth)

	local dragMultiplier = if track.Type == Constants.TRACK_TYPES.Facs then Constants.NUMBERBOX_FACS_DRAG_MULTIPLIER
		else Constants.NUMBERBOX_DRAG_MULTIPLIER

	local function makeNumberTrack(name, targetProperty)
		children[name .. "_" .. targetProperty] = Roact.createElement(Track, {
			LayoutOrder = self.trackCount,
			Name = targetProperty,
			NameWidth = nameWidth,
			Items = items[targetProperty],
			Height = Constants.TRACK_HEIGHT,
			Indent = indent,
			ReadOnly = isPlaying,
			DragMultiplier = dragMultiplier,
			OnItemChanged = function(key, value)
				if track.Type == Constants.TRACK_TYPES.Facs then
					value = math.clamp(math.floor(.5 + value * 100) / 100, 0, 1)
				end
				for _, item in ipairs(items[targetProperty]) do
					if item.Key == key then
						item.Value = value
					end
				end
				local newValue = TrackUtils.getPropertyForItems(track, items, props.DefaultEulerAnglesOrder)
				self.onValueChanged(instance, {name}, track.Type, playhead, newValue)
				return value
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

function TrackList:renderTrack(track, children, theme, parentPath, parentType)
	local props = self.props
	local selectedTracks = props.SelectedTracks
	local name = track.Name
	local instance = track.Instance
	local indent = track.Depth
	local trackType = track.Type
	local rotationType = TrackUtils.getRotationType(track)
	local expanded = track.Expanded

	local playhead = props.Playhead
	local animationData = props.AnimationData
	local isPlaying = props.PlayState ~= Constants.PLAY_STATE.Pause
	local isReadOnly = props.ReadOnly
	local isChannelAnimation = animationData and animationData.Metadata and animationData.Metadata.IsChannelAnimation

	local isExpandable
	if isChannelAnimation then
		isExpandable = track.Components and not isEmpty(track.Components)
	else
		isExpandable = trackType == Constants.TRACK_TYPES.CFrame
	end

	local nameWidth = self.getTextWidth(name, theme)
	local trackWidth = self.getTrackWidth(0, nameWidth) + (Constants.NUMBERBOX_WIDTH + Constants.NUMBERTRACK_PADDING * 2)

	local path = Cryo.List.join(parentPath or {}, {name})
	local pathName = table.concat(path, "_")

	local items
	-- CFrame tracks never show a value. Don't spend time evaluating it
	if trackType ~= Constants.TRACK_TYPES.CFrame then
		local currentValue = TrackUtils.getCurrentValueForPath(path, instance, playhead, animationData, trackType, props.DefaultEulerAnglesOrder)
		items = (isChannelAnimation and expanded) and {} or TrackUtils.getItemsForProperty(track, currentValue, name, props.DefaultEulerAnglesOrder)
	else
		items = {}
	end

	local selected = PathUtils.findPath(selectedTracks, path) ~= nil

	self.maxTrackWidth = math.max(self.maxTrackWidth, trackWidth)

	local dragMultiplier = if track.Type == Constants.TRACK_TYPES.Facs then Constants.NUMBERBOX_FACS_DRAG_MULTIPLIER
		else Constants.NUMBERBOX_DRAG_MULTIPLIER

	children["Track_" .. pathName] = Roact.createElement(Track, {
		LayoutOrder = self.trackCount,
		Name = name,
		NameWidth = nameWidth,
		Items = items,
		Height = Constants.TRACK_HEIGHT,
		Indent = indent,
		ReadOnly = isPlaying or (GetFFlagKeyframeReduction() and isReadOnly),
		Expanded = expanded,
		Selected = selected,
		DragMultiplier = dragMultiplier,
		OnItemChanged = function(key, value)
			if track.Type == Constants.TRACK_TYPES.Facs then
				value = math.clamp(value, 0, 1)
			end
			for _, item in ipairs(items) do
				if item.Key == key then
					item.Value = value
				end
			end
			local newValue = TrackUtils.getPropertyForItems(track, items, props.DefaultEulerAnglesOrder)
			self.onValueChanged(instance, path, trackType, playhead, newValue)
			return value
		end,
		OnExpandToggled = isExpandable and function(newExpandedState)
			self.onTrackExpandToggled(path, newExpandedState)
		end or nil,

		OnChangeBegan = props.OnChangeBegan,
		OnContextButtonClick = function()
			self.onContextButtonClick(instance, path, trackType, rotationType)
		end,
		OnTrackSelected = function()
			self.onTrackSelected(path)
		end,
	})

	self.incrementTrackCount()

	if expanded then
		if isChannelAnimation then
			for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[track.Type]._Order) do
				self:renderTrack(track.Components[componentName], children, theme, path, track.Type)
			end
		else
			self:renderExpandedTracks(track, children, theme)
		end
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
	self.resetTrackCount()
	self.maxTrackWidth = 0

	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
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
end

TrackList = withContext({
	Stylizer = ContextServices.Stylizer,
	Analytics = ContextServices.Analytics,
	Signals = SignalsContext,
})(TrackList)

local function mapStateToProps(state, props)
	local status = state.Status
	return {
		DefaultEulerAnglesOrder = status.DefaultEulerAnglesOrder,
		IsPlaying = status.IsPlaying,
		PlayState = status.PlayState,
		ReadOnly = status.ReadOnly,
	}
end

local function mapDispatchToProps(dispatch)
	return {}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TrackList)
