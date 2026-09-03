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
local GridLine = require(Graphing.Components.GridLine)
local GridUtil = require(Graphing.Util.GridUtil)
local StyleUtil = require(Graphing.Util.StyleUtil)

export type Props = {
	XAxis: Types.ScaleSchema?,
	YAxis: Types.ScaleSchema?,
	XAxisMinor: Types.ScaleSchema?,
	YAxisMinor: Types.ScaleSchema?,

	ZIndex: Types.Bindable<number>?,

	Tag: string?,
}

function Grid(props: Props): React.Node
	local canvasContext = React.useContext(CanvasContext)

	SignalsReact.useSignalState(canvasContext.viewportRectGetter)

	local zIndex = props.ZIndex or -1

	local xValues: { number } = if props.XAxis then GridUtil.getValues(Types.AXIS_X, props.XAxis, canvasContext) else {}
	local yValues: { number } = if props.YAxis then GridUtil.getValues(Types.AXIS_Y, props.YAxis, canvasContext) else {}
	local xValuesMinor: { number } = if props.XAxisMinor
		then GridUtil.getValues(Types.AXIS_X, props.XAxisMinor, canvasContext, xValues)
		else {}
	local yValuesMinor: { number } = if props.YAxisMinor
		then GridUtil.getValues(Types.AXIS_Y, props.YAxisMinor, canvasContext, yValues)
		else {}

	local gridLines: { [string]: React.Node } = {}
	for _, x in xValues do
		gridLines[`X{x}`] = React.createElement(GridLine, {
			Orientation = "Vertical",
			Position = x,
			Tag = props.Tag,

			Color3 = StyleUtil.GRID_COLOR3,
			Thickness = StyleUtil.GRID_THICKNESS,
			Transparency = StyleUtil.GRID_TRANSPARENCY,
		})
	end
	for _, x in xValuesMinor do
		gridLines[`Xm{x}`] = React.createElement(GridLine, {
			Orientation = "Vertical",
			Position = x,
			Tag = props.Tag,

			Color3 = StyleUtil.GRID_COLOR3_MINOR,
			Thickness = StyleUtil.GRID_THICKNESS_MINOR,
			Transparency = StyleUtil.GRID_TRANSPARENCY_MINOR,
		})
	end
	for _, y in yValues do
		gridLines[`Y{y}`] = React.createElement(GridLine, {
			Orientation = "Horizontal",
			Position = y,
			Tag = props.Tag,

			Color3 = StyleUtil.GRID_COLOR3,
			Thickness = StyleUtil.GRID_THICKNESS,
			Transparency = StyleUtil.GRID_TRANSPARENCY,
		})
	end
	for _, y in yValuesMinor do
		gridLines[`Ym{y}`] = React.createElement(GridLine, {
			Orientation = "Horizontal",
			Position = y,
			Tag = props.Tag,

			Color3 = StyleUtil.GRID_COLOR3_MINOR,
			Thickness = StyleUtil.GRID_THICKNESS_MINOR,
			Transparency = StyleUtil.GRID_TRANSPARENCY_MINOR,
		})
	end

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		ZIndex = zIndex,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, gridLines)
end

return Grid
