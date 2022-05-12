--!strict
--[[
	An element made up of ScaleTick components.

	Props:
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
		float TickHeightScale = Height of the tick line in proportion to the containing frame
		float SmallTickHeightScale = Height of non-interval aligned ticks in proportion to the containing frame

		function OnInputBegan = A callback fired when the user clicks in the frame.
		function OnDragMoved = A callback fired when the user drags after clicking in the frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local ScaleTick = require(Plugin.Src.Components.Curves.ScaleTick)

local Scale = Roact.PureComponent:extend("Scale")

export type Props = {
	-- State/Context
	Stylizer: any,
	Theme: any,

	-- Properties
	MaxValue: number,
	MinValue: number,
	ParentSize: Vector2,
	Position: UDim2,
	ScaleType: string,
	Size: UDim2,
	SmallTickWidthScale: number,
	TickWidthScale: number,
	VerticalScroll: number,
	VerticalZoom: number,
	Width: number,
	ZIndex: number,
}

function Scale:calculateIntervals(props: Props): ()
	local zoom = props.VerticalZoom
	zoom = math.min(zoom, 0.99)

	local range = (props.MaxValue - props.MinValue) * (1 - zoom)
	local height = props.ParentSize.Y

	-- numTicks = height / Constants.TICK_SPACING = number of ticks we can display vertically
	-- scale = range / numTicks = value difference between two consecutive ticks
	local scale = Constants.SCALE_TICK_SPACING * range / height

	-- powTen is the largest power of ten smaller than scale
	local powTen = math.pow(10, math.floor(math.log10(scale)))

	-- space required to display SCALE_NUM_TICKS ticks
	local mult = Constants.SCALE_NUM_TICKS * powTen

	if scale < mult then
		self.majorInterval, self.minorInterval = powTen, powTen / Constants.SCALE_NUM_TICKS
	else
		self.majorInterval, self.minorInterval = mult, mult / Constants.SCALE_NUM_TICKS
	end
end

function Scale:scale(y: number): (number)
	local props = self.props

	local minValue, maxValue = props.MinValue, props.MaxValue
	local scroll, zoom = props.VerticalScroll, props.VerticalZoom
	zoom = math.min(zoom, 0.99)					-- Avoid division by 0
	local zoomFactor = 1 / (1 - zoom)

	y = (maxValue - y) / (maxValue - minValue)	-- Normalize between 0 and 1. maxValue maps to 0, minValue to 1
	y = y - (scroll * zoom)						-- Apply normalized scroll
	y = y * zoomFactor							-- Apply zoom factor

	y = y * props.ParentSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING) + (props.ParentSize.Y * Constants.CURVE_CANVAS_PADDING)
	return y
end

-- This is the inverse function of scale
-- Given a screen coordinates, it returns the value of the curve.
function Scale:inverseScale(y: number): (number)
	local props = self.props

	local minValue, maxValue = props.MinValue, props.MaxValue
	local scroll, zoom = props.VerticalScroll, props.VerticalZoom
	zoom = math.min(zoom, 0.99)					-- Avoid division by 0
	local zoomFactor = 1 / (1 - zoom)

	y = (y - (props.ParentSize.Y * Constants.CURVE_CANVAS_PADDING)) / (props.ParentSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING))
	y = y / zoomFactor
	y = y + (scroll * zoom)
	y = maxValue - (y * (maxValue - minValue))

	return y
end

function Scale:willUpdate(nextProps: Props): ()
	local props = self.props
	if nextProps.ParentSize.Y ~= props.ParentSize.Y
		or nextProps.MinValue ~= props.MinValue or nextProps.MaxValue ~= props.MaxValue
		or math.abs(nextProps.VerticalZoom - props.VerticalZoom) > 0.001 then
		self:calculateIntervals(nextProps)
	end
end

function Scale:renderTick(children: {any}, value: number, label: string, tickScale: number): ()
	local props = self.props
	local width = props.Width
	local scaleType = props.ScaleType

	table.insert(children, Roact.createElement(ScaleTick, {
		Value = label or "",
		Width = width,
		Position = UDim2.new(0, 0, 0, self:scale(value)),
		TickWidthScale = tickScale,
		ScaleType = scaleType,
	}))
end

function Scale:formatLabel(value: number): (string)
	local props = self.props
	if props.ScaleType == Constants.SCALE_TYPE.Angle then
		return string.format("%d°", math.floor(value))
	else
		return string.format("%0.3f", value)
	end
end

function Scale:render(): (any)
	local props = self.props
	local theme = props.Stylizer.PluginTheme
	local timelineTheme = theme.timelineTheme

	local children = {}

	if self.majorInterval then
		-- Calculate the value range that is displayed. Round to the next majorInterval (we could round to the next minorInterval,
		-- but then the check to see if we're rendering a major tick would be more complex)
		local minValueDisplayed, maxValueDisplayed = self:inverseScale(props.ParentSize.Y), self:inverseScale(0)
		minValueDisplayed = math.floor(minValueDisplayed / self.majorInterval) * self.majorInterval
		maxValueDisplayed = math.ceil(maxValueDisplayed / self.majorInterval) * self.majorInterval

		for i = minValueDisplayed, maxValueDisplayed, self.majorInterval do
			self:renderTick(children, i, self:formatLabel(i), props.TickWidthScale)
			for j = 1, 4 do
				self:renderTick(children, i + j * self.minorInterval, "", props.SmallTickWidthScale)
			end
		end
	end

	return Roact.createElement("Frame", {
		Size = props.Size,
		Position = props.Position,
		BackgroundColor3 = timelineTheme.barColor,
		BorderColor3 = theme.borderColor,
		BorderSizePixel = 1,
		ZIndex = props.ZIndex,
	}, children)
end

Scale = withContext({
	Stylizer = ContextServices.Stylizer,
})(Scale)

return Scale
