--!strict
--[[
    A graphing canvas!
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CanvasContext = require(Graphing.CanvasContext)
local CanvasUtil = require(Graphing.Util.CanvasUtil)
local StyleUtil = require(Graphing.Util.StyleUtil)
local Types = require(Graphing.Types)

export type Props = {
	Position: Types.Bindable<UDim2>?,
	Size: Types.Bindable<UDim2>?,
	LayoutOrder: Types.Bindable<number>?,
	ZIndex: Types.Bindable<number>?,

	GraphRect: Rect?,
	ViewportRect: Rect?,
	ViewportPaddingLeft: UDim?,
	ViewportPaddingRight: UDim?,
	ViewportPaddingTop: UDim?,
	ViewportPaddingBottom: UDim?,
	CullingEpsilon: number?,

	XAxisScaling: Types.AxisScaling?,
	YAxisScaling: Types.AxisScaling?,

	CanvasBackgroundColor3: Types.Bindable<Color3>?,
	CanvasBackgroundTransparency: Types.Bindable<number>?,
	ViewportBackgroundColor3: Types.Bindable<Color3>?,
	ViewportBackgroundTransparency: Types.Bindable<number>?,

	Tag: string?,
	children: Types.Children?,
	childrenUnclipped: Types.Children?,
}

type StableContext = {
	context: Types.CanvasContext,
	update: (Rect, Rect, Types.AxisScaling?, Types.AxisScaling?, number?) -> (),
}

local DEFAULT_RECT = Rect.new(0, 0, 1, 1)

function Canvas(props: Props, ref: React.Ref<Types.CanvasHandle>?): React.Node
	local viewportRef: Types.ReactRef<GuiObject> = React.useRef(nil)

	local graphPosition = if props.Position then props.Position else UDim2.fromOffset(0, 0)
	local graphSize = if props.Size then props.Size else UDim2.fromScale(1, 1)
	local viewportPaddingLeft = if props.ViewportPaddingLeft then props.ViewportPaddingLeft else UDim.new(0, 25)
	local viewportPaddingRight = if props.ViewportPaddingRight then props.ViewportPaddingRight else UDim.new(0, 25)
	local viewportPaddingTop = if props.ViewportPaddingTop then props.ViewportPaddingTop else UDim.new(0, 25)
	local viewportPaddingBottom = if props.ViewportPaddingBottom then props.ViewportPaddingBottom else UDim.new(0, 25)

	local viewportPaddingMin = UDim2.new(viewportPaddingLeft, viewportPaddingTop)
	local viewportPaddingMax = UDim2.new(viewportPaddingRight, viewportPaddingBottom)

	local stableRef = React.useRef(nil :: StableContext?)
	if stableRef.current == nil then
		local graphRect = props.GraphRect or DEFAULT_RECT
		local viewportRect = if props.ViewportRect then props.ViewportRect else graphRect
		local ctx, upd = CanvasUtil.createStableContext(
			viewportRef,
			graphRect,
			viewportRect,
			props.XAxisScaling,
			props.YAxisScaling,
			props.CullingEpsilon
		)
		stableRef.current = { context = ctx, update = upd }
	end
	local stable = stableRef.current :: StableContext
	local contextObj = stable.context
	local updateContext = stable.update

	local paramsRef = React.useRef({
		graphRect = props.GraphRect or DEFAULT_RECT,
		viewportRect = props.ViewportRect or props.GraphRect or DEFAULT_RECT,
		xAxisScaling = props.XAxisScaling,
		yAxisScaling = props.YAxisScaling,
		cullingEpsilon = props.CullingEpsilon,
	})

	React.useImperativeHandle(ref, function()
		return {
			setViewportRect = function(viewportRect: Rect)
				local p = paramsRef.current
				p.viewportRect = viewportRect
				updateContext(p.graphRect, viewportRect, p.xAxisScaling, p.yAxisScaling, p.cullingEpsilon)
			end,
			setGraphRect = function(graphRect: Rect)
				local p = paramsRef.current
				p.graphRect = graphRect
				updateContext(graphRect, p.viewportRect, p.xAxisScaling, p.yAxisScaling, p.cullingEpsilon)
			end,
			update = function(
				graphRect: Rect,
				viewportRect: Rect,
				xAxisScaling: Types.AxisScaling?,
				yAxisScaling: Types.AxisScaling?,
				cullingEpsilon: number?
			)
				local p = paramsRef.current
				p.graphRect = graphRect
				p.viewportRect = viewportRect
				p.xAxisScaling = xAxisScaling
				p.yAxisScaling = yAxisScaling
				p.cullingEpsilon = cullingEpsilon
				updateContext(graphRect, viewportRect, xAxisScaling, yAxisScaling, cullingEpsilon)
			end,
		}
	end, {})

	React.useLayoutEffect(
		function()
			if props.GraphRect then
				local graphRect = props.GraphRect
				local viewportRect = if props.ViewportRect then props.ViewportRect else graphRect
				paramsRef.current.graphRect = graphRect
				paramsRef.current.viewportRect = viewportRect
				paramsRef.current.xAxisScaling = props.XAxisScaling
				paramsRef.current.yAxisScaling = props.YAxisScaling
				paramsRef.current.cullingEpsilon = props.CullingEpsilon
				updateContext(graphRect, viewportRect, props.XAxisScaling, props.YAxisScaling, props.CullingEpsilon)
			end
		end,
		{ props.GraphRect, props.ViewportRect, props.XAxisScaling, props.YAxisScaling, props.CullingEpsilon } :: { any }
	)

	return React.createElement(CanvasContext.Provider, {
		value = contextObj,
	}, {
		MainPanel = React.createElement(
			"Frame",
			{
				Position = graphPosition,
				Size = graphSize,
				LayoutOrder = props.LayoutOrder,
				ZIndex = props.ZIndex,

				BackgroundColor3 = props.CanvasBackgroundColor3 or StyleUtil.CANVAS_BACKGROUND_COLOR3,
				BackgroundTransparency = props.CanvasBackgroundTransparency or StyleUtil.CANVAS_BACKGROUND_TRANSPARENCY,
				BorderSizePixel = 0,
			},
			Dash.join({
				Viewport = React.createElement("CanvasGroup", {
					Position = viewportPaddingMin,
					Size = UDim2.fromScale(1, 1) - (viewportPaddingMin + viewportPaddingMax),
					ref = viewportRef,

					BackgroundColor3 = props.ViewportBackgroundColor3 or StyleUtil.VIEWPORT_BACKGROUND_COLOR3,
					BackgroundTransparency = props.ViewportBackgroundTransparency
						or StyleUtil.VIEWPORT_BACKGROUND_TRANSPARENCY,
					BorderSizePixel = 0,
					ZIndex = 1,
				}, props.children),
				ViewportUnclipped = React.createElement("Frame", {
					Position = viewportPaddingMin,
					Size = UDim2.fromScale(1, 1) - (viewportPaddingMin + viewportPaddingMax),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, props.childrenUnclipped),
			})
		),
	})
end

return React.forwardRef(Canvas)
