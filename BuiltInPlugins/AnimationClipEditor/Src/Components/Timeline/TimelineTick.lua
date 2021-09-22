--[[
	An element meant to represent a single tick on a timeline.

	Props:
		float Time = The time that this tick falls on the timeline. Used for display purposes only.
		float Height = Height of the containing frame of this component
		UDim2 Position = The position of the frame.
		UDim2 LabelSize = Size of the text label displaying the time.
		UDim2 LabelPosition = Position of time label relative to tick line
		float TickHeightScale = Height of the tick line in proportion to the containing frame
		bool ShowTime = should the time text label be visible or not
		bool Highlight = Whether to highlight the line as a primary line (for seconds)
		bool PastEnd = Whether the frame is past the end of the animation.
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local TimelineTick = Roact.PureComponent:extend("TimelineTick")
local Tooltip = require(Plugin.Src.Components.Tooltip)

local LABEL_SIZE = UDim2.new(0, 25, 0, 15)
local LABEL_POSITION = UDim2.new(0, 5, 0, 0)
local TICK_HEIGHT_SCALE = 0.7

function TimelineTick:render()
	local props = self.props
	local theme = props.Theme:get("PluginTheme")
		local timelineTheme = theme.timelineTheme

		local time = props.Time
		local height = props.Height
		local position = props.Position
		local labelSize = props.LabelSize or LABEL_SIZE
		local labelPosition = props.LabelPosition or LABEL_POSITION
		local tickHeightScale = props.TickHeightScale or TICK_HEIGHT_SCALE
		local showTime = props.ShowTime
		local highlight = props.Highlight
		local pastEnd = props.PastEnd
		local timeInSeconds = props.TimeInSeconds
		local shouldShowToolTip = timeInSeconds

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, height, 0, height),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = position,
		}, {
			TimeLabel = Roact.createElement("TextLabel", {
				TextColor3 = pastEnd and timelineTheme.dimmedColor or timelineTheme.textColor,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextSize = timelineTheme.textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = theme.font,
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
				BackgroundColor3 = pastEnd and timelineTheme.dimmedColor or timelineTheme.lineColor,
			}, {
				Tooltip = shouldShowToolTip and Roact.createElement(Tooltip, {
					Text = timeInSeconds,
					ShowDelay = 0,
				})
			}),

			LowerTick = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(0, 1, 50, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = timelineTheme.lineColor,
				BackgroundTransparency = highlight and timelineTheme.lowerBrightTransparency
					or timelineTheme.lowerTransparency
			}),
		})
end

if FFlagAnimationClipEditorWithContext then
	TimelineTick = withContext({
		Theme = ContextServices.Theme,
	})(TimelineTick)
else
	ContextServices.mapToProps(TimelineTick, {
		Theme = ContextServices.Theme,
	})
end



return TimelineTick