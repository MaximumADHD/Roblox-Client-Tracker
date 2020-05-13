local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")

local Lib = script.Parent.Parent
local Math = require(Lib.Utility.Math)
local getGeometry = require(Lib.Utility.getGeometry)

local getFFlagFuzzyTerrainNormal = require(Lib.Flags.getFFlagFuzzyTerrainNormal)

local PrimaryDirections = {
	Vector3.new(1, 0, 0),
	Vector3.new(-1, 0, 0),
	Vector3.new(0, 1, 0),
	Vector3.new(0, -1, 0),
	Vector3.new(0, 0, 1),
	Vector3.new(0, 0, -1)
}

local DragTargetType = {
	Terrain = "Terrain",
	Polygon = "Polygon",
	Round = "Round",
	Nothing = "Nothing",
}

--[[
	If true, then "Rotate" will mean:
		Rotate around whatever axis of the drag target is closest to the
		camera's current up direction.
	If false, then "Rotate" always mean:
		Rotate around the normal of the surface we're dragging onto.
]]
local ROTATE_DEPENDS_ON_CAMERA = false

local DragHelper = {}

function DragHelper.snapVectorToPrimaryDirection(direction)
	local largestDot = -math.huge
	local closestDirection
	for _, target in ipairs(PrimaryDirections) do
		local dot = direction:Dot(target)
		if dot > largestDot then
			largestDot = dot
			closestDirection = target
		end
	end
	return closestDirection
end

function DragHelper.getSurfaceMatrix(selection, lastSurfaceMatrix)
	-- Find the hit part and where the hit is
	local mouseAt = UserInputService:GetMouseLocation()
	local unitRay = Workspace.CurrentCamera:ViewportPointToRay(mouseAt.X, mouseAt.Y)
	local ray = Ray.new(unitRay.Origin, unitRay.Direction * 10000)
	local part, mouseWorld, normal = Workspace:FindPartOnRayWithIgnoreList(ray, selection)
	if part and part:IsA("Terrain") then
		-- Special case for terrain, since we can't get geometry for it
		local upVector = Vector3.new(0, 1, 0)
		if getFFlagFuzzyTerrainNormal() then
			if normal:FuzzyEq(upVector) then
				upVector = Vector3.new(1, 0, 0)
			end
		else
			if normal == upVector then
				upVector = Vector3.new(1, 0, 0)
			end
		end
		local xVector = upVector:Cross(normal).Unit
		return CFrame.fromMatrix(mouseWorld, -xVector, normal), mouseWorld, DragTargetType.Terrain
	elseif part then
		-- Find the normal and secondary axis (the direction the studs / UV
		-- coords are oriented in) of the surface that we're dragging onto.
		-- Also find the closest "basis" point on the face to the mouse,
		local geom = getGeometry(part, mouseWorld)
		local closestFace = nil
		local closestDist = math.huge
		for _, face in ipairs(geom.faces) do
			local dist = math.abs((mouseWorld - face.point):Dot(face.normal))
			if dist < closestDist then
				closestFace = face
				closestDist = dist
			end
		end
		local normal = closestFace.normal
		local secondary;
		local closestEdgeDist = math.huge
		for _, edge in ipairs(geom.edges) do
			if (edge.a - closestFace.point):Dot(normal) < 0.001 and
				(edge.b - closestFace.point):Dot(normal) < 0.001
			then
				-- Both ends of the edge are part of the selected face,
				-- consider it
				local distAlongEdge = (mouseWorld - edge.a):Dot(edge.direction)
				local pointOnEdge = edge.a + edge.direction * distAlongEdge
				local distToEdge = (mouseWorld - pointOnEdge).Magnitude
				if distToEdge < closestEdgeDist then
					closestEdgeDist = distToEdge
					secondary = edge.direction
				end
			end
		end
		local targetBasisPoint
		local closestBasisDist = math.huge
		for _, vert in ipairs(closestFace.vertices) do
			local dist = (vert - mouseWorld).Magnitude
			if dist < closestBasisDist then
				closestBasisDist = dist
				targetBasisPoint = vert
			end
		end

		local dragTargetType = DragTargetType.Polygon

		-- TODO: Deal with round things better (this is the case that gets hit
		-- with round things like cylinders and spheres)
		if not secondary then
			dragTargetType = DragTargetType.Round
			secondary = normal:Cross(Vector3.new(1, 1, 1)).Unit
		end
		if not targetBasisPoint then
			targetBasisPoint = mouseWorld
		end
		--print("Normal:", normal, "Sec:", secondary, "Basis:", targetBasisPoint)

		-- Find the total transform from the target point on the dragged to
		-- surface to our original CFrame
		return CFrame.fromMatrix(targetBasisPoint, -secondary:Cross(normal), normal), mouseWorld, dragTargetType
	elseif lastSurfaceMatrix then
		-- Use the last target mat, and the intersection of the mouse ray with
		-- that plane that target mat defined as the drag point.
		local t = Math.intersectRayPlane(
			ray.Origin, ray.Direction,
			lastSurfaceMatrix.Position, lastSurfaceMatrix.UpVector)
		mouseWorld = ray.Origin + ray.Direction * t
		return lastSurfaceMatrix, mouseWorld, DragTargetType.Nothing
	else
		-- No previous target or current target, can't drag
		return nil
	end
