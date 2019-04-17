--[[
	An element made up of TimelineTick components within a provided time range. Timeline ticks will always start
	at the next possible interval. The interval is automatically clamped (to avoid negative time
	and divide by zero errors). Also the time range must have a minimum value equal to the interval and will be
	automatically adjusted if not. Time and interval are provided as whole number frames and converted to
	time at the very end in order to guarantee accurracy.

	Props:
		int StartFrame = Start of the frame range for the timeline.
		int EndFrame = End of the frame range for the timeline
		int MajorInterval = Amount of frames between each tick that displays their time. Recommended to be a multiple of MinorInterval
		int MinorInterval = Amount of frames between each tick. Making this the same as MajorInterval will mean there are no small ticks
		float SampleRate = FPS, default of 30
		float Height = Height of the containing frame of this component
		float Width = Width of the containing frame of this component
		float TextSize = Size of text for each label's tick that displays their time.
		UDim2 LabelSize = Size of each tick's text label displaying the time.
		UDim2 LabelPosition = Position of each tick's time label relative to their tick line
		float TickHeightScale = Height of the tick line in proportion to the containing frame
		float SmallTickHeightScale = Height of non-interval aligned ticks in proportion to the containing frame

		function OnInputBegan = A callback fired when the user starts to interact with the frame.
		function OnInputChanged = A callback fired when the user is currently interacting with the frame.
		function OnInputEnded = A callback fired when the user has finished interacting with the frame.
]]

local Library = script.Parent.Parent.Parent
local Tick = require(Library.Components.Timeline.TimelineTick)
local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local MathUtils = require(Library.Utils.MathUtils)
local withTheme = Theming.withTheme

local Timeline = Roact.PureComponent:extend("Timeline")

local MIN_INTERVAL = 1
local MAX_INTERVAL = 300
local SAMPLE_RATE = 30

function Timeline:render()
	return withTheme(function(theme)
		local props = self.props

		local startFrame = math.max(props.StartFrame, 0)
		local endFrame = math.max(props.EndFrame, 0)
		local majorInterval = math.clamp(props.MajorInterval, MIN_INTERVAL, MAX_INTERVAL)
		local minorInterval = math.clamp(props.MinorInterval, MIN_INTERVAL, MAX_INTERVAL)
		local sampleRate = props.SampleRate or SAMPLE_RATE
		local height = props.Height
		local width = props.Width
		local textSize = props.TextSize
		local tickLabelSize = props.TickLabelSize
		local tickLabelPosition = props.TickLabelPosition
		local tickHeightScale = props.TickHeightScale
		local smallTickHeightScale = props.SmallTickHeightScale
		local onInputBegan = props.OnInputBegan
		local onInputChanged = props.OnInputChanged
		local onInputEnded = props.OnInputEnded

		endFrame = math.max(endFrame, startFrame + majorInterval)

		local ticks = {}
		local offset = 0
		if startFrame > 0 then
			offset = minorInterval - (startFrame % minorInterval)
		end
		for frameNo = startFrame + offset, endFrame, minorInterval do
			local xScale = (frameNo - startFrame) / (endFrame - startFrame)
			local onInterval = frameNo % majorInterval == 0
			local time = MathUtils:round(frameNo / sampleRate, 2)
			table.insert(ticks, Roact.createElement(Tick, {
				Time = time,
				Height = height,
				Position = UDim2.new(0, math.floor(xScale * width), 0, 0),
				TextSize = textSize,
				LabelSize = tickLabelSize,
				LabelPosition = tickLabelPosition,
				TickHeightScale = onInterval and tickHeightScale or smallTickHeightScale,
				ShowTime = onInterval,
			}))
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, height),
			BackgroundColor3 = theme.timeline.barColor,
			BorderSizePixel = 0,
			[Roact.Event.InputBegan] = onInputBegan,
			[Roact.Event.InputChanged] = onInputChanged,
			[Roact.Event.InputEnded] = onInputEnded,
		}, ticks)
	end)
end

return Timeline