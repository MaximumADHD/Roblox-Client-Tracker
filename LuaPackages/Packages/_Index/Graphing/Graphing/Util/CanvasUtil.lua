--!strict
--[[
	Provides implementations for the functions for CanvasContext given various properties of a Canvas component.

	This uses the following terminology:
	
	"canvas" - the frame that contains everything to do with the graph
	"viewport" - the inner frame that contains the actual graph (scrollbars and scale labels would be outside it)

	"plot position" - a mathematical / abstract coordinate that matches the scale labels on the side of the graph
	"graph position" - a normalized / 0-to-1 coordinate that determines where in the graphRect the point is
	"view position" - a normalized / 0-to-1 coordinate that determines where in the viewRect the point is
	"absolute position" - a pixel coordinate that represents where something actually is on the screen (for a plugin, this is relative to the whole plugin's origin)
	"mouse position" - a *Vector3* indicating the exact screen space position of a mouse

	"graphRect" - the X-Y bounds, in plot space, that defines the min/max of the graph
	"viewportRect" - the X-Y bounds, also in plot space, that defines the portion of the graphRect that can be seen
]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local Signals = require(Packages.Signals)
local MathUtil = require(Graphing.Util.MathUtil)
local Types = require(Graphing.Types)

local CanvasUtil = {}

local _defaultRectGetter: Types.SignalGetter<Rect> = Signals.createSignal(Rect.new(0, 0, 1, 1))

local EMPTY_REF: Types.ReactRef<GuiObject> = {
	current = nil,
}

CanvasUtil.DEFAULT_XSCALING = {
	Type = Types.SCALING_LINEAR,
	Direction = Types.DIRECTION_FORWARD,
} :: Types.LinearAxisScaling

CanvasUtil.DEFAULT_YSCALING = {
	Type = Types.SCALING_LINEAR,
	Direction = Types.DIRECTION_REVERSED,
} :: Types.LinearAxisScaling

function CanvasUtil.createFunctions(
	graphRect: Rect,
	viewportRect: Rect,
	viewportRef: Types.ReactRef<GuiObject>,
	xAxisScaling: Types.AxisScaling?,
	yAxisScaling: Types.AxisScaling?,
	defaultEpsilon: number?
): Types.CanvasContext
	xAxisScaling = xAxisScaling or CanvasUtil.DEFAULT_XSCALING
	yAxisScaling = yAxisScaling or CanvasUtil.DEFAULT_YSCALING
	assert(xAxisScaling, "xAxisScaling was nil")
	assert(yAxisScaling, "yAxisScaling was nil")

	defaultEpsilon = defaultEpsilon or 1e-4
	assert(defaultEpsilon, "defaultEpsilon was nil")

	local function scaled(n: number, scaling: Types.AxisScaling)
		if scaling.Type == Types.SCALING_LINEAR then
			return n
		elseif scaling.Type == Types.SCALING_POWER then
			local power = (scaling :: Types.PowerAxisScaling).Power
			return MathUtil.signedPow(n, power)
		elseif scaling.Type == Types.SCALING_LOGARITHMIC then
			local base = (scaling :: Types.LogarithmicAxisScaling).Base
			return MathUtil.log(base, n)
		end

		assert(false, `Scaling type {scaling} not supported`)
		return n
	end

	local function unscaled(n: number, scaling: Types.AxisScaling)
		if scaling.Type == Types.SCALING_LINEAR then
			return n
		elseif scaling.Type == Types.SCALING_POWER then
			local power = (scaling :: Types.PowerAxisScaling).Power
			return MathUtil.signedPow(n, 1 / power)
		elseif scaling.Type == Types.SCALING_LOGARITHMIC then
			local base = (scaling :: Types.LogarithmicAxisScaling).Base
			return math.pow(base, n)
		end

		assert(false, `Scaling type {scaling} not supported`)
		return n
	end

	local scaledGraphRect = Rect.new(
		scaled(graphRect.Min.X, xAxisScaling),
		scaled(graphRect.Min.Y, yAxisScaling),
		scaled(graphRect.Max.X, xAxisScaling),
		scaled(graphRect.Max.Y, yAxisScaling)
	)
	local scaledViewportRect = Rect.new(
		scaled(viewportRect.Min.X, xAxisScaling),
		scaled(viewportRect.Min.Y, yAxisScaling),
		scaled(viewportRect.Max.X, xAxisScaling),
		scaled(viewportRect.Max.Y, yAxisScaling)
	)

	--[[
		Get the UI component representing the viewport inside which all of the graph elements reside.
	]]
	local function getViewport(): GuiObject?
		return viewportRef.current
	end

	--[[
		Get the "graphRect" parameter that the canvas is using.
	]]
	local function getGraphRect(): Rect
		return graphRect
	end

	--[[
		Get the "viewportRect" parameter that the canvas is using.
	]]
	local function getViewportRect(): Rect
		return viewportRect
	end

	--[[
		Get the axis scaling parameter in the x direction.
	]]
	local function getXAxisScaling(): Types.AxisScaling
		return xAxisScaling
	end

	--[[
		Get the axis scaling parameter in the y direction.
	]]
	local function getYAxisScaling(): Types.AxisScaling
		return yAxisScaling
	end

	--[[
		Convert the x-coordinate of a plot position into the x-coordinate of its corresponding graph position.
	]]
	local function plotToGraphX(plotX: number): number
		local graphX = MathUtil.inverseLerp(scaledGraphRect.Min.X, scaledGraphRect.Max.X, scaled(plotX, xAxisScaling))
		if xAxisScaling.Direction == Types.DIRECTION_REVERSED then
			graphX = 1 - graphX
		end

		return graphX
	end

	--[[
		Convert the y-coordinate of a plot position into the y-coordinate of its corresponding graph position.
	]]
	local function plotToGraphY(plotY: number): number
		local graphY = MathUtil.inverseLerp(scaledGraphRect.Min.Y, scaledGraphRect.Max.Y, scaled(plotY, yAxisScaling))
		if yAxisScaling.Direction ~= Types.DIRECTION_FORWARD then
			graphY = 1 - graphY
		end

		return graphY
	end

	--[[
		Convert a plot position into its corresponding graph position.
	]]
	local function plotToGraph(plotPos: Vector2): Vector2
		return Vector2.new(plotToGraphX(plotPos.X), plotToGraphY(plotPos.Y))
	end

	--[[
		Convert the x-coordinate of a graph position into the x-coordinate of its corresponding plot position.
	]]
	local function graphToPlotX(graphX: number): number
		if xAxisScaling.Direction == Types.DIRECTION_REVERSED then
			graphX = 1 - graphX
		end
		return unscaled(MathUtil.lerp(scaledGraphRect.Min.X, scaledGraphRect.Max.X, graphX), xAxisScaling)
	end

	--[[
		Convert the y-coordinate of a graph position into the y-coordinate of its corresponding plot position.
	]]
	local function graphToPlotY(graphY: number): number
		if yAxisScaling.Direction ~= Types.DIRECTION_FORWARD then
			graphY = 1 - graphY
		end
		return unscaled(MathUtil.lerp(scaledGraphRect.Min.Y, scaledGraphRect.Max.Y, graphY), yAxisScaling)
	end

	--[[
		Convert a graph position into its corresponding plot position.
	]]
	local function graphToPlot(graphPos: Vector2): Vector2
		return Vector2.new(graphToPlotX(graphPos.X), graphToPlotY(graphPos.Y))
	end

	--[[
		Convert the x-coordinate of a plot position into the x-coordinate of its corresponding view position.
	]]
	local function plotToViewX(plotX: number): number
		local viewX =
			MathUtil.inverseLerp(scaledViewportRect.Min.X, scaledViewportRect.Max.X, scaled(plotX, xAxisScaling))
		if xAxisScaling.Direction == Types.DIRECTION_REVERSED then
			viewX = 1 - viewX
		end

		return viewX
	end

	--[[
		Convert the y-coordinate of a plot position into the y-coordinate of its corresponding view position.
	]]
	local function plotToViewY(plotY: number): number
		local viewY =
			MathUtil.inverseLerp(scaledViewportRect.Min.Y, scaledViewportRect.Max.Y, scaled(plotY, yAxisScaling))
		if yAxisScaling.Direction ~= Types.DIRECTION_FORWARD then
			viewY = 1 - viewY
		end

		return viewY
	end

	--[[
		Convert a plot position into its corresponding view position.
	]]
	local function plotToView(plotPos: Vector2): Vector2
		return Vector2.new(plotToViewX(plotPos.X), plotToViewY(plotPos.Y))
	end

	--[[
		Convert the x-coordinate of a view position into the x-coordinate of its corresponding plot position.
	]]
	local function viewToPlotX(viewX: number): number
		if xAxisScaling.Direction == Types.DIRECTION_REVERSED then
			viewX = 1 - viewX
		end
		return unscaled(MathUtil.lerp(scaledViewportRect.Min.X, scaledViewportRect.Max.X, viewX), xAxisScaling)
	end

	--[[
		Convert the y-coordinate of a view position into the y-coordinate of its corresponding plot position.
	]]
	local function viewToPlotY(viewY: number): number
		if yAxisScaling.Direction ~= Types.DIRECTION_FORWARD then
			viewY = 1 - viewY
		end
		return unscaled(MathUtil.lerp(scaledViewportRect.Min.Y, scaledViewportRect.Max.Y, viewY), yAxisScaling)
	end

	--[[
		Convert a view position into its corresponding plot position.
	]]
	local function viewToPlot(viewPos: Vector2): Vector2
		return Vector2.new(viewToPlotX(viewPos.X), viewToPlotY(viewPos.Y))
	end

	--[[
		Converts an absolute position into its corresponding view position.
	]]
	local function absToView(absPos: Vector2): Vector2
		local panel = viewportRef.current
		if not panel then
			return viewportRect.Min
		end

		local panelPos = panel.AbsolutePosition
		local panelSize = panel.AbsoluteSize
		local xFrac = MathUtil.inverseLerp(panelPos.X, panelPos.X + panelSize.X, absPos.X)
		local yFrac = MathUtil.inverseLerp(panelPos.Y, panelPos.Y + panelSize.Y, absPos.Y)

		return Vector2.new(xFrac, yFrac)
	end

	--[[
		Converts a view position into its corresponding absolute position.
	]]
	local function viewToAbs(viewPos: Vector2): Vector2
		local panel = viewportRef.current
		if not panel then
			return viewportRect.Min
		end

		local panelPos = panel.AbsolutePosition
		local panelSize = panel.AbsoluteSize
		local x = MathUtil.lerp(panelPos.X, panelPos.X + panelSize.X, viewPos.X)
		local y = MathUtil.lerp(panelPos.X, panelPos.X + panelSize.X, viewPos.Y)

		return Vector2.new(x, y)
	end

	--[[
		Converts an absolute position into its corresponding plot position.
	]]
	local function absToPlot(absPos: Vector2): Vector2
		return viewToPlot(absToView(absPos))
	end

	--[[
		Converts a plot position into its corresponding absolute position.
	]]
	local function plotToAbs(plotPos: Vector2): Vector2
		return viewToAbs(plotToView(plotPos))
	end

	--[[
		Converts a mouse position into its corresponding view position.
	]]
	local function mouseToView(mousePos: Vector3): Vector2
		return absToView(Vector2.new(mousePos.X, mousePos.Y))
	end

	--[[
		Converts a mouse position into its corresponding plot position.
	]]
	local function mouseToPlot(mousePos: Vector3): Vector2
		return viewToPlot(mouseToView(mousePos))
	end

	--[[
		Determines if the x-coordinate of a plot position is contained in the x bounds of the viewportRect, within a given epsilon.
	]]
	local function isPointInViewportX(plotX: number, epsilon: number?): boolean
		local theEpsilon = epsilon or defaultEpsilon
		return plotX >= viewportRect.Min.X - theEpsilon and plotX <= viewportRect.Max.X + theEpsilon
	end

	--[[
		Determines if the y-coordinate of a plot position is contained in the y bounds of the viewportRect, within a given epsilon.
	]]
	local function isPointInViewportY(plotY: number, epsilon: number?): boolean
		local theEpsilon = epsilon or defaultEpsilon
		return plotY >= viewportRect.Min.Y - theEpsilon and plotY <= viewportRect.Max.Y + theEpsilon
	end

	--[[
		Determines if a plot position is contained in the viewportRect, within a given epsilon.
	]]
	local function isPointInViewport(plotPos: Vector2, epsilon: number?): boolean
		return isPointInViewportX(plotPos.X, epsilon) and isPointInViewportY(plotPos.Y, epsilon)
	end

	--[[
		Determines if a rectangle defined in plot space overlaps the viewportRect, within a given epsilon.
	]]
	local function isRectInViewport(plotRect: Rect, epsilon: number?): boolean
		local theEpsilon = epsilon or defaultEpsilon
		return plotRect.Min.X <= viewportRect.Max.X + theEpsilon
			and plotRect.Max.X >= viewportRect.Min.X - theEpsilon
			and plotRect.Min.Y <= viewportRect.Max.Y + theEpsilon
			and plotRect.Max.Y >= viewportRect.Min.Y - theEpsilon
	end

	return {
		getViewport = getViewport,
		getGraphRect = getGraphRect,
		getViewportRect = getViewportRect,
		getXAxisScaling = getXAxisScaling,
		getYAxisScaling = getYAxisScaling,

		plotToGraph = plotToGraph,
		plotToGraphX = plotToGraphX,
		plotToGraphY = plotToGraphY,
		graphToPlot = graphToPlot,
		graphToPlotX = graphToPlotX,
		graphToPlotY = graphToPlotY,

		plotToView = plotToView,
		plotToViewX = plotToViewX,
		plotToViewY = plotToViewY,
		viewToPlot = viewToPlot,
		viewToPlotX = viewToPlotX,
		viewToPlotY = viewToPlotY,

		absToView = absToView,
		viewToAbs = viewToAbs,
		absToPlot = absToPlot,
		plotToAbs = plotToAbs,

		mouseToView = mouseToView,
		mouseToPlot = mouseToPlot,

		isPointInViewport = isPointInViewport,
		isPointInViewportX = isPointInViewportX,
		isPointInViewportY = isPointInViewportY,
		isRectInViewport = isRectInViewport,

		viewportRectGetter = _defaultRectGetter,
	}
end

--[[
	Creates a stable CanvasContext
]]
function CanvasUtil.createStableContext(
	viewportRef: Types.ReactRef<GuiObject>,
	initialGraphRect: Rect?,
	initialViewportRect: Rect?,
	initialXAxisScaling: Types.AxisScaling?,
	initialYAxisScaling: Types.AxisScaling?,
	initialCullingEpsilon: number?
): (Types.CanvasContext, (
	Rect,
	Rect,
	Types.AxisScaling?,
	Types.AxisScaling?,
	number?
) -> ())
	local graphRect = initialGraphRect or Rect.new(0, 0, 1, 1)
	local viewportRect = initialViewportRect or graphRect
	local viewportRectGetter, setViewportRect = Signals.createSignal(viewportRect)

	local context: Types.CanvasContext = CanvasUtil.createFunctions(
		graphRect,
		viewportRect,
		viewportRef,
		initialXAxisScaling,
		initialYAxisScaling,
		initialCullingEpsilon
	)
	context.viewportRectGetter = viewportRectGetter

	local function update(
		newGraphRect: Rect,
		newViewportRect: Rect,
		xAxisScaling: Types.AxisScaling?,
		yAxisScaling: Types.AxisScaling?,
		defaultEpsilon: number?
	)
		local newFunctions = CanvasUtil.createFunctions(
			newGraphRect,
			newViewportRect,
			viewportRef,
			xAxisScaling,
			yAxisScaling,
			defaultEpsilon
		)
		for key, value in newFunctions :: any do
			if key ~= "viewportRectGetter" then
				(context :: any)[key] = value
			end
		end
		setViewportRect(newViewportRect)
	end

	return context, update
end

function CanvasUtil.createDefaultFunctions()
	return CanvasUtil.createFunctions(Rect.new(0, 0, 1, 1), Rect.new(0, 0, 1, 1), EMPTY_REF)
end

return CanvasUtil
