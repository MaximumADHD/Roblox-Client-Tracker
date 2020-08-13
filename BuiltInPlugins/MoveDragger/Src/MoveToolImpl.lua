
local Workspace = game:GetService("Workspace")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

local Math = require(DraggerFramework.Utility.Math)
local PartMover = require(DraggerFramework.Utility.PartMover)
local AttachmentMover = require(DraggerFramework.Utility.AttachmentMover)
local Colors = require(DraggerFramework.Utility.Colors)
local getBoundingBoxScale = require(DraggerFramework.Utility.getBoundingBoxScale)

local MoveHandleView = require(Plugin.Src.MoveHandleView)

local getFFlagSmoothAttachmentMovement = require(DraggerFramework.Flags.getFFlagSmoothAttachmentMovement)
local getFFlagScaleDraggerPartBias = require(DraggerFramework.Flags.getFFlagScaleDraggerPartBias)

local ALWAYS_ON_TOP = true

-- The difference from exactly touching to try to bring the parts within when
-- dragging parts into a colliding condition with Collisions enabled.
local TRANSLATE_COLLISION_THRESHOLD = 0.0001

local MoveToolImpl = {}
MoveToolImpl.__index = MoveToolImpl

local MoveHandleDefinitions = {
	MinusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)),
		Color = Colors.Z_AXIS,
	},
	PlusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, -1, 0)),
		Color = Colors.Z_AXIS,
	},
	MinusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	PlusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(-1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	MinusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	PlusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, -1)),
		Color = Colors.X_AXIS,
	},
}

local function snapToGridSize(distance, gridSize)
	return math.floor(distance / gridSize + 0.5) * gridSize
end

function MoveToolImpl.new(draggerContext)
	local self = {}
	self._handles = {}
	self._partMover = PartMover.new()
	self._attachmentMover = AttachmentMover.new()
	self._draggerContext = draggerContext
	return setmetatable(self, MoveToolImpl)
end

function MoveToolImpl:update(draggerToolState, derivedWorldState)
	if not self._draggingHandleId then
		-- Don't clobber these fields while we're dragging because we're
		-- updating the bounding box in a smart way given how we're moving the
		-- parts.
		local cframe, offset, size = derivedWorldState:getBoundingBox()
		self._boundingBox = {
			Size = size,
			CFrame = cframe * CFrame.new(offset),
		}
		self._partsToMove, self._attachmentsToMove =
			derivedWorldState:getObjectsToTransform()
		self._originalCFrameMap = derivedWorldState:getOriginalCFrameMap()
	end
	self:_updateHandles()
end

if getFFlagScaleDraggerPartBias() then
	function MoveToolImpl:shouldBiasTowardsObjects()
		return false
	end
end

function MoveToolImpl:hitTest(mouseRay, ignoreExtraThreshold)
	local closestHandleId, closestHandleDistance = nil, math.huge
	for handleId, handleProps in pairs(self._handles) do
		local distance = MoveHandleView.hitTest(handleProps, mouseRay)
		if distance and distance <= closestHandleDistance then
			-- The EQUAL in the condition is here to make sure that the last
			-- "always on top" element (which is the one that will be drawn
			-- topmost and be visible) is the one that gets hit, since all
			-- "always on top" elements return 0 for the hit distance.
			closestHandleDistance = distance
			closestHandleId = handleId
		end
	end
	if ALWAYS_ON_TOP then
		return closestHandleId, 0
	else
		return closestHandleId, closestHandleDistance
	end
end

