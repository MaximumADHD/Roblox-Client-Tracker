--!strict
--[[
    A grid line.
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)

local CanvasContext = require(Graphing.CanvasContext)
local Types = require(Graphing.Types)
local ScaleTick = require(Graphing.Components.ScaleTick)
local GridUtil = require(Graphing.Util.GridUtil)
local StyleUtil = require(Graphing.Util.StyleUtil)

export type Props = {
	Side: Types.Side,
	Schema: Types.ScaleSchema,
	SchemaMinor: Types.ScaleSchema?,
	Formatter: ((number) -> string)?,

	BackgroundColor3: Types.Bindable<Color3>?,
	BackgroundTransparency: Types.Bindable<number>?,
	Size: UDim?,
	TickColor: Color3?,
	TickLength: number?,
	TickLengthMinor: number?,
	TickTextPadding: number?,
	TickTextSize: number?,
	TickThickness: number?,
	ZIndex: Types.Bindable<number>?,

	Tag: string?,
	children: Types.Children?,
}

local function isX(side: Types.Side): boolean
	return side == Types.SIDE_TOP or side == Types.SIDE_BOTTOM
end

function Scale(props: Props): React.Node
	local scaleSize = props.Size or StyleUtil.SCALE_SIZE

	local canvasContext = React.useContext(CanvasContext)

	SignalsReact.useSignalState(canvasContext.viewportRectGetter)

	local axis: Types.Axis = if isX(props.Side) then Types.AXIS_X else Types.AXIS_Y

	local position = UDim2.fromScale(0, 0)
	if props.Side == Types.SIDE_LEFT then
		position = UDim2.new(-scaleSize, UDim.new(0, 0))
	elseif props.Side == Types.SIDE_RIGHT then
		position = UDim2.fromScale(1, 0)
	elseif props.Side == Types.SIDE_TOP then
		position = UDim2.new(UDim.new(0, 0), -scaleSize)
	elseif props.Side == Types.SIDE_BOTTOM then
		position = UDim2.fromScale(0, 1)
	else
		assert(false, `Invalid side {props.Side}`)
	end

	local size = if isX(props.Side) then UDim2.new(UDim.new(1, 0), scaleSize) else UDim2.new(scaleSize, UDim.new(1, 0))

	local values = GridUtil.getValues(axis, props.Schema, canvasContext)
	local valuesMinor: { number } = if props.SchemaMinor
		then GridUtil.getValues(axis, props.SchemaMinor, canvasContext, values)
		else {}

	local formatter = props.Formatter or GridUtil.trimRoundingError
	local tickLength = props.TickLength or StyleUtil.SCALE_TICK_LENGTH
	local tickLengthMinor = props.TickLengthMinor or StyleUtil.SCALE_TICK_LENGTH_MINOR

	local children: Types.Children = {}
	for _, v in values do
		children[`Tick{v}`] = React.createElement(ScaleTick, {
			Side = props.Side,
			Position = v,
			Length = tickLength,
			Thickness = props.TickThickness,
			TextPadding = props.TickTextPadding,
			TextSize = props.TickTextSize,
			Color3 = props.TickColor,
			Formatter = formatter,
		})
	end
	for _, v in valuesMinor do
		children[`TickM{v}`] = React.createElement(ScaleTick, {
			Side = props.Side,
			Position = v,
			Length = tickLengthMinor,
			Thickness = props.TickThickness,
			TextPadding = props.TickTextPadding,
			Color3 = props.TickColor,
			HasLabel = false,
		})
	end

	children.Body = React.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundColor3 = props.BackgroundColor3 or StyleUtil.SCALE_BACKGROUND_COLOR3,
		BackgroundTransparency = props.BackgroundTransparency or StyleUtil.SCALE_BACKGROUND_TRANSPARENCY,
		BorderSizePixel = 0,
		ZIndex = -1,
	}, props.children)

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ZIndex = props.ZIndex,
	}, children)
end

return Scale
