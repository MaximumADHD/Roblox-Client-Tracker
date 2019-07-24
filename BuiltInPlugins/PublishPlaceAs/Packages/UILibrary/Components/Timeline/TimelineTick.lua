--[[
	An element meant to represent a single tick on a timeline.

	Props:
		float Time = The time that this tick falls on the timeline. Used for display purposes only.
		float Height = Height of the containing frame of this component
		UDim2 Position = The position of the frame.
		float TextSize = Size of text for the label that displays this tick's time.
		UDim2 LabelSize = Size of the text label displaying the time.
		UDim2 LabelPosition = Position of time label relative to tick line
		float TickHeightScale = Height of the tick line in proportion to the containing frame
		bool ShowTime = should the time text label be visible or not
]]

local Library = script.Parent.Parent.Parent
local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local TimelineTick = Roact.PureComponent:extend("TimelineTick")

local LABEL_SIZE = UDim2.new(0, 25, 0, 15)
local LABEL_POSITION = UDim2.new(0, 5, 0, 0)
local TICK_HEIGHT_SCALE = 0.7
local TICK_TEXT_SIZE = 15

function TimelineTick:render()
	return withTheme(function(theme)
		local props = self.props

		local time = props.Time
		local height = props.Height
		local position = props.Position
		local textSize = props.TextSize or TICK_TEXT_SIZE
		local labelSize = props.LabelSize or LABEL_SIZE
		local labelPosition = props.LabelPosition or LABEL_POSITION
		local tickHeightScale = props.TickHeightScale or TICK_HEIGHT_SCALE
		local showTime = props.ShowTime

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, height, 0, height),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = position,
		}, {
			TimeLabel = Roact.createElement("TextLabel", {
				TextColor3 = theme.timelineTick.textColor,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = theme.timelineTick.font,
				Text = time,
				Position = labelPosition,
				Size = labelSize,
				Visible = showTime,
			}),

			TickLine = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(0, 1, tickHeightScale, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = theme.timelineTick.lineColor,
			}),
		})
	end)
end

return TimelineTick