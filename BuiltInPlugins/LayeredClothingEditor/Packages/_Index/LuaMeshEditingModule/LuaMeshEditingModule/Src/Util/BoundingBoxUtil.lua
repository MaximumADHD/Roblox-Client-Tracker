local Util = script.Parent
local deepCopy = require(Util.deepCopy)

local BoundingBoxUtil = {}

local function isVectorArray(points)
	local _, firstPoint = next(points)
	return typeof(firstPoint) == "Vector3"
end

local function isPartArray(points)
	local _, firstPoint = next(points)
	if typeof(firstPoint) == "Instance" then
		return firstPoint:IsA("BasePart")
	end
	return false
end

local function isCFrameArray(points)
	local _, firstPoint = next(points)
	return typeof(firstPoint) == "CFrame"
end

local function isEmpty(points)
	if not points then
		return true
	end

	local _, item = next(points)
	if not item then
		return true
	end

	return false
end

local function createBasis(initialAxis, direction)
	local lookVector =  Vector3.new(0, 0, 1)
	local upVector = Vector3.new(0, 1, 0)
	local rightVector = Vector3.new(1, 0, 0)

	if direction == Enum.Axis.Z then
		lookVector = initialAxis
		upVector = if lookVector:FuzzyEq(upVector) then rightVector else upVector
		rightVector = upVector:Cross(lookVector)
		upVector = lookVector:Cross(rightVector)
	elseif direction == Enum.Axis.Y then
		upVector = initialAxis
		lookVector = if lookVector:FuzzyEq(upVector) then rightVector else lookVector
		rightVector = upVector:Cross(lookVector)
		lookVector = rightVector:Cross(upVector)
	else
		rightVector = initialAxis
		upVector = if rightVector:FuzzyEq(upVector) then lookVector else upVector
		lookVector = rightVector:Cross(upVector)
		upVector = lookVector:Cross(rightVector)
	end

	return CFrame.fromMatrix(Vector3.new(0, 0, 0), rightVector.Unit, upVector.Unit, lookVector.Unit)
end

local function getWeightedDirectionFromPoints(points, bounds)
	local center = bounds.Center
	local direction = bounds.Direction

	-- Split verts into two groups based on which side of the center they lie
	local positiveGroup = {}
	local negativeGroup = {}

	local isVector = isVectorArray(points)
	for _, point in ipairs(points) do
		local pos = if isVector then point else point.Position
		if direction == Enum.Axis.Z then
			if pos.Z >= center.Z then
				table.insert(positiveGroup, pos)
			else
				table.insert(negativeGroup, pos)
			end
		elseif direction == Enum.Axis.Y then
			if pos.Y >= center.Y then
				table.insert(positiveGroup, pos)
			else
				table.insert(negativeGroup, pos)
			end
		else
			if pos.X >= center.X then
				table.insert(positiveGroup, pos)
			else
				table.insert(negativeGroup, pos)
			end
		end
	end

	-- determine direction based on center of bounds of two groups of verts
	-- this isn't totally accurate but it's simple and close enough for our needs
	local boundsA = BoundingBoxUtil.getAxisAlignedBoundingBox(positiveGroup)
	local boundsB = BoundingBoxUtil.getAxisAlignedBoundingBox(negativeGroup)

	return (boundsA.Centroid - boundsB.Centroid).Unit
end

function BoundingBoxUtil.getWeightBalanceOrientedBoundingBox(points)
	if isEmpty(points) then
		error("Points was empty")
		return {}
	end

	local aabb = BoundingBoxUtil.getAxisAlignedBoundingBox(points)

	local orientedDirection = getOrientationFromPoints(points, aabb)
	local transform = createBasis(orientedDirection, aabb.Direction)

	local axisAlignedPoints = deepCopy(points)
	local isVector = isVectorArray(points)
	for index, point in pairs(axisAlignedPoints) do
		if isVector then
			axisAlignedPoints[index] = transform:inverse() * point
		else
			point.Position = transform:inverse() * point.Position
		end
	end

	-- start by making a new aabb that will now fit closer to the points
	local obb = BoundingBoxUtil.getAxisAlignedBoundingBox(axisAlignedPoints)

	obb.Center = transform * obb.Center
	obb.CFrame = transform + obb.Center
	obb.Direction = orientedDirection
	obb.Centroid = aabb.Centroid

	for zCornerKey, xCorners in pairs(obb.Top) do
		for xCornerKey, xCorner in pairs(xCorners) do
			obb.Top[zCornerKey][xCornerKey] = transform * xCorner
		end
	end

	for zCornerKey, xCorners in pairs(obb.Bottom) do
		for xCornerKey, xCorner in pairs(xCorners) do
			obb.Bottom[zCornerKey][xCornerKey] = transform * xCorner
		end
	end

	return obb
end

function BoundingBoxUtil.getAxisAlignedBoundingBox(points)
	if isEmpty(points) then
		error("Points was empty")
		return {}
	end

	assert(isVectorArray(points) or isPartArray(points) or isCFrameArray(points),
		"Array of points must be: BaseParts, Vector3's, or CFrames")

	local _, firstPoint = next(points)
	local isVector = isVectorArray(points)
	local minX = if isVector then firstPoint.X else firstPoint.Position.X
	local minY = if isVector then firstPoint.Y else firstPoint.Position.Y
	local minZ = if isVector then firstPoint.Z else firstPoint.Position.Z
	local maxX = minX
	local maxY = minY
	local maxZ = minZ

	local sum = Vector3.new(0, 0, 0)
	for _, point in ipairs(points) do
		local pt = if isVector then point else point.Position
		minX = math.min(pt.X, minX)
		maxX = math.max(pt.X, maxX)
		minY = math.min(pt.Y, minY)
		maxY = math.max(pt.Y, maxY)
		minZ = math.min(pt.Z, minZ)
		maxZ = math.max(pt.Z, maxZ)
		sum = sum + pt
	end
	local centroid = sum / #points

	local bounds = {
		Center = Vector3.new(maxX + minX, maxY + minY, maxZ + minZ) / 2,
		Centroid = centroid,
		Width = math.abs(maxX - minX),
		Height = math.abs(maxY - minY),
		Depth = math.abs(maxZ - minZ),
		Top = {
			Front = {
				Left = Vector3.new(minX, maxY, minZ),
				Right = Vector3.new(maxX, maxY, minZ),
			},
			Back = {
				Left = Vector3.new(minX, maxY, maxZ),
				Right = Vector3.new(maxX, maxY, maxZ),
			},
		},
		Bottom = {
			Front = {
				Left = Vector3.new(minX, minY, minZ),
				Right = Vector3.new(maxX, minY, minZ),
			},
			Back = {
				Left = Vector3.new(minX, minY, maxZ),
				Right = Vector3.new(maxX, minY, maxZ),
			},
		},
	}

	if bounds.Width >= bounds.Height and bounds.Width >= bounds.Depth then
		bounds.Direction = Enum.Axis.X
	elseif bounds.Height >= bounds.Width and bounds.Height >= bounds.Depth then
		bounds.Direction = Enum.Axis.Y
	else
		bounds.Direction = Enum.Axis.Z
	end

	bounds.CFrame = CFrame.new(bounds.Center)

	return bounds
end

return BoundingBoxUtil