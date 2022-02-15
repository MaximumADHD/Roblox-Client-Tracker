--[[
	Container component for the Timeline/Scrubber, DopeSheetController, and ZoomBar. Determines what the actual frame
	range displayed on the timeline is.

	Properties:
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int LastTick = The last tick of the animation
		int FrameRate = the rate (frames per second) of the animation
		int Playhead = current tick the scrubber is on
		UDim2 Size = size of the frame
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.
		bool ShowEvents = Whether to show the Animation Events track.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local KeyboardListener = Framework.UI.KeyboardListener

local Separator = Framework.UI.Separator

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Input = require(Plugin.Src.Util.Input)

local DopeSheetController = require(Plugin.Src.Components.DopeSheetController)
local CurveCanvasController = require(Plugin.Src.Components.Curves.CurveCanvasController)
local TimelineContainer = require(Plugin.Src.Components.TimelineContainer)
local ZoomBar_deprecated = require(Plugin.Src.Components.ZoomBar_deprecated)
local ZoomBar = require(Plugin.Src.Components.ZoomBar)
local Scrubber = require(Plugin.Src.Components.Timeline.Scrubber)

local SetScrollZoom = require(Plugin.Src.Actions.SetScrollZoom)
local SetHorizontalScrollZoom = require(Plugin.Src.Actions.SetHorizontalScrollZoom)
local SetVerticalScrollZoom = require(Plugin.Src.Actions.SetVerticalScrollZoom)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SnapToNearestKeyframe = require(Plugin.Src.Thunks.SnapToNearestKeyframe)
local SnapToNearestFrame = require(Plugin.Src.Thunks.SnapToNearestFrame)

local GetFFlagMoarMediaControls = require(Plugin.LuaFlags.GetFFlagMoarMediaControls)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

local TrackEditor = Roact.PureComponent:extend("TrackEditor")

function TrackEditor:init()
	self.ctrlHeld = false
	self.dragging = false

	self.updateSize = function(rbx)
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
			AbsolutePosition = rbx.AbsolutePosition,
		})
	end

	self.inputChanged = function(rbx, input)
		local props = self.props
		local zoom = GetFFlagCurveEditor() and props.HorizontalZoom or props.Zoom
		local scroll = GetFFlagCurveEditor() and props.HorizontalScroll or props.Scroll
		local trackWidth = self.state.AbsoluteSize.X
		local trackLeft = self.state.AbsolutePosition.X

		if input.UserInputType == Enum.UserInputType.MouseWheel then
			local xPos = (input.Position.X  - trackLeft) / trackWidth
			local newScroll = (xPos - scroll) * (1 - zoom)
			newScroll = math.clamp(scroll + newScroll, 0, 1)

			if self.ctrlHeld then
				if input.Position.Z > 0 then
					if GetFFlagCurveEditor() then
						props.SetHorizontalScrollZoom(newScroll, math.clamp(zoom + Constants.ZOOM_INCREMENT, 0, 1))
					else
						props.SetScrollZoom(newScroll, math.clamp(zoom + Constants.ZOOM_INCREMENT, 0, 1))
					end
				elseif input.Position.Z < 0 then
					if GetFFlagCurveEditor() then
						props.SetHorizontalScrollZoom(newScroll, math.clamp(zoom - Constants.ZOOM_INCREMENT, 0, 1))
					else
						props.SetScrollZoom(newScroll, math.clamp(zoom - Constants.ZOOM_INCREMENT, 0, 1))
					end
				end
			else
				props.OnScroll(input.Position.Z)
			end
		elseif input.UserInputType == Enum.UserInputType.MouseMovement and self.dragging then
			local xDelta = (-input.Delta.X) / trackWidth
			local newScroll = xDelta * (1 / math.max(0.01, zoom))
			newScroll = math.clamp(scroll + newScroll, 0, 1)
			if GetFFlagCurveEditor() then
				props.SetHorizontalScrollZoom(newScroll, zoom)
			else
				props.SetScrollZoom(newScroll, zoom)
			end
		end
	end

	self.startDragging = function()
		self.dragging = true
	end

	self.stopDragging = function()
		self.dragging = false
	end

	self.getPlayheadPositionX = function()
		local props = self.props
		local absoluteSize = self.state.AbsoluteSize or Vector2.new()
		local playhead = props.Playhead
		return (self.getTrackPadding() * 0.5) + TrackUtils.getScaledKeyframePosition(
			playhead,
			props.StartTick,
			props.EndTick,
			absoluteSize.X - self.getTrackPadding())
	end

	self.stepAnimation = function(tick)
		local props = self.props
		if (not GetFFlagMoarMediaControls() and not props.IsPlaying) or (GetFFlagMoarMediaControls() and props.PlayState == Constants.PLAY_STATE.Pause) then
			props.StepAnimation(tick)
		end
	end

	self.inputBegan = function(_, input)
		if self.props.Mouse and input.UserInputType == Enum.UserInputType.MouseButton3 then
			self.props.Mouse:__pushCursor("ClosedHand")
			self.startDragging()
		end
	end

	self.inputEnded = function(_, input)
		if self.props.Mouse and self.dragging and input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.MouseButton3 then
			self.props.Mouse:__popCursor()
			self.stopDragging()
		end
	end

	self.getTrackPadding = function()
		local frameRate = self.props.FrameRate
		local lastTick = math.max(self.props.LastTick, self.props.EndTick)
		local lastFrame = lastTick * frameRate / Constants.TICK_FREQUENCY

		if lastFrame < 100 then
			return Constants.TRACK_PADDING_SMALL
		elseif lastFrame < 1000 then
			return Constants.TRACK_PADDING_MEDIUM
		else
			return Constants.TRACK_PADDING_LARGE
		end
	end
