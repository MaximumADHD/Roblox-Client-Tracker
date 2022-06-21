--[[
	An element made up of TimelineTick components within a provided time range. Timeline ticks will always start
	at the next possible interval. The interval is automatically clamped (to avoid negative time
	and divide by zero errors). Also the time range must have a minimum value equal to the interval and will be
	automatically adjusted if not. Time and interval are provided as whole number frames and converted to
	time at the very end in order to guarantee accurracy.

	Props:
		int StartTick = Start of the tick range for the timeline.
		int EndTick = End of the tick range for the timeline
		int LastTick = The last tick of the animation. Used to color the timeline.
		int MajorInterval = Amount of ticks between each mark that displays their time.
			Recommended to be a multiple of MinorInterval
		int MinorInterval = Amount of ticks between each mark.
			Making this the same as MajorInterval will mean there are no small ticks
		UDim2 Position = position of the timeline frame
		Vector2 AnchorPoint = anchor point of the timeline frame
		float FrameRate = FPS, default of 30
		float Height = Height of the containing frame of this component
		float Width = Width of the containing frame of this component
		UDim2 LabelSize = Size of each tick's text label displaying the time.
		UDim2 LabelPosition = Position of each tick's time label relative to their tick line
		float TickHeightScale = Height of the tick line in proportion to the containing frame
		float SmallTickHeightScale = Height of non-interval aligned ticks in proportion to the containing frame
		bool ShowAsTime = if true, tick values will be displayed in seconds, if false, in frame increments

		function OnInputBegan = A callback fired when the user clicks in the frame.
		function OnDragMoved = A callback fired when the user drags after clicking in the frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local DragTarget = Framework.UI.DragListener
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local TimelineTick = require(Plugin.Src.Components.Timeline.TimelineTick)
local StringUtils = require(Plugin.Src.Util.StringUtils)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local FFlagFixExtremeZoomOnTick = game:DefineFastFlag("ACEFixExtremeZoomOnTick", false)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local Timeline = Roact.PureComponent:extend("Timeline")

local MIN_INTERVAL = 1
local MAX_INTERVAL = 300

function Timeline:init()
	self.state = {
		Dragging = false,
	}

	self.onDragBegan = function(rbx, input)
		self.props.OnInputBegan(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:setState({
				Dragging = true,
			})
		end
	end

	self.onDragMoved = function(input)
		if self.state.Dragging and self.props.OnDragMoved then
			self.props.OnDragMoved(input)
		end
	end

	self.onDragEnded = function()
		self:setState({
			Dragging = false,
		})
	end
end

function Timeline:renderSeparator(timelineTheme, xPos)
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 2, 1, 0),
		BackgroundColor3 = timelineTheme.lineColor,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0, xPos, 0.5, 0),
		BorderSizePixel = 0,
		ZIndex = 2,
	})
end

function Timeline:renderFirstTick(timelineTheme)
	local props = self.props
	local startTick = math.max(props.StartTick, 0)

	if startTick == 0 then
		return self:renderSeparator(timelineTheme, 0)
	end
end

function Timeline:renderLastTick(timelineTheme)
	local props = self.props
	local startTick = math.max(props.StartTick, 0)
	local endTick = math.max(props.EndTick, 0)
	local lastTick = props.LastTick or endTick
	local width = props.Width

	local xScale = (lastTick - startTick) / (endTick - startTick)

	if lastTick >= startTick and lastTick <= endTick then
		return self:renderSeparator(timelineTheme, math.floor(xScale * width))
	end
end

function Timeline:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local timelineTheme = theme.timelineTheme

	local state = self.state

	local startTick = math.max(props.StartTick, 0)
	local endTick = math.max(props.EndTick, 0)
	local lastTick = props.LastTick or endTick
	local majorInterval = math.clamp(props.MajorInterval, MIN_INTERVAL, MAX_INTERVAL)
	local minorInterval = math.clamp(props.MinorInterval, MIN_INTERVAL, MAX_INTERVAL)
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local height = props.Height
	local width = props.Width
	local tickLabelSize = props.TickLabelSize
	local tickLabelPosition = props.TickLabelPosition
	local tickHeightScale = props.TickHeightScale
	local smallTickHeightScale = props.SmallTickHeightScale
	local showAsTime = props.ShowAsTime
	local frameRate = props.FrameRate or Constants.DEFAULT_FRAMERATE

	if not FFlagFixExtremeZoomOnTick then
		endTick = math.max(endTick, startTick + majorInterval)
	end

	local children = props[Roact.Children]
	if not children then
		children = {}
	end
	local offset = 0
	if startTick > 0 and startTick % minorInterval ~= 0 then
		offset = minorInterval - (startTick % minorInterval)
	end

	for frameNo = startTick + offset, endTick, minorInterval do
		local xScale = (frameNo - startTick) / (endTick - startTick)
		local onInterval = frameNo % majorInterval == 0
		local seconds = math.floor(frameNo / frameRate)
		local frames = frameNo - (seconds * frameRate)
		local time = tostring(seconds ..":" ..string.format("%02d", frames))

		children[frameNo] = Roact.createElement(TimelineTick, {
			Time = showAsTime and time or frameNo,
			Highlight = frames == 0,
			Height = height,
			Position = UDim2.new(0, math.floor(xScale * width), 0, 0),
			Font = theme.font,
			LabelSize = tickLabelSize,
			LabelPosition = tickLabelPosition,
			TickHeightScale = onInterval and tickHeightScale or smallTickHeightScale,
			ShowTime = onInterval,
			PastEnd = frameNo > lastTick,
			TimeInSeconds = StringUtils.formatTimeInSeconds(frames, frameRate)
		})
	end

	children.DragTarget = state.Dragging and Roact.createElement(DragTarget, {
		OnDragMoved = self.onDragMoved,
		OnDragEnded = self.onDragEnded,
	})

	local innerWidth
	if lastTick then
		innerWidth = math.max(0, width * (lastTick - startTick) / (endTick - startTick))
	else
		innerWidth = width
	end

	return Roact.createElement("Frame", {
		Position = position,
		AnchorPoint = anchorPoint,
		Size = UDim2.new(0, width, 0, height),
		BackgroundTransparency = 1,
		ZIndex = GetFFlagCurveEditor() and zIndex or nil,
		[Roact.Event.InputBegan] = self.onDragBegan,
	}, {
		Ticks = Roact.createElement("Frame", {
			Size = UDim2.new(0, math.min(innerWidth, width), 1, 0),
			BackgroundColor3 = timelineTheme.barColor,
			BorderSizePixel = 0,
		}, children),

		FirstTick = self:renderFirstTick(timelineTheme),
		LastTick = self:renderLastTick(timelineTheme),
	})
end

Timeline = withContext({
	Stylizer = ContextServices.Stylizer,
})(Timeline)

return Timeline