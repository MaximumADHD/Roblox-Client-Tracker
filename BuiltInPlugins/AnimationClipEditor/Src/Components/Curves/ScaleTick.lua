--!strict
--[[
	An element meant to represent a single tick on a vertical scale.

	Props:
		Position: The position of the frame
		ScaleType: Whether the scale shows numbers (left side) or angles (right side)
		TickWidthScale: Width of the tick line in proportion to the containing frame
		Value: The value that this tick falls on the scale. Used for display purposes only.
		Width: Width of the containing frame of this component
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Constants = require(Plugin.Src.Util.Constants)

local ScaleTick = Roact.PureComponent:extend("TimelineTick")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	Position: UDim2,
	ScaleType: string,
	TickWidthScale: number,
	Value: string,
	Width: number?,
}

function ScaleTick:render(): (any)
	local props = self.props
	local theme = props.Stylizer.PluginTheme
	local timelineTheme = theme.timelineTheme

	local value = props.Value
	local width = props.Width
	local position = props.Position
	local scaleType = props.ScaleType
	local leftScale = scaleType == Constants.SCALE_TYPE.Number

	local labelSize = Constants.TICK_LABEL_SIZE
	local tickWidthScale = props.TickWidthScale
	local labelPosition = Constants.TICK_LABEL_POSITION[scaleType]


	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, width),
		Position = position,
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		TimeLabel = if value ~= "" then Roact.createElement("TextLabel", {
			Position = labelPosition,
			Size = labelSize,
			AnchorPoint = Vector2.new(.5, .5),
			TextColor3 = timelineTheme.textColor,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			TextSize = timelineTheme.textSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			Font = theme.font,
			Text = value,
			Rotation = -90,
		}) else nil,

		Tick = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(leftScale and 1 or 0, 0),
			Position = UDim2.new(leftScale and 1 or 0, 0, 1, 0),
			Size = UDim2.new(tickWidthScale, 0, 0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = timelineTheme.lineColor,
		}) or nil,

		Line = leftScale and Roact.createElement("Frame", {
			Position = UDim2.new(1, 0, 1, 0),
			Size = UDim2.new(50, 0, 0, 1),
			AnchorPoint = Vector2.new(0, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = timelineTheme.lineColor,
			BackgroundTransparency = timelineTheme.lowerTransparency
		}) or nil,
	})
end

ScaleTick = withContext({
	Stylizer = ContextServices.Stylizer,
})(ScaleTick)

return ScaleTick
