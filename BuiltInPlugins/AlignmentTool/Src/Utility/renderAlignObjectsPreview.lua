local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local DraggerFramework = Plugin.Packages.DraggerFramework
local BoundingBox = require(DraggerFramework.Utility.BoundingBox)

local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)
local AlignmentSpace = require(Plugin.Src.Utility.AlignmentSpace)
local getDefaultBasisForObjects = require(Plugin.Src.Utility.getDefaultBasisForObjects)

local PREVIEW_COLOR = Color3.fromRGB(253, 244, 161)
local PREVIEW_TRANSPARENCY = 0.3

-- How much bigger is the preview than the actual bounds
local EXTRA_PADDING = 1
local EXTRA_PADDING_VECTOR = Vector3.new(EXTRA_PADDING, EXTRA_PADDING, EXTRA_PADDING)

-- Multiplied to the diameter of the smallest object in the selection
local LINE_CONECAP_RADIUS_MULTIPLIER = 0.06 * 0.5
local LINE_CONECAP_HEIGHT_MULTIPLIER = 0.2 * 0.5
local LINE_CYLINDER_RADIUS_MULTIPLIER = 0.01
local LINE_CONECAP_OFFSET_MULTIPLIER = 0.065 * 0.5
local SPHERE_RADIUS_MULTIPLIER = 0.05

local ONE = Vector3.new(1, 1, 1)
local ZERO = Vector3.new()
local FLIPX = CFrame.fromMatrix(ZERO, Vector3.new(-1, 0, 0), Vector3.new(0, 1, 0))

-- Cube geometry
local CUBE_CORNERS = {
	Vector3.new( 0.5,  0.5,  0.5),
	Vector3.new(-0.5,  0.5,  0.5),
	Vector3.new(-0.5, -0.5,  0.5),
	Vector3.new( 0.5, -0.5,  0.5),
	Vector3.new( 0.5,  0.5, -0.5),
	Vector3.new(-0.5,  0.5, -0.5),
	Vector3.new(-0.5, -0.5, -0.5),
	Vector3.new( 0.5, -0.5, -0.5),
}
local CUBE_EDGES = {
	-- Top loop
	{CUBE_CORNERS[1], CUBE_CORNERS[2]},
	{CUBE_CORNERS[2], CUBE_CORNERS[3]},
	{CUBE_CORNERS[3], CUBE_CORNERS[4]},
	{CUBE_CORNERS[4], CUBE_CORNERS[1]},
	-- Bottom loop
	{CUBE_CORNERS[5], CUBE_CORNERS[6]},
	{CUBE_CORNERS[6], CUBE_CORNERS[7]},
	{CUBE_CORNERS[7], CUBE_CORNERS[8]},
	{CUBE_CORNERS[8], CUBE_CORNERS[5]},
	-- Connect top to bottom
	{CUBE_CORNERS[1], CUBE_CORNERS[5]},
	{CUBE_CORNERS[2], CUBE_CORNERS[6]},
	{CUBE_CORNERS[3], CUBE_CORNERS[7]},
	{CUBE_CORNERS[4], CUBE_CORNERS[8]},
}

local function getAxisCount(axes)
	return (axes.X and 1 or 0) + (axes.Y and 1 or 0) + (axes.Z and 1 or 0)
end

function getNormal(axes)
	return Vector3.new(
		axes.X and 1 or 0,
		axes.Y and 1 or 0,
		axes.Z and 1 or 0
	)
end

function getDirection(axes)
	return ONE - getNormal(axes)
end

function rotateVector(v)
	return Vector3.new(v.Z, v.X, v.Y)
end

function getSmallestObjectSize(boundingBoxes)
	local smallestSize = math.huge
	for _, boundingBox in pairs(boundingBoxes) do
		smallestSize = math.min(smallestSize, boundingBox.size.Magnitude)
	end
	return smallestSize
end

-- Curve the size out to what looks good
function getModifiedSize(size)
	if size < 10 then
		return size
	elseif size < 110 then
		return 10 + (size - 10) / 100 * (110 * 0.2 - 10)
	else
		return 110 * 0.2
	end
end

