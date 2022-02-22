--[[
	An element meant to represent a single tick on a vertical scale.

	Props:
		float Value = The value that this tick falls on the scale. Used for display purposes only.
		float Width = Width of the containing frame of this component
		UDim2 Position = The position of the frame.
		UDim2 LabelSize = Size of the text label displaying the time.
		UDim2 LabelPosition = Position of time label relative to tick line
		float TickWidthScale = Width of the tick line in proportion to the containing frame
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ScaleTick = Roact.PureComponent:extend("TimelineTick")

local LABEL_SIZE = UDim2.new(0, 25, 0, 15)
local LABEL_POSITION = UDim2.new(.3, 0, .5, 0)
local TICK_WIDTH_SCALE = 0.7

function ScaleTick:render()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")
	local timelineTheme = theme.timelineTheme

	local value = props.Value
	local width = props.Width
	local position = props.Position
	local labelSize = props.LabelSize or LABEL_SIZE
	local labelPosition = props.LabelPosition or LABEL_POSITION
	local tickWidthScale = props.TickWidthScale or TICK_WIDTH_SCALE
	local showValue = props.ShowValue

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, width),
		Position = position,
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		TimeLabel = Roact.createElement("TextLabel", {
			Position = labelPosition,
			Size = labelSize,
			AnchorPoint = Vector2.new(.5, .5),
			TextColor3 = timelineTheme.textColor,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			TextSize = timelineTheme.textSize,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			Font = theme.font,
			Text = value,
			Visible = showValue,
			Rotation = -90,
		}),

		TickLine = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 1, 0),
			Size = UDim2.new(tickWidthScale, 0, 0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = timelineTheme.lineColor,
		}),

		LowerTick = Roact.createElement("Frame", {
			Position = UDim2.new(1, 0, 1, 0),
			Size = UDim2.new(50, 0, 0, 1),
			AnchorPoint = Vector2.new(0, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = timelineTheme.lineColor,
			BackgroundTransparency = timelineTheme.lowerTransparency
		}),
	})
end

ScaleTick = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(ScaleTick)

return ScaleTick