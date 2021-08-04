--[[
	An element made up of TimelineTick components within a provided time range. Timeline ticks will always start
	at the next possible interval. The interval is automatically clamped (to avoid negative time
	and divide by zero errors). Also the time range must have a minimum value equal to the interval and will be
	automatically adjusted if not. Time and interval are provided as whole number frames and converted to
	time at the very end in order to guarantee accurracy.

	Props:
		int StartFrame = Start of the frame range for the timeline.
		int EndFrame = End of the frame range for the timeline
		int LastFrame = The last frame of the animation. Used to color the timeline.
		int MajorInterval = Amount of frames between each tick that displays their time.
			Recommended to be a multiple of MinorInterval
		int MinorInterval = Amount of frames between each tick.
			Making this the same as MajorInterval will mean there are no small ticks
		UDim2 Position = position of the timeline frame
		Vector2 AnchorPoint = anchor point of the timeline frame
		float SampleRate = FPS, default of 30
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
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local DragTarget = Framework.UI.DragListener

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)

local TimelineTick = require(Plugin.Src.Components.Timeline.TimelineTick)

local StringUtils = require(Plugin.Src.Util.StringUtils)

local DisplaySecondsOnTimeline = require(Plugin.LuaFlags.GetFFlagDisplaySecondsOnTimeline)

local Timeline = Roact.PureComponent:extend("Timeline")

local MIN_INTERVAL = 1
local MAX_INTERVAL = 300
local SAMPLE_RATE = 30

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

function Timeline:renderFirstFrame(timelineTheme)
	local props = self.props
	local startFrame = math.max(props.StartFrame, 0)

	if startFrame == 0 then
		return self:renderSeparator(timelineTheme, 0)
	end
end

function Timeline:renderLastFrame(timelineTheme)
	local props = self.props
	local startFrame = math.max(props.StartFrame, 0)
	local endFrame = math.max(props.EndFrame, 0)
	local lastFrame = props.LastFrame or endFrame
	local width = props.Width

	local xScale = (lastFrame - startFrame) / (endFrame - startFrame)

	if lastFrame >= startFrame and lastFrame <= endFrame then
		return self:renderSeparator(timelineTheme, math.floor(xScale * width))
	end
end

function Timeline:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local timelineTheme = theme.timelineTheme

		local state = self.state

		local startFrame = math.max(props.StartFrame, 0)
		local endFrame = math.max(props.EndFrame, 0)
		local lastFrame = props.LastFrame or endFrame
		local majorInterval = math.clamp(props.MajorInterval, MIN_INTERVAL, MAX_INTERVAL)
		local minorInterval = math.clamp(props.MinorInterval, MIN_INTERVAL, MAX_INTERVAL)
		local sampleRate = props.SampleRate or SAMPLE_RATE
		local position = props.Position
		local anchorPoint = props.AnchorPoint
		local height = props.Height
		local width = props.Width
		local tickLabelSize = props.TickLabelSize
		local tickLabelPosition = props.TickLabelPosition
		local tickHeightScale = props.TickHeightScale
		local smallTickHeightScale = props.SmallTickHeightScale
		local showAsTime = props.ShowAsTime
		local animationData = props.AnimationData
		local frameRate = animationData and animationData.Metadata.FrameRate or Constants.DEFAULT_FRAMERATE

		endFrame = math.max(endFrame, startFrame + majorInterval)

		local children = props[Roact.Children]
		if not children then
			children = {}
		end
		local offset = 0
		if startFrame > 0 and startFrame % minorInterval ~= 0 then
			offset = minorInterval - (startFrame % minorInterval)
		end
		for frameNo = startFrame + offset, endFrame, minorInterval do
			local xScale = (frameNo - startFrame) / (endFrame - startFrame)
			local onInterval = frameNo % majorInterval == 0
			local seconds = math.floor(frameNo / sampleRate)
			local frames = frameNo - (seconds * sampleRate)
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
				PastEnd = frameNo > lastFrame,
				TimeInSeconds = DisplaySecondsOnTimeline() and StringUtils.formatTimeInSeconds(frames, frameRate)
			})
		end

		children.DragTarget = state.Dragging and Roact.createElement(DragTarget, {
			OnDragMoved = self.onDragMoved,
			OnDragEnded = self.onDragEnded,
		})

		local innerWidth
		if lastFrame then
			innerWidth = math.max(0, width * (lastFrame - startFrame) / (endFrame - startFrame))
		else
			innerWidth = width
		end

		return Roact.createElement("Frame", {
			Position = position,
			AnchorPoint = anchorPoint,
			Size = UDim2.new(0, width, 0, height),
			BackgroundTransparency = 1,

			[Roact.Event.InputBegan] = self.onDragBegan,
		}, {
			Ticks = Roact.createElement("Frame", {
				Size = UDim2.new(0, math.min(innerWidth, width), 1, 0),
				BackgroundColor3 = timelineTheme.barColor,
				BorderSizePixel = 0,
			}, children),

			FirstFrame = self:renderFirstFrame(timelineTheme),
			LastFrame = self:renderLastFrame(timelineTheme),
		})
end

if FFlagAnimationClipEditorWithContext then
	Timeline = withContext({
		Theme = ContextServices.Theme,
	})(Timeline)
else
	ContextServices.mapToProps(Timeline, {
		Theme = ContextServices.Theme,
	})
end



return Timeline