function MoveToolImpl:render(hoveredHandleId)
	-- The scale tool's handles show on top when hovered, but that behavior
	-- doesn't feel as good for the move / rotate tools, so disable it.
	local forceHoveredHandlesOnTop = false
	if Workspace:FindFirstChild("MoveHandleHoveredOnTop") then
		forceHoveredHandlesOnTop = Workspace.MoveHandleHoveredOnTop.Value
	end

	local children = {}

	if self._draggingHandleId and self._handles[self._draggingHandleId] then
		local handleProps = self._handles[self._draggingHandleId]
		children[self._draggingHandleId] = Roact.createElement(MoveHandleView, {
			Axis = handleProps.Axis,
			AxisOffset = handleProps.AxisOffset,
			Color = handleProps.Color,
			Scale = handleProps.Scale,
			AlwaysOnTop = ALWAYS_ON_TOP,
			Hovered = forceHoveredHandlesOnTop and true,
		})
		for otherHandleId, otherHandleProps in pairs(self._handles) do
			if otherHandleId ~= self._draggingHandleId then
				children[otherHandleId] = Roact.createElement(MoveHandleView, {
					Axis = otherHandleProps.Axis,
					AxisOffset = otherHandleProps.AxisOffset,
					Color = Colors.makeDimmed(otherHandleProps.Color),
					Scale = otherHandleProps.Scale,
					AlwaysOnTop = ALWAYS_ON_TOP,
					Thin = true,
				})
			end
		end
		if self._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			local scale = getBoundingBoxScale(self._draggerContext, self._boundingBox.CFrame, self._boundingBox.Size)
			children.JointDisplay = self._jointPairs:renderJoints(scale)
		end
	else
		for handleId, handleProps in pairs(self._handles) do
			local color = handleProps.Color
			local hovered = (handleId == hoveredHandleId)
			if not hovered then
				color = Colors.makeDimmed(color)
			end
			children[handleId] = Roact.createElement(MoveHandleView, {
				Axis = handleProps.Axis,
				AxisOffset = handleProps.AxisOffset,
				Color = color,
				Scale = handleProps.Scale,
				AlwaysOnTop = ALWAYS_ON_TOP,
				Hovered = hovered,
			})
		end
	end

	return Roact.createFragment(children)
end

function MoveToolImpl:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId
	self._draggingLastGoodGeometricDelta = 0
	self._draggingOriginalBoundingBoxCFrame = self._boundingBox.CFrame

	local breakJoints = not self:_shouldSolveConstraints()
	self._partMover:setDragged(self._partsToMove,
		self._originalCFrameMap,
		breakJoints,
		self._boundingBox.CFrame.Position)
	self._attachmentMover:setDragged(
		self._attachmentsToMove)

	-- Calculate fraction of the way along the handle to "stick" the cursor to
	if self._handles[handleId] then
		self:_setupMoveAtCurrentBoundingBox(mouseRay)

		local handleProps = self._handles[handleId]
		local handleOffset, handleLength =
			MoveHandleView.getHandleDimensionForScale(handleProps.Scale)
		local offsetDueToBoundingBox = handleProps.AxisOffset
		self._draggingHandleFrac =
			(self._startDistance - handleOffset - offsetDueToBoundingBox) / handleLength
	end
end

function MoveToolImpl:_setupMoveAtCurrentBoundingBox(mouseRay)
	local offset = MoveHandleDefinitions[self._draggingHandleId].Offset
	local axis = (self._boundingBox.CFrame * offset).LookVector
	self._axis = axis

	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	-- In order to hitTest true in the first place it has to not be parallel
	-- and thus have a distance here.
	assert(hasDistance)
	self._startDistance = distance
end

function MoveToolImpl:_shouldSolveConstraints()
	if getFFlagSmoothAttachmentMovement() then
		return self._draggerContext:areConstraintsEnabled() and #self._partsToMove > 0
	else
		return self._draggerContext:areConstraintsEnabled()
	end
end