local function renderAlignToPoint(displayElements, boundingBoxCenter, boundingBoxSize, point, smallestObjectSize)
	local radius = smallestObjectSize * SPHERE_RADIUS_MULTIPLIER
	displayElements.SphereNormal = Roact.createElement("SphereHandleAdornment", {
		Adornee = Workspace.Terrain,
		Radius = radius,
		Color3 = PREVIEW_COLOR,
		CFrame = CFrame.new(point),
		ZIndex = 0,
	})
	displayElements.SphereOnTop = Roact.createElement("SphereHandleAdornment", {
		Adornee = Workspace.Terrain,
		Radius = radius,
		AlwaysOnTop = true,
		Transparency = PREVIEW_TRANSPARENCY,
		Color3 = PREVIEW_COLOR,
		CFrame = CFrame.new(point),
		ZIndex = 0,
	})
end

local function renderAlignToAxis(displayElements, boundingBoxCenter, boundingBoxSize, point, direction, smallestObjectSize)
	local segmentLength = (boundingBoxSize * direction).Magnitude + EXTRA_PADDING
	local worldDirection = boundingBoxCenter:VectorToWorldSpace(direction)
	local halfSegment = 0.5 * segmentLength * worldDirection
	local offsetOfPoint = boundingBoxCenter:PointToObjectSpace(point):Dot(direction)

	point = point - offsetOfPoint * worldDirection
	local pointA = point - halfSegment

	local lineCFrame = CFrame.lookAt(point, pointA)

	local cylinderRadius = LINE_CYLINDER_RADIUS_MULTIPLIER * smallestObjectSize
	displayElements.MainLineNormal = Roact.createElement("CylinderHandleAdornment", {
		Adornee = Workspace.Terrain,
		Height = segmentLength,
		Radius = cylinderRadius,
		Color3 = PREVIEW_COLOR,
		CFrame = lineCFrame,
		ZIndex = 1,
	})
	displayElements.MainLineOnTop = Roact.createElement("CylinderHandleAdornment", {
		Adornee = Workspace.Terrain,
		Height = segmentLength,
		Radius = cylinderRadius,
		AlwaysOnTop = true,
		Transparency = PREVIEW_TRANSPARENCY,
		Color3 = PREVIEW_COLOR,
		CFrame = lineCFrame,
		ZIndex = 1,
	})

	local conecapRadius = LINE_CONECAP_RADIUS_MULTIPLIER * smallestObjectSize
	local conecapHeight = LINE_CONECAP_HEIGHT_MULTIPLIER * smallestObjectSize
	local conecapOffset = LINE_CONECAP_OFFSET_MULTIPLIER * smallestObjectSize
	local offsetCFrame = CFrame.new(0, 0, segmentLength * 0.5 + conecapHeight - conecapOffset)
	displayElements.Cone1 = Roact.createElement("ConeHandleAdornment", {
		Adornee = Workspace.Terrain,
		Height = conecapHeight,
		Radius = conecapRadius,
		Color3 = PREVIEW_COLOR,
		ZIndex = 1,
		CFrame = lineCFrame * offsetCFrame,
	})
	displayElements.Cone2 = Roact.createElement("ConeHandleAdornment", {
		Adornee = Workspace.Terrain,
		Height = conecapHeight,
		Radius = conecapRadius,
		Color3 = PREVIEW_COLOR,
		ZIndex = 1,
		CFrame = lineCFrame * FLIPX * offsetCFrame,
	})
end

