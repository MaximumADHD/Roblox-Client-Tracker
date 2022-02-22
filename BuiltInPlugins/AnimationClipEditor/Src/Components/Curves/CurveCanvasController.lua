--[[
	A controller than handles curves manipulation events in the Canvas.
	Accepts input from the Canvas itself and keyframes within it, and
	connects these events to thunks and drag logic.

	Props:
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		bool ShowEvents = Whether to show the AnimationEvents track.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local CurveCanvas = require(Plugin.Src.Components.Curves.CurveCanvas)
local EventsController = require(Plugin.Src.Components.EventsController)
local Scale = require(Plugin.Src.Components.Curves.Scale)

local CurveCanvasController = Roact.Component:extend("CurveCanvasController")

function CurveCanvasController:init()
	self.state = {
		AbsoluteSize = Vector2.new(),
		AbsolutePosition = Vector2.new(),
	}

	self.isMultiSelecting = false
	self.mouseDownOnKeyframe = false
	self.mouseDownInTimeline = false
	self.tracks = {}

	self.selectDragStart, self.updateSelectDragStart = Roact.createBinding(nil)
	self.selectDragEnd, self.updateSelectDragEnd = Roact.createBinding(nil)
	self.lastMinTick = nil
	self.lastMinTrack = nil
	self.lastMaxTick = nil
	self.lastMaxTrack = nil

	self.recalculateExtents = function(rbx)
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
			AbsolutePosition = rbx.AbsolutePosition,
		})
	end

	if self.props.AnimationData then
		self:updateTracks(self.props)
	end
end

-- Improve performance by only re-rendering when we need to
function CurveCanvasController:shouldUpdate(nextProps, nextState)
	if nextState ~= self.state then
		return true
	end
	for k, _ in pairs(nextProps) do
		if nextProps[k] ~= self.props[k] then
			return true
		end
	end
	return false
end

function CurveCanvasController:updateCanvasExtents()
	-- Recalculate the min and max values of all the tracks being displayed
	self.minValue = nil
	self.maxValue = nil

	for _, track in pairs(self.tracks) do
		TrackUtils.traverseTracks(nil, track, function(component, _, _)
			if component.Type ~= Constants.TRACK_TYPES.Quaternion then
				for _, keyframe in pairs(component.Data) do
					self.minValue = self.minValue and math.min(self.minValue, keyframe.Value) or keyframe.Value
					self.maxValue = self.maxValue and math.max(self.maxValue, keyframe.Value) or keyframe.Value
				end
			end
		end, true)
	end

	if not self.minValue then
		self.minValue = -1.0
		self.maxValue = 1.0
	end
end

function CurveCanvasController:updateTracks(nextProps)
	-- Fill tracks with the selected tracks data from animationData.
	-- This is only done when either the selectionTracks change, or the data in the selected tracks changes.

	local function findTrack(selectedTrackName)
		for _, instance in pairs(nextProps.AnimationData.Instances) do
			for trackName, trackData in pairs(instance.Tracks) do
				if trackName == selectedTrackName then
					return trackData
				end
			end
		end
		return nil
	end

	self.tracks = {}
	if nextProps.SelectedTracks then
		for _, selectedTrackName in pairs(nextProps.SelectedTracks) do
			self.tracks[selectedTrackName] = findTrack(selectedTrackName)
		end
	end

	self:updateCanvasExtents()
end

function CurveCanvasController:willUpdate(nextProps)
	local props = self.props
	if nextProps.AnimationData ~= props.AnimationData or nextProps.SelectedTracks ~= props.SelectedTracks then
		self:updateTracks(nextProps)
	end
end