--[[
	We want to keep the mouse cursor snapped to a point a constant fraction of
	the way down the handle length over the whole duration of a move. This is
	non-trivial, as the distance along the handle depends on the scale of the
	handle, but the scale of the handle depends on how far it has been moved
	relative to the camera.

	We must solve a non-linear equation satisfying the constraint:
		fraction of distance along handle at new location
		equals
		fraction of distance along handle at start location

	Do this using a binary search over the potential solution space.
]]
function MoveToolImpl:_solveForAdjustedDistance(unadjustedDistance)
	-- Only try to adjust the movement for a geometric move
	if self:_shouldSolveConstraints() then
		return unadjustedDistance
	end

	local offsetDueToBoundingBox = self._handles[self._draggingHandleId].AxisOffset
	local handleRotation = MoveHandleDefinitions[self._draggingHandleId].Offset

	local function getScaleForDistance(distance)
		local boundingBoxAtDistance =
			self._draggingOriginalBoundingBoxCFrame +
			self._axis * (distance - self._startDistance)
		local baseCFrameAtDistance =
			boundingBoxAtDistance * handleRotation *
			CFrame.new(0, 0, -offsetDueToBoundingBox)
		return self._draggerContext:getHandleScale(baseCFrameAtDistance.Position)
	end

	local function getHandleFracForDistance(distance)
		local scale = getScaleForDistance(distance)
		local handleOffset, handleLength = MoveHandleView.getHandleDimensionForScale(scale)
		local intoDist = unadjustedDistance - distance + self._startDistance
		return (intoDist - handleOffset - offsetDueToBoundingBox) / handleLength
	end

	local function getHandleLengthForDistance(distance)
		local _, handleLength =
			MoveHandleView.getHandleDimensionForScale(getScaleForDistance(distance))
		return handleLength
	end

	-- Establish the bounds on the binary search for a good distance. Using
	-- max(originalLength, newLength) is a bit of a hack.
	-- abs(originalLength - newLength) is the more mathematically appropriate
	-- expression for how much unadjustedDistance might be off by, but it's too
	-- "sharp", and slightly misses including the solution we're looking for
	-- sometimes. Using the larger interval with max works too, it's just doing
	-- slightly more work than it should really have to.
	local originalHandleLength = getHandleLengthForDistance(0)
	local currentHandleLength = getHandleLengthForDistance(unadjustedDistance)
	local handleSizeDifference = math.max(originalHandleLength, currentHandleLength)
	local minPossibleDistance = unadjustedDistance - handleSizeDifference
	local maxPossibleDistance = unadjustedDistance + handleSizeDifference
	local fracAtMin = getHandleFracForDistance(minPossibleDistance)
	local fracAtMax = getHandleFracForDistance(maxPossibleDistance)

	-- Do the binary search
	local iterationCount = 0
	while math.abs(minPossibleDistance - maxPossibleDistance) > 0.0001 and iterationCount < 32 do
		local mid = 0.5 * (minPossibleDistance + maxPossibleDistance)
		local fracAtMid = getHandleFracForDistance(mid)
		if (self._draggingHandleFrac - fracAtMid) * (fracAtMax - fracAtMin) > 0 then
			minPossibleDistance = mid
			fracAtMin = fracAtMid
		else
			maxPossibleDistance = mid
			fracAtMax = fracAtMid
		end
	end

	if math.abs(fracAtMin - self._draggingHandleFrac) > 0.001 then
		-- TODO: If you see this, I still got something wrong in this solution,
		-- remove before shipping.
		warn("Failed to solve for movement amount! Wanted:", self._draggingHandleFrac,
			"Got:", fracAtMin)
	end

	return minPossibleDistance
end

function MoveToolImpl:mouseDrag(mouseRay)
	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	if not hasDistance then
		return
	end

	if not self._handles[self._draggingHandleId] then
		return
	end

	local delta = self:_solveForAdjustedDistance(distance) - self._startDistance

	-- Apply snapping unconditionally because free axis movement in studio is
	-- implemented as snapping with grid size = 0.001.
	local snappedDelta = snapToGridSize(delta, self._draggerContext:getGridSize())

	if getFFlagSmoothAttachmentMovement() then
		if self:_shouldSolveConstraints() then
			self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
		else
			self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
		end
	else
		if self._draggerContext:areConstraintsEnabled() and #self._partsToMove > 0 then
			self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
		else
			self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
		end
	end
end

--[[
	For direct geometric movement, move as a delta from the position the
	part started at on mouse down to reduce floating point error.
]]
function MoveToolImpl:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
	if snappedDelta == self._draggingLastGoodGeometricDelta then
		return
	end

	local candidateGlobalTransform = CFrame.new(self._axis * snappedDelta)
	self._partMover:transformTo(candidateGlobalTransform)
	if self._draggerContext:areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
		self._draggingLastGoodGeometricDelta = self:_findAndMoveToGoodDelta(snappedDelta)
	else
		self._draggingLastGoodGeometricDelta = snappedDelta
	end

	self:_setMidMoveBoundingBox(
		self._draggingOriginalBoundingBoxCFrame + self._axis * self._draggingLastGoodGeometricDelta)

	local appliedGlobalTransform = CFrame.new(self._axis * self._draggingLastGoodGeometricDelta)
	self._attachmentMover:transformTo(appliedGlobalTransform)

	if self._draggerContext:shouldJoinSurfaces() then
		self._jointPairs = self._partMover:computeJointPairs(appliedGlobalTransform)
	end
end

--[[
	For inverse kinematics movement, always move in incremental steps
]]
function MoveToolImpl:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
	if snappedDelta == 0 then
		return
	end

	local collisionsMode =
		self._draggerContext:areCollisionsEnabled() and
		Enum.IKCollisionsMode.IncludeContactedMechanisms or
		Enum.IKCollisionsMode.NoCollisions

	local globalTransform = CFrame.new(self._axis * snappedDelta)
	local targetNewBoundingBox = globalTransform * self._boundingBox.CFrame
	local globalTransformNeeded =
		targetNewBoundingBox * self._draggingOriginalBoundingBoxCFrame:Inverse()
	local actualGlobalTransformUsed =
		self._partMover:moveToWithIk(globalTransformNeeded, collisionsMode)
	self._attachmentMover:transformTo(actualGlobalTransformUsed)

	-- Update the bounding box by the actual transform that the IK solver was
	-- able to find.
	self:_setMidMoveBoundingBox(actualGlobalTransformUsed * self._draggingOriginalBoundingBoxCFrame)

	-- Since we updated the bounding box we have to call this again
	self:_setupMoveAtCurrentBoundingBox(mouseRay)

	if self._draggerContext:shouldJoinSurfaces() then
		self._partMover:computeJointPairs(actualGlobalTransformUsed)
	end
