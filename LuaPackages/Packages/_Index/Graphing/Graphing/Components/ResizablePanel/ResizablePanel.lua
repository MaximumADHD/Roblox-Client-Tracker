--!strict
--[[
    A panel with built-in handles to drag and resize.
    TODO write more lol

    Required Props:

    Optional Props:

]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CanvasContext = require(Graphing.CanvasContext)
local InputDetector = require(Graphing.Components.InputDetector)
local Panel = require(Graphing.Components.Panel)
local Types = require(Graphing.Types)

export type Props = {
	Rect: Rect,
	SetRect: (newRect: Rect) -> ()?,
	MinSize: Vector2?,

	DragEnabled: boolean?,
	EdgeLeftEnabled: boolean?,
	EdgeRightEnabled: boolean?,
	EdgeTopEnabled: boolean?,
	EdgeBottomEnabled: boolean?,
	CornerTopLeftEnabled: boolean?,
	CornerTopRightEnabled: boolean?,
	CornerBottomLeftEnabled: boolean?,
	CornerBottomRightEnabled: boolean?,

	XSnap: number?,
	YSnap: number?,

	children: Types.Children?,
	Tag: string?,
} & Panel.Props

local function onDrag(props: Props, newPos: Vector2, side: Vector2)
	if not props.SetRect then
		return
	end

	local minSize = props.MinSize or Vector2.zero

	local xMin = props.Rect.Min.X
	local yMin = props.Rect.Min.Y
	local xMax = props.Rect.Max.X
	local yMax = props.Rect.Max.Y

	if side.X == 0 then
		xMin = math.min(newPos.X, xMax - minSize.X)
	end
	if side.X == 1 then
		xMax = math.max(newPos.X, xMin + minSize.X)
	end
	if side.Y == 0 then
		yMin = math.min(newPos.Y, yMax - minSize.Y)
	end
	if side.Y == 1 then
		yMax = math.max(newPos.Y, yMin + minSize.Y)
	end

	assert(props.SetRect ~= nil, "props.SetRect is nil")
	-- linter isn't happy unless we explicitly cast the SetRect function to non-nil
	local setter = props.SetRect :: any
	setter(Rect.new(xMin, yMin, xMax, yMax))
end

function ResizablePanel(props: Props): React.Node
	local canvasContext = React.useContext(CanvasContext)

	local isXReversed = canvasContext.getXAxisScaling().Direction == Types.DIRECTION_REVERSED
	local isYReversed = canvasContext.getYAxisScaling().Direction == Types.DIRECTION_REVERSED

	local onDragged = React.useCallback(function(pos: Vector2)
		if not props.SetRect then
			return
		end

		assert(props.SetRect, "props.SetRect was nil")
		-- linter isn't happy unless we explicitly cast the SetRect function to non-nil
		local setter = props.SetRect :: any
		setter(Rect.new(pos.X, pos.Y, pos.X + props.Rect.Width, pos.Y + props.Rect.Height))
	end, { props.Rect, props.SetRect } :: { any })

	local onLeftDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 1 else 0, 0.5))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed } :: { any })

	local onRightDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 0 else 1, 0.5))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed } :: { any })

	local onTopDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(0.5, if isYReversed then 0 else 1))
	end, { props.Rect, props.SetRect, props.MinSize, isYReversed } :: { any })

	local onBottomDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(0.5, if isYReversed then 1 else 0))
	end, { props.Rect, props.SetRect, props.MinSize, isYReversed } :: { any })

	local onTopLeftDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 1 else 0, if isYReversed then 0 else 1))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed, isYReversed } :: { any })

	local onTopRightDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 0 else 1, if isYReversed then 0 else 1))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed, isYReversed } :: { any })

	local onBottomLeftDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 1 else 0, if isYReversed then 1 else 0))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed, isYReversed } :: { any })

	local onBottomRightDragged = React.useCallback(function(pos: Vector2)
		onDrag(props, pos, Vector2.new(if isXReversed then 0 else 1, if isYReversed then 1 else 0))
	end, { props.Rect, props.SetRect, props.MinSize, isXReversed, isYReversed } :: { any })

	return React.createElement(
		Panel,
		Dash.join(props, {
			Rect = props.Rect,
			children = Dash.join(props.children, {
				CenterInput = props.DragEnabled and React.createElement(InputDetector, {
					AnchorPoint = Vector2.new(0, 0),
					XSnap = props.XSnap,
					YSnap = props.YSnap,
					OnDragMoved = onDragged,
					ZIndex = 0,
				}),

				Left = props.EdgeLeftEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(0, 0),
					Size = UDim2.fromScale(0, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 1,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onLeftDragged,
					}),
				}),

				Right = props.EdgeRightEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(1, 0),
					Size = UDim2.fromScale(0, 1),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 1,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onRightDragged,
					}),
				}),

				Top = props.EdgeTopEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(0, 0),
					Size = UDim2.fromScale(1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 1,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onTopDragged,
					}),
				}),

				Bottom = props.EdgeBottomEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(0, 1),
					Size = UDim2.fromScale(1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 1,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onBottomDragged,
					}),
				}),

				TopLeft = props.CornerTopLeftEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(0, 0),
					Size = UDim2.fromScale(0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onTopLeftDragged,
					}),
				}),

				TopRight = props.CornerTopRightEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(1, 0),
					Size = UDim2.fromScale(0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onTopRightDragged,
					}),
				}),

				BottomLeft = props.CornerBottomLeftEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(0, 1),
					Size = UDim2.fromScale(0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onBottomLeftDragged,
					}),
				}),

				BottomRight = props.CornerBottomRightEnabled and React.createElement("Frame", {
					Position = UDim2.fromScale(1, 1),
					Size = UDim2.fromScale(0, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Input = React.createElement(InputDetector, {
						Inflate = 5,
						XSnap = props.XSnap,
						YSnap = props.YSnap,
						OnDragMoved = onBottomRightDragged,
					}),
				}),
			}) :: Types.Children,
		})
	)
end

return ResizablePanel