function CurveCanvasController:render()
	local props = self.props
	local state = self.state
	local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or self.props.Theme:get("PluginTheme")

	local animationData = props.AnimationData

	local absoluteSize = state.AbsoluteSize
	local absolutePosition = state.AbsolutePosition
	local startTick = props.StartTick
	local endTick = props.EndTick
	local trackPadding = props.TrackPadding
	local showEvents = props.ShowEvents
	local isChannelAnimation = self.props.IsChannelAnimation
	local tracks = self.tracks
	local minValue = self.minValue
	local maxValue = self.maxValue

	local namedKeyframes = animationData and animationData.Events
		and animationData.Events.NamedKeyframes or {}

	if animationData and animationData.Instances.Root then
		return Roact.createElement("Frame", {
			Size = props.Size,
			Position = props.Position,
			BackgroundTransparency = 1,
			ZIndex = props.ZIndex,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Events = showEvents and Roact.createElement(EventsController, {
				AbsolutePosition = absolutePosition - Vector2.new(0, Constants.TRACK_HEIGHT),
				AbsoluteSize = Vector2.new(absoluteSize.X, Constants.TRACK_HEIGHT),
				AnimationData = animationData,
				StartTick = startTick,
				EndTick = endTick,
				TrackPadding = trackPadding,
			}),

			CanvasContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, showEvents and -Constants.TRACK_HEIGHT or 0),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				[Roact.Change.AbsoluteSize] = self.recalculateExtents,
			}, {
				VerticalScale = Roact.createElement(Scale, {
					Size = UDim2.new(0, props.TrackPadding / 2, 1, 0),
					Width = props.TrackPadding / 2,
					ParentSize = absoluteSize,
					Position = UDim2.new(0, 0, 0, 0),
					TickWidthScale = 0.7,
					SmallTickWidthScale = 0.3,
					MinValue = minValue,
					MaxValue = maxValue,
					VerticalScroll = props.VerticalScroll,
					VerticalZoom = props.VerticalZoom,
					ZIndex = 2,
				}),
				CurveCanvas = Roact.createElement(CurveCanvas, {
					Size = UDim2.new(1, -props.TrackPadding, 1, 0),
					Position = UDim2.new(0, props.TrackPadding / 2, 0, 0),
					ParentSize = absoluteSize,
					Padding = props.TrackPadding,
					StartTick = startTick,
					EndTick = endTick,
					MinValue = minValue,
					MaxValue = maxValue,
					Tracks = tracks,
					VerticalScroll = props.VerticalScroll,
					VerticalZoom = props.VerticalZoom,
					SelectedKeyframes = props.SelectedKeyframes,
					SelectedEvents = props.SelectedEvents,
					IsChannelAnimation = isChannelAnimation,
					NamedKeyframes = namedKeyframes,
					ZIndex = 1,
				}),
				RightMask = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, props.TrackPadding / 2 + Constants.SCROLL_BAR_SIZE - 1, 1, Constants.SCROLL_BAR_SIZE),
					Position = UDim2.new(1, -props.TrackPadding / 2, 0, 0),
					BackgroundColor3 = theme.backgroundColor,
					BorderColor3 = theme.borderColor,
					BorderSizePixel = 1,
					ZIndex = 2,
				}),
			})
		})
	else
		return Roact.createElement("Frame", {
			Size = props.Size,
			Position = props.Position,
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.recalculateExtents,
		})
	end
end

CurveCanvasController = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(CurveCanvasController)

local function mapStateToProps(state)
	local status = state.Status

	local stateToProps = {
		Active = status.Active,
		SelectedKeyframes = status.SelectedKeyframes,
		SelectedTracks = status.SelectedTracks,
		Clipboard = status.Clipboard,
		AnimationData = state.AnimationData,
		QuantizeWarning = state.Notifications.QuantizeWarning,
		Saved = state.Notifications.Saved,
		Loaded = state.Notifications.Loaded,
		ClippedWarning = state.Notifications.ClippedWarning,
		FrameRate = status.FrameRate,
		SnapMode = status.SnapMode,
		InvalidIdWarning = state.Notifications.InvalidAnimation
	}

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
	}

	return dispatchToProps
end

return RoactRodux.connect(mapStateToProps,
	mapDispatchToProps)(CurveCanvasController)