end

function MoveToolImpl:_setMidMoveBoundingBox(newBoundingBoxCFrame)
	self._boundingBox.CFrame = newBoundingBoxCFrame
end

function MoveToolImpl:mouseUp(mouseRay)
	self._draggingHandleId = nil
	if self._draggerContext:shouldJoinSurfaces() and self._jointPairs then
		self._jointPairs:createJoints()
	end
	self._jointPairs = nil
	self._partMover:commit()
	self._attachmentMover:commit()
	ChangeHistoryService:SetWaypoint("Move Parts")
end

--[[
	Resolve collisions via a binary search between the last good delta and the
	currently desired delta. Assume that the last good delta is free, the
	desired delta is blocked, and there is a single point between the two where
	it switches between blocked and free.
	Return the good delta that we moved the parts to.
]]
function MoveToolImpl:_findAndMoveToGoodDelta(desiredDelta)
	local start = self._draggingLastGoodGeometricDelta
	local goal = desiredDelta
	local isIntersecting = true

	while math.abs(goal - start) > TRANSLATE_COLLISION_THRESHOLD do
		local mid = (goal + start) / 2
		local midTransform = CFrame.new(self._axis * mid)
		self._partMover:transformTo(midTransform)
		isIntersecting = self._partMover:isIntersectingOthers()
		if isIntersecting then
			goal = mid
		else
			start = mid
		end
	end

	-- Special case to not let us move very slightly and then stop. If we allow
	-- that then a translate which collides almost right away will produce no
	-- visible changes but introduce floating point error.
	-- The 2x is not a random fudge factor, it is precisely chosen: `goal` and
	-- `start` always bound the true collision point. After the loop, they are
	-- guaranteed to be within the threshold of eachother. We want to test
	-- whether the the move is within the threshold of zero. That means, at the
	-- very worst, the true collision point is at +threshold, and the loop
	-- exited at +threshold of the collision point, for a total of 2x threshold
	-- away from zero.
	if math.abs(start) < TRANSLATE_COLLISION_THRESHOLD * 2 then
		start = 0
		isIntersecting = true
	end

	-- Have to make sure that we end on a non-intersection. The invariant is
	-- that start is the best safe position we've found, so we can move it.
	if isIntersecting then
		self._partMover:transformTo(CFrame.new(self._axis * start))
	end

	-- Either we ended the loop on an intersection, and the above code moved us
	-- to start, or we ended on a non-intersect, in which case start is an
	-- up to date representation of the mid we last moved the parts to.
	return start
end

function MoveToolImpl:_getDistanceAlongAxis(mouseRay)
	if self:_shouldSolveConstraints() then
		return Math.intersectRayRay(
			self._boundingBox.CFrame.Position, self._axis,
			mouseRay.Origin, mouseRay.Direction.Unit)
	else
		return Math.intersectRayRay(
			self._draggingOriginalBoundingBoxCFrame.Position, self._axis,
			mouseRay.Origin, mouseRay.Direction.Unit)
	end
end

function MoveToolImpl:_updateHandles()
	if #self._partsToMove == 0 and #self._attachmentsToMove == 0 then
		self._handles = {}
	else
		for handleId, handleDef in pairs(MoveHandleDefinitions) do
			-- This is code to offset the handle's base position by the size
			-- of the bounding box on that handle's axis.
			local localSize = handleDef.Offset:Inverse():VectorToWorldSpace(self._boundingBox.Size)
			local offsetDueToBoundingBox = 0.5 * math.abs(localSize.Z)
			local handleBaseCFrame =
				self._boundingBox.CFrame *
				handleDef.Offset *
				CFrame.new(0, 0, -offsetDueToBoundingBox)
			self._handles[handleId] = {
				AxisOffset = offsetDueToBoundingBox,
				Axis = handleBaseCFrame,
				Color = handleDef.Color,
				Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
			}
		end
	end
end


return MoveToolImpl