end

--[[
	Update the tiltRotate by rotating 90 degrees around an axis. Axis is the
	axis in camera space over which the rotation should happen.
]]
function DragHelper.updateTiltRotate(selection, mainCFrame, lastTargetMat, tiltRotate, axis)
	-- Find targetMatrix and dragInTargetSpace in the same way as
	-- in DragHelper.getDragTarget, see that function for further explanation.
	local targetMatrix, _, dragTargetType =
		DragHelper.getSurfaceMatrix(selection, lastTargetMat)
	if not targetMatrix then
		return tiltRotate
	end
	local dragInTargetSpace = targetMatrix:Inverse() * mainCFrame
	local rightVector = DragHelper.snapVectorToPrimaryDirection(dragInTargetSpace.RightVector)
	local upVector = DragHelper.snapVectorToPrimaryDirection(dragInTargetSpace.UpVector)
	dragInTargetSpace = CFrame.fromMatrix(Vector3.new(), rightVector, upVector)

	-- Current global rotation when dragging is given by:
	--   (targetMatrix * dragInTargetSpace * tiltRotate)
	--
	-- So we need to find the local axis of:
	--   (targetMatrix * dragInTargetSpace)
	--
	-- Which is the closest to Camera.RightVector. Then we can construct
	-- the additional `rotation` to add to tiltRotate around that axis:
	--   (targetMatrix * dragInTargetSpace * (rotation * tiltRotate))
	local baseMatrix = targetMatrix * dragInTargetSpace
	local targetDirection
	if not ROTATE_DEPENDS_ON_CAMERA and axis == Vector3.new(0, 1, 0) then
		-- This will end up rotating around the normal of the target surface
		targetDirection = targetMatrix.UpVector
	else
		local camera = Workspace.CurrentCamera.CFrame
		targetDirection = camera:VectorToWorldSpace(axis)
	end

	-- Greater dot product = smaller angle, so the closest direction is
	-- the one with the greatest dot product.
	local closestAxis
	local closestDelta = -math.huge
	for _, direction in ipairs(PrimaryDirections) do
		local delta = baseMatrix:VectorToWorldSpace(direction):Dot(targetDirection)
		if delta > closestDelta then
			closestAxis = direction
			closestDelta = delta
		end
	end

	local rotation = CFrame.fromAxisAngle(closestAxis, math.pi / 2)
	return rotation * tiltRotate, dragTargetType
end

local function snap(value)
	return math.floor(value / StudioService.GridSize + 0.5) * StudioService.GridSize
end