local function renderAlignToPlane(displayElements, boundingBoxCenter, boundingBoxSize, point, normal)
	local otherAxis = ONE - normal
	local offsetOfPoint = boundingBoxCenter:PointToObjectSpace(point)
	local offsetOfPlane = (offsetOfPoint) * (normal * Vector3.new(1.001, 1.001, 1.001))

	boundingBoxSize = (boundingBoxSize + EXTRA_PADDING_VECTOR) * otherAxis
	boundingBoxCenter = boundingBoxCenter * CFrame.new(offsetOfPlane)

	displayElements.Plane = Roact.createElement("BoxHandleAdornment", {
		Adornee = Workspace.Terrain,
		Size = boundingBoxSize,
		CFrame = boundingBoxCenter,
		Transparency = PREVIEW_TRANSPARENCY,
		Color3 = PREVIEW_COLOR,
		ZIndex = 0,
	})

	local axisA = rotateVector(normal)
	local axisB = rotateVector(axisA)
	for i = 1, 4 do
		local length = (axisB * boundingBoxSize).Magnitude
		local offset = 0.5 * (axisA * boundingBoxSize).Magnitude
		displayElements["Line"..i] = Roact.createElement("LineHandleAdornment", {
			Adornee = Workspace.Terrain,
			Length = length,
			CFrame = boundingBoxCenter * CFrame.fromMatrix(ZERO, axisA, normal) * CFrame.new(offset, 0, 0.5 * length),
			AlwaysOnTop = true,
			Thickness = 3,
			Color3 = PREVIEW_COLOR,
			ZIndex = 0,
		})
		axisA, axisB = axisB, -axisA
	end
end

local EDGE_NAMES = {
	"EdgeA", "EdgeB", "EdgeC", "EdgeD",
	"EdgeE", "EdgeF", "EdgeG", "EdgeH",
	"EdgeI", "EdgeJ", "EdgeK", "EdgeL",
}
local function renderBounds(displayElements, boundingBoxCenter, boundingBoxSize)
	for i, span in pairs(CUBE_EDGES) do
		local pointA = boundingBoxCenter:PointToWorldSpace(boundingBoxSize * span[1])
		local pointB = boundingBoxCenter:PointToWorldSpace(boundingBoxSize * span[2])
		displayElements[EDGE_NAMES[i]] = Roact.createElement("LineHandleAdornment", {
			Adornee = Workspace.Terrain,
			ZIndex = 0,
			Thickness = 1,
			Length = (pointB - pointA).Magnitude,
			CFrame = CFrame.lookAt(pointA, pointB),
			Color3 = PREVIEW_COLOR,
		})
	end
end

return function(objects, space, axes, mode, target)
	if #objects == 0 then
		return nil
	end

	local basisCFrame
	if space == AlignmentSpace.Local then
		basisCFrame = getDefaultBasisForObjects(target and {target} or objects)
	else
		basisCFrame = CFrame.new()
	end

	local boundingBoxOffset, boundingBoxSize, objectBoundingBoxes =
		BoundingBox.fromObjectsComputeAll(objects, basisCFrame)

	local targetCenter, targetSize
	if target then
		local targetBoundingBox = objectBoundingBoxes[target]
		targetCenter = basisCFrame:PointToWorldSpace(targetBoundingBox.offset)
		targetSize = basisCFrame:VectorToWorldSpace(targetBoundingBox.size)
	else
		targetCenter = basisCFrame:PointToWorldSpace(boundingBoxOffset)
		targetSize = basisCFrame:VectorToWorldSpace(boundingBoxSize)
	end

	local alignTargetPoint
	if mode == AlignmentMode.Min then
		alignTargetPoint = targetCenter - 0.5 * targetSize
	elseif mode == AlignmentMode.Max then
		alignTargetPoint = targetCenter + 0.5 * targetSize
	else -- mode == AlignmentMode.Center
		alignTargetPoint = targetCenter
	end

	local axisCount = getAxisCount(axes)
	local boundingBoxCenter = basisCFrame * CFrame.new(boundingBoxOffset)

	local displayElements = {}

	if axisCount == 3 then
		renderAlignToPoint(displayElements,
			boundingBoxCenter, boundingBoxSize,
			alignTargetPoint, getModifiedSize(getSmallestObjectSize(objectBoundingBoxes)))
	elseif axisCount == 2 then
		renderAlignToAxis(displayElements,
			boundingBoxCenter, boundingBoxSize,
			alignTargetPoint, getDirection(axes), getModifiedSize(getSmallestObjectSize(objectBoundingBoxes)))
	elseif axisCount == 1 then
		renderAlignToPlane(displayElements,
			boundingBoxCenter, boundingBoxSize,
			alignTargetPoint, getNormal(axes))
	end

	renderBounds(displayElements, boundingBoxCenter, boundingBoxSize)

	return Roact.createFragment(displayElements)
end