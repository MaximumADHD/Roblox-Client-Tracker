--!strict
--[[
	A wrapper around the Path2D instance that handles the logic of putting a list of control points
	into the Path2D object, splitting into multiple paths if it needs to.

	(This component is written to require no dependencies on the rest of the Graphing library, so that
	it can be moved to a more general/core location later if we want.)

	Required Props:
		{ Path2DControlPoint } ControlPoints: A list of control points for the curve to follow
		  OR
		Signals.getter<{ Path2DControlPoint }> ObserveControlPoints: A signal getter for reactive updates
		  (requires PointCount to be set)

	Optional Props:
		boolean ClipContents: Whether the Path2D should be clipped inside its parent GUIObject (default: true)
		Color3 Color3: The color of the path
		number PointCount: Required when using ObserveControlPoints to determine Path2D instance count
		string Tag: The React tag to apply to the Path2D instance
		number Thickness: The stroke width of the path, in pixels
		number ZIndex: The z order that the component will render with
]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)
local Signals = require(Packages.Signals)

export type Props = {
	ControlPoints: { Path2DControlPoint }?,
	ObserveControlPoints: Signals.getter<{ Path2DControlPoint }>?,
	PointCount: number?,

	ClipContents: boolean?,
	Color3: (Color3 | React.Binding<Color3>)?,
	Tag: string?,
	Thickness: (number | React.Binding<number>)?,
	ZIndex: (number | React.Binding<number>)?,
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

function Path2DWrapper(props: Props): React.Node
	local pathContainerRef: { current: GuiObject? } = React.useRef(nil)
	local pointLimit = getMaxPointsPerPath()

	local pointCount = props.PointCount or (props.ControlPoints and #props.ControlPoints or 0)

	local function applyControlPoints(controlPoints: { Path2DControlPoint })
		local pathContainer = pathContainerRef.current
		if not pathContainer then
			return
		end

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

	React.useLayoutEffect(function()
		if props.ObserveControlPoints then
			local observe = props.ObserveControlPoints
			return Signals.createEffect(function(scope)
				applyControlPoints(observe(scope))
			end)
		elseif props.ControlPoints then
			applyControlPoints(props.ControlPoints)
		end
		return function() end
	end, { props.ObserveControlPoints, props.ControlPoints } :: { unknown })

	local tag = props.Tag or ""
	local clipContents = if props.ClipContents ~= nil then props.ClipContents else true

	local childPaths: { [string]: React.Node } = {}
	local pathId = 1
	for _i = 2, pointCount, pointLimit - 1 do
		childPaths[tostring(pathId)] = React.createElement("Path2D", {
			Color3 = props.Color3,
			Thickness = props.Thickness,
			ZIndex = props.ZIndex,
			[React.Tag] = tag,
		})
		pathId += 1
	end

	return React.createElement(if clipContents then "CanvasGroup" else "Frame", {
		ref = pathContainerRef,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
		ZIndex = props.ZIndex,
	}, childPaths)
end

return Path2DWrapper