function DragHelper.getDragTarget(dragInMainSpace, selection, mainCFrame, basisPoint, boundingBoxSize, boundingBoxOffset, tiltRotate, lastTargetMat)
	if not dragInMainSpace then
		return
	end

	local targetMatrix, mouseWorld, dragTargetType =
		DragHelper.getSurfaceMatrix(selection, lastTargetMat)
	if not targetMatrix then
		return
	end

	local dragInTargetSpace = targetMatrix:Inverse() * mainCFrame

	-- Now we want to "snap" the rotation of this transformation to 90degree
	-- increments, such that the dragInTargetSpace is only some combination of
	-- the primary direction vectors.
	local rightVector = DragHelper.snapVectorToPrimaryDirection(dragInTargetSpace.RightVector)
	local upVector = DragHelper.snapVectorToPrimaryDirection(dragInTargetSpace.UpVector)
	dragInTargetSpace = CFrame.fromMatrix(Vector3.new(), rightVector, upVector)

	-- Now we want to "snap" the basisPoint to be on-Grid in the main space
	-- the basisPoint is already in the main space, so we can just snap it to
	-- grid and see what offset it moved by. We will need to use a bounding box
	-- modified by that offset for the purposes of bumping, and also shift the
	-- parts by that much when we finally apply them. That is equivalent to
	-- applying the offset as a final factor in the transform this function
	-- returns.
	local offsetX = snap(basisPoint.X) - basisPoint.X
	local offsetY = snap(basisPoint.Y) - basisPoint.Y
	local offsetZ = snap(basisPoint.Z) - basisPoint.Z
	local contentOffset = Vector3.new(offsetX, offsetY, offsetZ)
	local contentOffsetCF = CFrame.new(contentOffset)
	local snappedBoundingBoxOffset = boundingBoxOffset + contentOffset

	-- Figure out how much we have to "bump up" the selection to have its
	-- bounding box sit on top of the plane we're dragging onto.
	local sizeInTargetSpace = (dragInTargetSpace * tiltRotate):VectorToWorldSpace(boundingBoxSize)
	local offsetInTargetSpace = (dragInTargetSpace * tiltRotate):VectorToWorldSpace(snappedBoundingBoxOffset)
	local normalBumpNeeded = (0.5 * math.abs(sizeInTargetSpace.Y)) - offsetInTargetSpace.Y
	local normalBumpCF = CFrame.new(0, normalBumpNeeded, 0)

	-- Now we have to figure out the offset of the point we started the drag
	-- with from the mainCFrame, and apply that same offset from the point we
	-- dragged to on the new plane, to get a total offset which we should apply
	-- the increment snapping to in the target space.
	local mouseInMainSpace = dragInMainSpace
	local mouseInMainSpaceCF = CFrame.new(mouseInMainSpace)

	-- New mouse position is defined by:
	-- targetMatrix * snapAdjust * normalBump * dragInTargetSpace * tiltRotate * mouseInMainSpace * contentOffset = mouseWorld
	-- So we want to isolate snapAdjust to snap it's X and Z components
	local mouseWorldCF = (targetMatrix - targetMatrix.Position) * dragInTargetSpace * tiltRotate + mouseWorld
	local snapAdjust =
		targetMatrix:Inverse() *
		mouseWorldCF *
		(normalBumpCF * dragInTargetSpace * tiltRotate * mouseInMainSpaceCF * contentOffsetCF):inverse()

	-- Now that the snapping space is isolated we can apply the snap
	local snapAdjustCF = CFrame.new(snap(snapAdjust.X), 0, snap(snapAdjust.Z))

	-- Get the final CFrame to move the parts to.
	local rotatedBase =
		targetMatrix * snapAdjustCF * normalBumpCF *
		dragInTargetSpace * tiltRotate * contentOffsetCF

	-- Note: Snap point is the visual point that was snapped-to in world space
	-- if we want to display that at some point.
	local snapPoint = (targetMatrix * snapAdjustCF).Position

	return {
		mainCFrame = rotatedBase,
		snapPoint = snapPoint,
		targetMatrix = targetMatrix,
		dragTargetType = dragTargetType,
	}
end

return DragHelper
