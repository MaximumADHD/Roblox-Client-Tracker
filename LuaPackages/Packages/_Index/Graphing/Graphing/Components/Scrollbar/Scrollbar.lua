--!strict
--[[
    A scrollbar
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local CanvasContext = require(Graphing.CanvasContext)
local ScrollbarButton = require(Graphing.Components.ScrollbarButton)
local StyleUtil = require(Graphing.Util.StyleUtil)
local Types = require(Graphing.Types)
local useViewportBinding = require(Graphing.Util.useViewportBinding).useViewportBinding

export type Props = {
	Axis: Types.Axis,
	Distance: UDim?,
	Size: UDim?,
	ScrollButtonSize: number?,
	ZoomButtonSize: number?,

	MinZoom: number,
	ExpandedBounds: NumberRange?,
	OnViewChanged: (number, number) -> ()?,

	Color3: Types.Bindable<Color3>?,
	OutlineColor3: Types.Bindable<Color3>?,
	OutlineThickness: Types.Bindable<number>?,
	ZIndex: Types.Bindable<number>?,

	Tag: string?,
}

local SCROLL_SPEED_MULT = 0.04

local function getDim(vector: Vector2 | Vector3, axis: Types.Axis)
	return if axis == Types.AXIS_X then vector.X else vector.Y
end

local function makeUDim2(mainUDim: UDim, sideUDim: UDim, mainAxis: Types.Axis)
	return if mainAxis == Types.AXIS_X then UDim2.new(mainUDim, sideUDim) else UDim2.new(sideUDim, mainUDim)
end

function Scrollbar(props: Props): React.Node
	local barDistance = props.Distance or StyleUtil.SCROLLBAR_DISTANCE
	local barThickness = props.Size or StyleUtil.SCROLLBAR_SIZE
	local scrollButtonWidth = props.ScrollButtonSize or StyleUtil.SCROLLBAR_SCROLL_BUTTON_SIZE
	local zoomButtonWidth = props.ZoomButtonSize or StyleUtil.SCROLLBAR_ZOOM_BUTTON_SIZE

	local canvasContext = React.useContext(CanvasContext)

	local bodyBinding = useViewportBinding(function(ctx)
		local plotToGraph: (number) -> number = if props.Axis == Types.AXIS_X
			then ctx.plotToGraphX
			else ctx.plotToGraphY
		local viewportRect = ctx.getViewportRect()
		local viewMin = plotToGraph(getDim(viewportRect.Min, props.Axis))
		local viewMax = plotToGraph(getDim(viewportRect.Max, props.Axis))
		return {
			position = makeUDim2(UDim.new(viewMin, 0), UDim.new(0, 0), props.Axis),
			size = makeUDim2(UDim.new(viewMax - viewMin), UDim.new(1, 0), props.Axis),
		}
	end, { props.Axis })

	local shiftRange = React.useCallback(function(amount: number)
		if props.OnViewChanged then
			local plotToGraph: (number) -> number = if props.Axis == Types.AXIS_X
				then canvasContext.plotToGraphX
				else canvasContext.plotToGraphY
			local graphToPlot: (number) -> number = if props.Axis == Types.AXIS_X
				then canvasContext.graphToPlotX
				else canvasContext.graphToPlotY

			local viewportRect = canvasContext.getViewportRect()
			local viewMin = plotToGraph(getDim(viewportRect.Min, props.Axis))
			local viewMax = plotToGraph(getDim(viewportRect.Max, props.Axis))

			local viewBoundMin = if props.ExpandedBounds then plotToGraph(props.ExpandedBounds.Min) else 0
			local viewBoundMax = if props.ExpandedBounds then plotToGraph(props.ExpandedBounds.Max) else 1

			local newMin = viewMin + amount
			local newMax = viewMax + amount

			local clamping = 0
			local actualMin = math.min(newMin, newMax)
			local actualMax = math.max(newMin, newMax)
			if actualMin < viewBoundMin then
				clamping = viewBoundMin - actualMin
			elseif actualMax > viewBoundMax then
				clamping = viewBoundMax - actualMax
			end
			newMin += clamping
			newMax += clamping

			newMin = graphToPlot(newMin)
			newMax = graphToPlot(newMax)

			props.OnViewChanged(newMin, newMax)
		end
	end, { props.OnViewChanged, props.Axis, props.ExpandedBounds } :: { unknown })

	local onMainDragged = React.useCallback(function(pos: Vector2)
		local plotToGraph: (number) -> number = if props.Axis == Types.AXIS_X
			then canvasContext.plotToGraphX
			else canvasContext.plotToGraphY
		local viewportRect = canvasContext.getViewportRect()
		local viewMin = plotToGraph(getDim(viewportRect.Min, props.Axis))
		local viewPos = canvasContext.plotToView(pos)
		shiftRange(getDim(viewPos, props.Axis) - viewMin)
	end, { shiftRange, props.Axis } :: { unknown })

	local onLeftDragged = React.useCallback(function(pos: Vector2)
		if props.OnViewChanged then
			-- pos was converted view -> plot, but for the scrollbar we need that coordinate converted graph -> plot
			local viewPos = canvasContext.plotToView(pos)
			local newPlotPos = canvasContext.graphToPlot(viewPos)

			local graphRect = canvasContext.getGraphRect()
			local graphMin = getDim(graphRect.Min, props.Axis)
			local viewportRect = canvasContext.getViewportRect()
			local viewportMax = getDim(viewportRect.Max, props.Axis)

			local newMin = math.min(getDim(newPlotPos, props.Axis), viewportMax - props.MinZoom)
			newMin = math.max(newMin, graphMin)

			props.OnViewChanged(newMin, viewportMax)
		end
	end, { props.OnViewChanged, props.Axis, props.MinZoom } :: { unknown })

	local onRightDragged = React.useCallback(function(pos: Vector2)
		if props.OnViewChanged then
			-- pos was converted view -> plot, but for the scrollbar we need that coordinate converted graph -> plot
			local viewPos = canvasContext.plotToView(pos)
			local newPlotPos = canvasContext.graphToPlot(viewPos)

			local graphRect = canvasContext.getGraphRect()
			local graphMax = getDim(graphRect.Max, props.Axis)
			local viewportRect = canvasContext.getViewportRect()
			local viewportMin = getDim(viewportRect.Min, props.Axis)

			local newMax = math.max(getDim(newPlotPos, props.Axis), viewportMin + props.MinZoom)
			newMax = math.min(newMax, graphMax)

			props.OnViewChanged(viewportMin, newMax)
		end
	end, { props.OnViewChanged, props.Axis, props.MinZoom } :: { unknown })

	local onMinClicked = React.useCallback(function()
		shiftRange(-SCROLL_SPEED_MULT)
	end, { shiftRange } :: { unknown })

	local onMaxClicked = React.useCallback(function()
		shiftRange(SCROLL_SPEED_MULT)
	end, { shiftRange } :: { unknown })

	-- Static layout (doesn't depend on viewport)
	local barPosition =
		makeUDim2(UDim.new(0, -scrollButtonWidth - zoomButtonWidth), UDim.new(1, 0) + barDistance, props.Axis)
	local barSize = makeUDim2(UDim.new(1, 0), barThickness, props.Axis)
	local barSizeSides = makeUDim2(UDim.new(0, (scrollButtonWidth + zoomButtonWidth) * 2), UDim.new(0, 0), props.Axis)
	local sideButtonSize = makeUDim2(UDim.new(0, scrollButtonWidth), UDim.new(1, 0), props.Axis)
	local innerButtonSize = makeUDim2(UDim.new(0, zoomButtonWidth), UDim.new(1, 0), props.Axis)
	local buttonRotation = if props.Axis == Types.AXIS_X then 0 else 90

	return React.createElement("Frame", {
		Position = barPosition,
		Size = barSize + barSizeSides,
		BorderSizePixel = props.OutlineThickness or StyleUtil.SCROLLBAR_OUTLINE_THICKNESS,
		BorderColor3 = props.OutlineColor3 or StyleUtil.SCROLLBAR_OUTLINE_COLOR3,
		BackgroundColor3 = props.Color3 or StyleUtil.SCROLLBAR_COLOR3,
		ZIndex = props.ZIndex,
		[React.Tag] = "ScrollbarFrame",
	}, {
		MinScrollButton = React.createElement(ScrollbarButton, {
			Position = UDim2.fromScale(0, 0),
			Rotation = buttonRotation,
			Size = sideButtonSize,
			Image = StyleUtil.SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE,
			OnClick = onMinClicked,
		}),
		MaxScrollButton = React.createElement(ScrollbarButton, {
			AnchorPoint = if props.Axis == Types.AXIS_X then Vector2.new(1, 0) else Vector2.new(0, 1),
			Position = makeUDim2(UDim.new(1, 0), UDim.new(0, 0), props.Axis),
			Rotation = buttonRotation,
			Size = sideButtonSize,
			Image = StyleUtil.SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE,
			OnClick = onMaxClicked,
		}),
		Inner = React.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(1, 1) - barSizeSides,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Body = React.createElement("Frame", {
				Position = bodyBinding:map(function(v)
					return v.position
				end),
				Size = bodyBinding:map(function(v)
					return v.size
				end),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				MainButton = React.createElement(ScrollbarButton, {
					AnchorPoint = if props.Axis == Types.AXIS_X then Vector2.new(0, 0) else Vector2.new(0, 1),
					Position = if props.Axis == Types.AXIS_X then UDim2.fromScale(0, 0) else UDim2.fromScale(0, 1),
					Size = UDim2.fromScale(1, 1),
					OnMoved = onMainDragged,
				}),
				LeftButton = React.createElement(ScrollbarButton, {
					AnchorPoint = if props.Axis == Types.AXIS_X then Vector2.new(1, 0) else Vector2.new(0, 0),
					Position = if props.Axis == Types.AXIS_X then UDim2.fromScale(0, 0) else UDim2.fromScale(0, 1),
					Rotation = buttonRotation,
					Size = innerButtonSize,
					Image = StyleUtil.SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE,
					OnMoved = onLeftDragged,
				}),
				RightButton = React.createElement(ScrollbarButton, {
					AnchorPoint = if props.Axis == Types.AXIS_X then Vector2.new(0, 0) else Vector2.new(0, 1),
					Position = if props.Axis == Types.AXIS_X then UDim2.fromScale(1, 0) else UDim2.fromScale(0, 0),
					Rotation = buttonRotation,
					Size = innerButtonSize,
					Image = StyleUtil.SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE,
					OnMoved = onRightDragged,
				}),
			}),
		}),
	})
end

return Scrollbar
