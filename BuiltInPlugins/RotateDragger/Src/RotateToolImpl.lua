--[[
	Rotate tool implementation. Responsible for handle state and handle views.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Workspace = game:GetService("Workspace")

-- Libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local DraggerFramework = Plugin.Packages.DraggerFramework
local AttachmentMover = require(DraggerFramework.Utility.AttachmentMover)
local Colors = require(DraggerFramework.Utility.Colors)
local Math = require(DraggerFramework.Utility.Math)
local PartMover = require(DraggerFramework.Utility.PartMover)
local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)
local getBoundingBoxScale = require(DraggerFramework.Utility.getBoundingBoxScale)

local RotateHandleView = require(Plugin.Src.RotateHandleView)

local getFFlagRotationTicks = require(DraggerFramework.Flags.getFFlagRotationTicks)

-- The difference from exactly touching to try to bring the parts within when
-- dragging parts into a colliding condition with Collisions enabled.
local ROTATE_COLLISION_THRESHOLD = 0.0001

-- The minimum rotate increment to display snapping increments for (below this
-- increment there are so many points that they become visual noise)
local MIN_ROTATE_INCREMENT = 5.0

local RIGHT_ANGLE = math.pi / 2
local RIGHT_ANGLE_EXACT_THRESHOLD = 0.001

local RotateToolImpl = {}
RotateToolImpl.__index = RotateToolImpl

--[[
	Axis of rotation is the CFrame right vector.
	RadiusOffset slightly bumps the arc radii so that we can control which one
	shows up on top where they intersect.
]]
local RotateHandleDefinitions = {
	XAxis = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
		RadiusOffset = 0.00,
	},
	YAxis = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
		RadiusOffset = 0.01,
	},
	ZAxis = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0)),
		Color = Colors.Z_AXIS,
		RadiusOffset = 0.02,
	},
}

local function isRightAngle(angleDelta)
	local snappedTo90 = math.floor((angleDelta / RIGHT_ANGLE) + 0.5) * RIGHT_ANGLE
	return math.abs(snappedTo90 - angleDelta) < RIGHT_ANGLE_EXACT_THRESHOLD
end

local function getRotationTransform(mainCFrame, axisVector, delta, rotateIncrement)
	local localAxis = mainCFrame:VectorToObjectSpace(axisVector)
	local rotationCFrame = CFrame.fromAxisAngle(localAxis, delta)

	-- Special case rotations in 90 degree increments as a permutation of
	-- the identity matrix rather than numerically calculating an axis
	-- rotation which would introduce floating point error.
	if rotateIncrement > 0 and isRightAngle(delta) then
		-- Since we know that this is already almost a right angle rotation
		-- thanks to the isRightAngle check, we can find the pure
		-- permutation rotation matrix simply by rounding the rotation
		-- matrix elements to the nearest integer.
		local _, _, _,
			r0, r1, r2,
			r3, r4, r5,
			r6, r7, r8 = rotationCFrame:components()
		rotationCFrame = CFrame.new(0, 0, 0,
			math.floor(r0 + 0.5), math.floor(r1 + 0.5), math.floor(r2 + 0.5),
			math.floor(r3 + 0.5), math.floor(r4 + 0.5), math.floor(r5 + 0.5),
			math.floor(r6 + 0.5), math.floor(r7 + 0.5), math.floor(r8 + 0.5))
	end

	-- Convert the rotation to a global space transformation
	return mainCFrame * rotationCFrame * mainCFrame:Inverse()
end

--[[
	Find the angle around the rotation axis where the mouse ray intersects the
	plane perpendicular to the rotation axis.
]]
local function rotationAngleFromRay(cframe, unitRay)
	local t = Math.intersectRayPlane(unitRay.Origin, unitRay.Direction, cframe.Position, cframe.RightVector)
	if t >= 0 then
		local mouseWorld = unitRay.Origin + unitRay.Direction * t
		local direction = (mouseWorld - cframe.Position).Unit
		local rx = cframe.LookVector:Dot(direction)
		local ry = cframe.UpVector:Dot(direction)
		if getFFlagRotationTicks() then
			-- Remap into [0, 2pi] for better snapping behavior with not
			-- evenly divisible snapping angles.
			local theta = math.atan2(ry, rx)
			if theta < 0 then
				return 2 * math.pi + theta
			else
				return theta
			end
		else
			return math.atan2(ry, rx)
		end
	end
	return nil
end

