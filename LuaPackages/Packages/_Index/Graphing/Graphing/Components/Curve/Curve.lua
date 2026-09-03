--!strict
--[[
    A bezier curve rendered in plot space.

    Accepts plot-space CurvePoints (static or via signal getter) and transforms
    them through CanvasContext to view-space Path2DControlPoints. Viewport
    changes are handled reactively via signals — no React re-render needed.
]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)
local Signals = require(Packages.Signals)

local CanvasContext = require(Graphing.CanvasContext)
local StyleUtil = require(Graphing.Util.StyleUtil)
local Types = require(Graphing.Types)
local ViewportHooks = require(Graphing.Util.useViewportBinding)
local useViewportVisibility = ViewportHooks.useViewportVisibility

export type Props = {
	Points: { Types.CurvePoint }?,
	ObservePoints: Signals.getter<{ Types.CurvePoint }>?,
	PointCount: number?,

	ClipContents: boolean?,
	Color3: Types.Bindable<Color3>?,
	Thickness: Types.Bindable<number>?,
	ObserveThickness: Signals.getter<number>?,
	ZIndex: Types.Bindable<number>?,

	Tag: string?,
}

type ContainerSignal = {
	get: Signals.getter<GuiObject?>,
	set: (GuiObject?) -> (),
}

local MAX_POINTS_PER_PATH: number? = nil
local function getMaxPointsPerPath(): number
	if not MAX_POINTS_PER_PATH then
		local tempPath = Instance.new("Path2D")
		MAX_POINTS_PER_PATH = tempPath:GetMaxControlPoints()
		tempPath:Destroy()
	end
	assert(MAX_POINTS_PER_PATH, "MAX_POINTS_PER_PATH was nil")
	return MAX_POINTS_PER_PATH
end

local function curvePointsToControlPoints(
	canvasContext: Types.CanvasContext,
	curvePoints: { Types.CurvePoint }
): { Path2DControlPoint }
	local points = {}
	for _, point in curvePoints do
		local position = canvasContext.plotToView(point.Position)
		local leftTangent = if point.LeftTangent then point.LeftTangent else Vector2.new(0, 0)
		local rightTangent = if point.RightTangent then point.RightTangent else Vector2.new(0, 0)
		leftTangent = canvasContext.plotToView(point.Position + leftTangent) - position
		rightTangent = canvasContext.plotToView(point.Position + rightTangent) - position

		table.insert(
			points,
			Path2DControlPoint.new(
				UDim2.fromScale(position.X, position.Y),
				UDim2.fromScale(leftTangent.X, leftTangent.Y),
				UDim2.fromScale(rightTangent.X, rightTangent.Y)
			)
		)
	end
	return points
end

local function applyControlPoints(pathContainer: GuiObject, controlPoints: { Path2DControlPoint }, pointLimit: number)
	local index = 1
	for _, path in pathContainer:GetChildren() do
		local path2d = path :: Path2D
		local subset: { Path2DControlPoint } = {}
		local numPoints = #controlPoints

		for i = index, index + pointLimit - 1 do
			if i > numPoints then
				break
			end
			table.insert(subset, controlPoints[i])
		end

		path2d:SetControlPoints(subset)
		index += pointLimit - 1
	end
end

function Curve(props: Props): React.Node
	local canvasContext = React.useContext(CanvasContext)
	local pointLimit = getMaxPointsPerPath()

	local pathContainerSignalRef = React.useRef(nil :: ContainerSignal?)
	if pathContainerSignalRef.current == nil then
		local get, set = Signals.createSignal(nil :: GuiObject?)
		pathContainerSignalRef.current = { get = get, set = set }
	end
	local pathContainerSignal = pathContainerSignalRef.current :: ContainerSignal

	local pointCount = props.PointCount or (props.Points and #props.Points or 0)

	React.useLayoutEffect(function()
		local observeControlPoints: Signals.getter<{ Path2DControlPoint }>
		if props.ObservePoints then
			local observePoints = props.ObservePoints
			observeControlPoints = Signals.createComputed(function(scope)
				canvasContext.viewportRectGetter(scope)
				return curvePointsToControlPoints(canvasContext, observePoints(scope))
			end)
		else
			local curvePoints = props.Points or {}
			observeControlPoints = Signals.createComputed(function(scope)
				canvasContext.viewportRectGetter(scope)
				return curvePointsToControlPoints(canvasContext, curvePoints)
			end)
		end

		return Signals.createEffect(function(scope)
			local controlPoints = observeControlPoints(scope)
			local newThickness = if props.ObserveThickness then props.ObserveThickness(scope) else nil
			local pathContainer = pathContainerSignal.get(scope)
			if pathContainer then
				applyControlPoints(pathContainer, controlPoints, pointLimit)
				if newThickness then
					for _, path in pathContainer:GetChildren() do
						(path :: Path2D).Thickness = newThickness
					end
				end
			end
		end)
	end, { canvasContext, props.ObservePoints, props.Points, props.ObserveThickness } :: { unknown })

	local inBounds = useViewportVisibility(function(canvasContextArg)
		local points = props.Points
		if not points or #points == 0 then
			return true
		end

		local minX, minY = math.huge, math.huge
		local maxX, maxY = -math.huge, -math.huge
		for _, point in points do
			local positions: { Vector2 } = { point.Position }
			if point.LeftTangent then
				table.insert(positions, point.Position + point.LeftTangent)
			end
			if point.RightTangent then
				table.insert(positions, point.Position + point.RightTangent)
			end
			for _, v in positions do
				if v.X < minX then
					minX = v.X
				end
				if v.Y < minY then
					minY = v.Y
				end
				if v.X > maxX then
					maxX = v.X
				end
				if v.Y > maxY then
					maxY = v.Y
				end
			end
		end

		return canvasContextArg.isRectInViewport(Rect.new(minX, minY, maxX, maxY))
	end, { props.Points } :: { unknown })

	if not inBounds then
		return nil
	end

	local tag = props.Tag or ""
	local clipContents = if props.ClipContents ~= nil then props.ClipContents else false

	local childPaths: { [string]: React.Node } = {}
	local pathId = 1
	for _i = 2, pointCount, pointLimit - 1 do
		childPaths[tostring(pathId)] = React.createElement("Path2D", {
			Color3 = props.Color3 or StyleUtil.CURVE_COLOR3,
			Thickness = props.Thickness or StyleUtil.CURVE_THICKNESS,
			ZIndex = props.ZIndex,
			[React.Tag] = tag,
		})
		pathId += 1
	end

	return React.createElement(if clipContents then "CanvasGroup" else "Frame", {
		ref = pathContainerSignal.set,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
		ZIndex = props.ZIndex,
	}, childPaths)
end

return Curve