end

function TrackEditor:render()
	local props = self.props
	local state = self.state
	local startTick = props.StartTick
	local endTick = props.EndTick
	local lastTick = props.LastTick
	local snapMode = props.SnapMode
	local frameRate = props.FrameRate
	local showAsSeconds = props.ShowAsSeconds
	local scroll = props.Scroll  -- Deprecated with GetFFlagCurveEditor()
	local zoom = props.Zoom  -- Deprecated with GetFFlagCurveEditor()
	local horizontalScroll = props.HorizontalScroll
	local horizontalZoom = props.HorizontalZoom
	local verticalScroll = props.VerticalScroll
	local verticalZoom = props.VerticalZoom
	local layoutOrder = props.LayoutOrder
	local zIndex = props.ZIndex
	local size = props.Size
	local topTrackIndex = props.TopTrackIndex
	local tracks = props.Tracks or {}
	local showEvents = props.ShowEvents
	local playhead = props.Playhead
	local isChannelAnimation = props.IsChannelAnimation
	local colorsPosition = props.ColorsPosition

	local snapToNearestKeyframe = props.SnapToNearestKeyframe
	local snapToNearestFrame = props.SnapToNearestFrame

	local absoluteSize = state.AbsoluteSize or Vector2.new()
	local absolutePosition = state.AbsolutePosition or Vector2.new()

	local trackPadding = self.getTrackPadding()

	local showPlayhead = playhead >= startTick and playhead <= endTick
	local showDopeSheet = props.EditorMode == Constants.EDITOR_MODE.DopeSheet
	local showCurveCanvas = props.EditorMode == Constants.EDITOR_MODE.CurveCanvas

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		ZIndex = zIndex,
		LayoutOrder = layoutOrder,
		Size = size,
		[Roact.Change.AbsoluteSize] = self.updateSize,

		[Roact.Event.InputBegan] = self.inputBegan,
		[Roact.Event.InputChanged] = self.inputChanged,
		[Roact.Event.InputEnded] = self.inputEnded,
		[Roact.Event.MouseLeave] = self.stopDragging,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),

		TimelineContainer = Roact.createElement(TimelineContainer, {
			StartTick = startTick,
			EndTick = endTick,
			LastTick = lastTick,
			SnapMode = snapMode,
			TrackPadding = trackPadding,
			FrameRate = frameRate,
			ShowAsSeconds = showAsSeconds,
			LayoutOrder = 0,
			ParentSize = absoluteSize,
			ParentPosition = absolutePosition,
			StepAnimation = self.stepAnimation,
			SnapToNearestKeyframe = snapToNearestKeyframe,
			SnapToNearestFrame = snapToNearestFrame,
			AnimationData = props.AnimationData,
			Playhead = playhead,
		}),

		DopeSheetController = (not GetFFlagCurveEditor() or showDopeSheet) and Roact.createElement(DopeSheetController, {
			ShowEvents = showEvents,
			StartTick = startTick,
			EndTick = endTick,
			TrackPadding = trackPadding,
			TopTrackIndex = topTrackIndex,
			Tracks = tracks,
			Size = UDim2.new(1, 0, 1, -Constants.TIMELINE_HEIGHT - Constants.SCROLL_BAR_SIZE),
			ShowAsSeconds = showAsSeconds,
			IsChannelAnimation = isChannelAnimation,
			ColorsPosition = GetFFlagCurveEditor() and colorsPosition or nil,
		}) or nil,

		CurveCanvasController = (GetFFlagCurveEditor() and showCurveCanvas) and Roact.createElement(CurveCanvasController, {
			ShowEvents = showEvents,
			StartTick = startTick,
			EndTick = endTick,
			TrackPadding = trackPadding,
			Tracks = tracks,
			Size = UDim2.new(1, 0, 1, -Constants.TIMELINE_HEIGHT - Constants.SCROLL_BAR_SIZE),
			VerticalScroll = verticalScroll,
			VerticalZoom = verticalZoom,
			ShowAsSeconds = showAsSeconds,
			IsChannelAnimation = isChannelAnimation,
		}) or nil,

		ZoomBar = not GetFFlagCurveEditor() and Roact.createElement(ZoomBar_deprecated, {
			Size = UDim2.new(0, absoluteSize.X - Constants.SCROLL_BAR_PADDING, 0, Constants.SCROLL_BAR_SIZE),
			ZIndex = 4,
			LayoutOrder = 2,
			ContainerSize = absoluteSize,
			AdjustScrollZoom = props.SetScrollZoom,
			Scroll = scroll,
			Zoom = zoom,
			LeftX = absolutePosition.X,
		}),

		IgnoreLayout = Roact.createElement("Folder", {}, {
			TimelineBorder = Roact.createElement(Separator, {
				Position = UDim2.new(0.5, 0, 0, Constants.TIMELINE_HEIGHT),
				DominantAxis = Enum.DominantAxis.Width,
				Weight = 1,
				Padding = 0,
				ZIndex = 2,
			}),

			Scrubber = showPlayhead and Roact.createElement(Scrubber, {
				Position = UDim2.new(0, self.getPlayheadPositionX(), 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				Height = absoluteSize.Y,
				ShowHead = true,
				HeadSize = UDim2.new(0, 5, 0, 5),
				ZIndex = 3,
				Thickness = 1,
			}),

			HorizontalZoomBar = GetFFlagCurveEditor() and Roact.createElement(ZoomBar, {
				Size = UDim2.new(0, absoluteSize.X - Constants.SCROLL_BAR_PADDING + 1, 0, Constants.SCROLL_BAR_SIZE),
				Position = UDim2.new(0, 0, 1, -Constants.SCROLL_BAR_SIZE),
				Direction = ZoomBar.HORIZONTAL,
				ZIndex = 4,
				LayoutOrder = 2,
				ContainerSize = Vector2.new(absoluteSize.X, absoluteSize.Y),
				AdjustScrollZoom = props.SetHorizontalScrollZoom,
				Scroll = horizontalScroll,
				Zoom = horizontalZoom,
				Min = absolutePosition.X + 1,
			}) or nil,

			VerticalZoomBar = GetFFlagCurveEditor() and showCurveCanvas and Roact.createElement(ZoomBar, {
				Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE,
					0, absoluteSize.Y - Constants.SCROLL_BAR_SIZE - Constants.SCROLL_BAR_PADDING - Constants.TIMELINE_HEIGHT + 1),
				Position = UDim2.new(1, 0, 0, Constants.TIMELINE_HEIGHT),
				Direction = ZoomBar.VERTICAL,
				ZIndex = 4,
				LayoutOrder = 2,
				ContainerSize = Vector2.new(absoluteSize.X, absoluteSize.Y - Constants.SCROLL_BAR_SIZE - Constants.TIMELINE_HEIGHT),
				AdjustScrollZoom = props.SetVerticalScrollZoom,
				Scroll = verticalScroll,
				Zoom = verticalZoom,
				Min = absolutePosition.Y + Constants.TIMELINE_HEIGHT + 1,
			}) or nil,

			KeyboardListener = Roact.createElement(KeyboardListener, {
				OnKeyPressed = function(input)
					if Input.isControl(input.KeyCode) then
						self.ctrlHeld = true
					end
				end,
				OnKeyReleased = function(input)
					if Input.isControl(input.KeyCode) then
						self.ctrlHeld = false
					end
				end,
			}),
		}),
	})
end

local function mapStateToProps(state)
	return {
		IsPlaying = state.Status.IsPlaying,
		PlayState = state.Status.PlayState,
		SnapMode = state.Status.SnapMode,
		AnimationData = state.AnimationData,
		EditorMode = state.Status.EditorMode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- Deprecated with GetFFlagCurveEditor
		SetScrollZoom = function(scroll, zoom)
			dispatch(SetScrollZoom(scroll, zoom))
		end,

		SetHorizontalScrollZoom = function(scroll, zoom)
			dispatch(SetHorizontalScrollZoom(scroll, zoom))
		end,

		SetVerticalScrollZoom = function(scroll, zoom)
			dispatch(SetVerticalScrollZoom(scroll, zoom))
		end,

		StepAnimation = function(tick)
			dispatch(StepAnimation(tick))
		end,

		SnapToNearestKeyframe = function(tick, trackWidth)
			dispatch(SnapToNearestKeyframe(tick, trackWidth))
		end,

		SnapToNearestFrame = function(tick)
			dispatch(SnapToNearestFrame(tick))
		end,
	}
end

TrackEditor = withContext({
	Mouse = ContextServices.Mouse,
})(TrackEditor)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TrackEditor)