local function snapToRotateIncrementIfNeeded(angle, rotateIncrement)
	if rotateIncrement > 0 then
		local angleIncrement = math.rad(rotateIncrement)
		if getFFlagRotationTicks() then
			local snappedAngle = math.floor(angle / angleIncrement + 0.5) * angleIncrement
			local deltaFromCompleteRotation = math.abs(angle - math.pi * 2)
			local deltaFromSnapPoint = math.abs(angle - snappedAngle)
			if deltaFromCompleteRotation < deltaFromSnapPoint then
				-- For rotate increments which don't evenly divide the
				-- circle, there won't be a snap point at 360 degrees, so
				-- this if statement manually adds a special case for that
				-- additional snap point.
				return 0
			else
				return snappedAngle
			end
		else
			return math.floor(angle / angleIncrement) * angleIncrement
		end
	else
		return angle
	end
end

function RotateToolImpl.new(draggerContext)
	local self = {}
	self._draggerContext = draggerContext
	self._handles = {}
	self._partMover = PartMover.new()
	self._attachmentMover = AttachmentMover.new()
	return setmetatable(self, RotateToolImpl)
end

function RotateToolImpl:update(draggerToolState, derivedWorldState)
	if not self._draggingHandleId then
		local cframe, offset, size = derivedWorldState:getBoundingBox()
		self._boundingBox = {
			Size = size,
			CFrame = cframe * CFrame.new(offset),
		}

		self._partsToMove, self._attachmentsToMove =
			derivedWorldState:getObjectsToTransform()
		self._originalCFrameMap = derivedWorldState:getOriginalCFrameMap()

		self._scale = self._draggerContext:getHandleScale(self._boundingBox.CFrame.Position)
	end
	self:_updateHandles()
end

function RotateToolImpl:hitTest(mouseRay, handleScale)
	local closestHandleId, closestHandleDistance = nil, math.huge
	for handleId, handleProps in pairs(self._handles) do
		handleProps.Scale = self._scale
		local distance = RotateHandleView.hitTest(handleProps, mouseRay)
		if distance and distance < closestHandleDistance then
			closestHandleDistance = distance
			closestHandleId = handleId
		end
	end
	-- Return 0 distance to have the handles hittest as always on top of parts
	return closestHandleId, 0
end

function RotateToolImpl:render(hoveredHandleId)
	-- The scale tool's handles show on top when hovered, but that behavior
	-- doesn't feel as good for the move / rotate tools, so disable it.
	local forceHoveredHandlesOnTop = false
	if Workspace:FindFirstChild("RotateHandleHoveredOnTop") then
		forceHoveredHandlesOnTop = Workspace.MoveHandleHoveredOnTop.Value
	end

	local children = {}

	local tickAngle
	if getFFlagRotationTicks() then
		local increment = self._draggerContext:getRotateIncrement()
		if increment >= MIN_ROTATE_INCREMENT then
			tickAngle = math.rad(increment)
		end
	end

	if self._draggingHandleId and self._handles[self._draggingHandleId] then
		local handleProps = self._handles[self._draggingHandleId]
		if getFFlagRotationTicks() then
			children[self._draggingHandleId] = Roact.createElement(RotateHandleView, {
				HandleCFrame = handleProps.HandleCFrame,
				Color = handleProps.Color,
				StartAngle = self._startAngle - self._draggingLastGoodDelta,
				EndAngle = self._startAngle,
				Scale = self._scale,
				Hovered = false,
				RadiusOffset = handleProps.RadiusOffset,
				TickAngle = tickAngle,
			})
		else
			children[self._draggingHandleId] = Roact.createElement(RotateHandleView, {
				HandleCFrame = handleProps.HandleCFrame,
				Color = handleProps.Color,
				StartAngle = self._startAngle - self._draggingLastGoodDelta,
				EndAngle = self._startAngle,
				Scale = self._scale,
				Hovered = false,
				RadiusOffset = handleProps.RadiusOffset,
			})
		end

		-- Show the other handles, but thinner
		for handleId, otherHandleProps in pairs(self._handles) do
			if handleId ~= self._draggingHandleId then
				local offset = RotateHandleDefinitions[handleId].Offset
				children[handleId] = Roact.createElement(RotateHandleView, {
					HandleCFrame = self._boundingBox.CFrame * offset,
					Color = Colors.makeDimmed(otherHandleProps.Color),
					Scale = self._scale,
					Thin = true,
					RadiusOffset = handleProps.RadiusOffset,
				})
			end
		end

		if self._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			local scale = getBoundingBoxScale(self._draggerContext, self._boundingBox.CFrame, self._boundingBox.Size)
			children.JointDisplay = self._jointPairs:renderJoints(scale)
		end
	else
		for handleId, handleProps in pairs(self._handles) do
			if getFFlagRotationTicks() then
				local color = handleProps.Color
				local hovered = (handleId == hoveredHandleId)
				local tickAngleToUse
				if hovered then
					tickAngleToUse = tickAngle
				else
					color = Colors.makeDimmed(color)
				end
				children[handleId] = Roact.createElement(RotateHandleView, {
					HandleCFrame = handleProps.HandleCFrame,
					Color = color,
					Scale = self._scale,
					Hovered = hovered,
					RadiusOffset = handleProps.RadiusOffset,
					TickAngle = tickAngleToUse,
				})
			else
				local color = handleProps.Color
				local hovered = (handleId == hoveredHandleId)
				if not hovered then
					color = Colors.makeDimmed(color)
				end
				children[handleId] = Roact.createElement(RotateHandleView, {
					HandleCFrame = handleProps.HandleCFrame,
					Color = color,
					Scale = self._scale,
					Hovered = hovered,
					RadiusOffset = handleProps.RadiusOffset,
				})
			end
		end
	end

	if #self._partsToMove > 1 then
		children.SelectionBoundingBox = Roact.createElement(StandaloneSelectionBox, {
			CFrame = self._boundingBox.CFrame,
			Size = self._boundingBox.Size,
			Color = self._draggerContext:getSelectionBoxColor(),
			LineThickness = self._draggerContext:getHoverLineThickness(),
			Container = self._draggerContext:getGuiParent(),
		})
	end

	return Roact.createFragment(children)
end

function RotateToolImpl:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId
	self._draggingLastGoodDelta = 0
	self._originalBoundingBoxCFrame = self._boundingBox.CFrame

	if self._handles[handleId] then
		self:_setupRotateAtCurrentBoundingBox(mouseRay)

		local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
		if not angle then
			return
		end

		self._startAngle = snapToRotateIncrementIfNeeded(angle, self._draggerContext:getRotateIncrement())

		local breakJoints = not self._draggerContext:areConstraintsEnabled()
		local center = self._boundingBox.CFrame.Position
		self._partMover:setDragged(self._partsToMove, self._originalCFrameMap, breakJoints, center)
		self._attachmentMover:setDragged(self._attachmentsToMove)
	end
end

function RotateToolImpl:mouseDrag(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
	if not angle then
		return
	end

	if not self._handles[self._draggingHandleId] then
		return
	end

	local snappedDelta =
		snapToRotateIncrementIfNeeded(angle, self._draggerContext:getRotateIncrement()) - self._startAngle

	local appliedGlobalTransform
	if self._draggerContext:areConstraintsEnabled() and #self._partsToMove > 0 then
		appliedGlobalTransform = self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
	else
		appliedGlobalTransform = self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
	end
	if appliedGlobalTransform then
		if self._draggerContext:shouldJoinSurfaces() then
			self._jointPairs = self._partMover:computeJointPairs(appliedGlobalTransform)
		end
	end
end

function RotateToolImpl:_setupRotateAtCurrentBoundingBox(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	local offset = RotateHandleDefinitions[self._draggingHandleId].Offset
	self._handleCFrame = self._boundingBox.CFrame * offset
end

--[[
	For direct dragging, rotate as a delta from the start angle determined at
	mouse down to reduce floating point error.
]]
function RotateToolImpl:_mouseDragWithGeometricMovement(mouseRay, delta)
	if delta == self._draggingLastGoodDelta then
		return nil
	end

	local candidateGlobalTransform = getRotationTransform(
		self._originalBoundingBoxCFrame,
		self._handleCFrame.RightVector,
		delta,
		self._draggerContext:getRotateIncrement())
	self._partMover:transformTo(candidateGlobalTransform)

	if self._draggerContext:areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
		self._draggingLastGoodDelta = self:_findAndRotateToGoodDelta(delta)
	else
		self._draggingLastGoodDelta = delta
	end

	local appliedGlobalTransform = getRotationTransform(
		self._originalBoundingBoxCFrame,
		self._handleCFrame.RightVector,
		self._draggingLastGoodDelta,
		self._draggerContext:getRotateIncrement())
	self._attachmentMover:transformTo(appliedGlobalTransform)
	self._boundingBox.CFrame = appliedGlobalTransform * self._originalBoundingBoxCFrame

	return appliedGlobalTransform
end

--[[
	For inverse kinematics dragging, adjust handle for translation caused by
	the IK solver, and compute the amount of rotation applied from the resulting
	transformation, so that the RotateHandleView can show the correct angle.
]]
function RotateToolImpl:_mouseDragWithInverseKinematics(mouseRay, delta)
	if delta == 0 then
		return nil
	end

	local collisionsMode = self._draggerContext:areCollisionsEnabled() and
		Enum.IKCollisionsMode.OtherMechanismsAnchored or
		Enum.IKCollisionsMode.NoCollisions

	local candidateTransform = getRotationTransform(
		self._boundingBox.CFrame,
		self._handleCFrame.RightVector,
		delta,
		self._draggerContext:getRotateIncrement())
	local appliedTransform = self._partMover:rotateToWithIk(candidateTransform, collisionsMode)

	self._attachmentMover:transformTo(appliedTransform)

	-- Adjust the bounding box for any translation caused by the IK solver.
	self._boundingBox.CFrame = appliedTransform * self._originalBoundingBoxCFrame

	-- Derive the last good delta from the appliedTransform returned from IK.
	local rotatedAxis = appliedTransform:VectorToObjectSpace(self._handleCFrame.LookVector)
	local ry = self._handleCFrame.UpVector:Dot(rotatedAxis)
	local rx = self._handleCFrame.LookVector:Dot(rotatedAxis)
	self._draggingLastGoodDelta = -math.atan2(ry, rx)

	return appliedTransform
end

function RotateToolImpl:mouseUp(mouseRay)
	if self._handles[self._draggingHandleId] then
		self._draggingLastGoodDelta = 0
		self._startAngle = nil
		self._originalBoundingBoxCFrame = nil
		if self._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			self._jointPairs:createJoints()
		end
		self._jointPairs = nil
		self._partMover:commit()
		self._attachmentMover:commit()
	end

	self._draggingHandleId = nil

	ChangeHistoryService:SetWaypoint("Rotate Parts")
end

--[[
	Resolve collisions via a binary search between the last good rotation delta


	Assume that the last good delta is free of collions, the desired delta is blocked,
	and there exists an angle between the two where it switches from blocked to free.

	Return the good delta that we moved the parts to.
]]
function RotateToolImpl:_findAndRotateToGoodDelta(desiredDelta)
	local start = self._draggingLastGoodDelta
	local goal = desiredDelta
	local isIntersecting = true

	while math.abs(goal - start) > ROTATE_COLLISION_THRESHOLD do
		local mid = (goal + start) / 2
		local candidateTransform = getRotationTransform(
			self._boundingBox.CFrame,
			self._handleCFrame.RightVector,
			mid,
			self._draggerContext:getRotateIncrement())
		self._partMover:transformTo(candidateTransform)

		isIntersecting = self._partMover:isIntersectingOthers()
		if isIntersecting then
			goal = mid
		else
			start = mid
		end
	end

	-- Special case to not let us move very slightly and then stop. If we allow
	-- that then a rotate which collides almost right away will produce no
	-- visible changes but introduce floating point error.
	-- The 2x is not a random fudge factor, it is precisely chosen: `goal` and
	-- `start` always bound the true collision point. After the loop, they are
	-- guaranteed to be within the threshold of eachother. We want to test
	-- whether the the move is within the threshold of zero. That means, at the
	-- very worst, the true collision point is at +threshold, and the loop
	-- exited at +threshold of the collision point, for a total of 2x threshold
	-- away from zero.
	if math.abs(start) < ROTATE_COLLISION_THRESHOLD * 2 then
		start = 0
		isIntersecting = true
	end

	-- Have to make sure that we end on a non-intersection. The invariant is
	-- that start is the best safe position we've found, so we can move it.
	if isIntersecting then
		local transform = getRotationTransform(
			self._boundingBox.CFrame,
			self._handleCFrame.RightVector,
			start,
			self._draggerContext:getRotateIncrement())
		self._partMover:transformTo(transform)
	end

	-- Either we ended the loop on an intersection, and the above code moved us
	-- to start, or we ended on a non-intersect, in which case start is an
	-- up to date representation of the mid we last moved the parts to.
	return start
end

function RotateToolImpl:_updateHandles()
	if not self._partsToMove then
		return
	end

	if #self._partsToMove == 0 and #self._attachmentsToMove == 0 then
		self._handles = {}
	else
		for handleId, handleDefinition in pairs(RotateHandleDefinitions) do
			self._handles[handleId] = {
				HandleCFrame = self._boundingBox.CFrame * handleDefinition.Offset,
				Color = handleDefinition.Color,
				RadiusOffset = handleDefinition.RadiusOffset,
			}
		end
	end
end

return RotateToolImpl
