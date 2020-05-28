--[[
	Rotate tool implementation. Responsible for handle state and handle views.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local StudioService = game:GetService("StudioService")
local Workspace = game:GetService("Workspace")

-- Libraries
local Plugin = script.Parent.Parent
local plugin = Plugin.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local DraggerFramework = Plugin.Packages.DraggerFramework
local AttachmentMover = require(DraggerFramework.Utility.AttachmentMover)
local Colors = require(DraggerFramework.Utility.Colors)
local Math = require(DraggerFramework.Utility.Math)
local PartMover = require(DraggerFramework.Utility.PartMover)
local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)

local RotateHandleView = require(Plugin.Src.RotateHandleView)

local getFFlagImprovedHandleParams2 = require(DraggerFramework.Flags.getFFlagImprovedHandleParams2)
local getFFlagDisallowFloatingPointErrorMove = require(DraggerFramework.Flags.getFFlagDisallowFloatingPointErrorMove)

-- The difference from exactly touching to try to bring the parts within when
-- dragging parts into a colliding condition with Collisions enabled.
local ROTATE_COLLISION_THRESHOLD = 0.0001

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

local function areCollisionsEnabled()
	return plugin.CollisionEnabled
end

local function areJointsEnabled()
	return plugin:GetJoinMode() ~= Enum.JointCreationMode.None
end

local function areConstraintsEnabled()
	if settings():GetFFlag("StudioServiceDraggerSolveConstraints") then
		return StudioService.DraggerSolveConstraints
	end
	return false
end

local function getRotationTransform(mainCFrame, axisVector, delta)
	local localAxis = mainCFrame:VectorToObjectSpace(axisVector)
	return mainCFrame * CFrame.fromAxisAngle(localAxis, delta) * mainCFrame:Inverse()
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
		return math.atan2(ry, rx)
	end
	return nil
end

local function snapToRotateIncrementIfNeeded(angle)
	if StudioService.RotateIncrement > 0 then
		local angleIncrement = math.rad(StudioService.RotateIncrement)
		return math.floor(angle / angleIncrement) * angleIncrement
	else
		return angle
	end
end

function RotateToolImpl.new()
	local self = {}
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
		self._scale = derivedWorldState:getHandleScale()
	end
	self:_updateHandles()
end

function RotateToolImpl:hitTest(mouseRay, handleScale)
	local closestHandleId, closestHandleDistance = nil, math.huge
	for handleId, handleProps in pairs(self._handles) do
		handleProps.Scale = handleScale
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
	if self._draggingHandleId then
		local handleProps = self._handles[self._draggingHandleId]
		if getFFlagImprovedHandleParams2() then
			children[self._draggingHandleId] = Roact.createElement(RotateHandleView, {
				HandleCFrame = handleProps.HandleCFrame,
				Color = handleProps.Color,
				StartAngle = self._startAngle - self._draggingLastGoodDelta,
				EndAngle = self._startAngle,
				Scale = self._scale,
				Hovered = false,
				RadiusOffset = handleProps.RadiusOffset,
			})
		else
			children[self._draggingHandleId] = Roact.createElement(RotateHandleView, {
				HandleCFrame = handleProps.HandleCFrame,
				Color = handleProps.Color,
				StartAngle = self._startAngle - self._draggingLastGoodDelta,
				EndAngle = self._startAngle,
				Scale = self._scale,
				Hovered = forceHoveredHandlesOnTop and true,
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

		if areJointsEnabled() and self._jointPairs then
			children.JointDisplay = self._jointPairs:renderJoints(self._scale)
		end
	else
		for handleId, handleProps in pairs(self._handles) do
			local color = handleProps.Color
			local hovered = (handleId == hoveredHandleId)
			if not hovered then
				color = Colors.makeDimmed(color)
			end
			if getFFlagImprovedHandleParams2() then
				children[handleId] = Roact.createElement(RotateHandleView, {
					HandleCFrame = handleProps.HandleCFrame,
					Color = color,
					Scale = self._scale,
					Hovered = hovered,
					RadiusOffset = handleProps.RadiusOffset,
				})
			else
				children[handleId] = Roact.createElement(RotateHandleView, {
					HandleCFrame = handleProps.HandleCFrame,
					Color = color,
					Scale = self._scale,
					Hovered = forceHoveredHandlesOnTop and hovered,
					RadiusOffset = handleProps.RadiusOffset,
				})
			end
		end
	end

	if #self._partsToMove > 1 then
		children.SelectionBoundingBox = Roact.createElement(StandaloneSelectionBox, {
			CFrame = self._boundingBox.CFrame,
			Size = self._boundingBox.Size,
		})
	end

	return Roact.createFragment(children)
end

function RotateToolImpl:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId
	self._draggingLastGoodDelta = 0
	self._originalBoundingBoxCFrame = self._boundingBox.CFrame

	self:_setupRotateAtCurrentBoundingBox(mouseRay)

	local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
	if not angle then
		return
	end

	self._startAngle = snapToRotateIncrementIfNeeded(angle)

	local breakJoints = not areConstraintsEnabled()
	local center = self._boundingBox.CFrame.Position
	self._partMover:setDragged(self._partsToMove, self._originalCFrameMap, breakJoints, center)
	self._attachmentMover:setDragged(self._attachmentsToMove)
end

function RotateToolImpl:mouseDrag(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
	if not angle then
		return
	end

	local snappedDelta = snapToRotateIncrementIfNeeded(angle) - self._startAngle
	local appliedGlobalTransform

	if areConstraintsEnabled() and #self._partsToMove > 0 then
		appliedGlobalTransform = self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
	else
		appliedGlobalTransform = self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
	end

	if appliedGlobalTransform then
		if areJointsEnabled() then
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
		delta)
	self._partMover:transformTo(candidateGlobalTransform)

	if areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
		self._draggingLastGoodDelta = self:_findAndRotateToGoodDelta(delta)
	else
		self._draggingLastGoodDelta = delta
	end

	local appliedGlobalTransform = getRotationTransform(
		self._originalBoundingBoxCFrame,
		self._handleCFrame.RightVector,
		self._draggingLastGoodDelta)
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

	local collisionsMode = areCollisionsEnabled() and
		Enum.IKCollisionsMode.OtherMechanismsAnchored or
		Enum.IKCollisionsMode.NoCollisions

	local candidateTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, delta)
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
	self._draggingHandleId = nil
	self._draggingLastGoodDelta = 0
	self._startAngle = nil
	self._originalBoundingBoxCFrame = nil

	if areJointsEnabled() and self._jointPairs then
		self._jointPairs:createJoints()
	end
	self._jointPairs = nil
	self._partMover:commit()

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
	if getFFlagDisallowFloatingPointErrorMove() then
		while math.abs(goal - start) > ROTATE_COLLISION_THRESHOLD do
			local mid = (goal + start) / 2
			local candidateTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, mid)
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
	else
		while math.abs(goal - start) > 0.0001 do
			local mid = (goal + start) / 2
			local candidateTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, mid)
			self._partMover:transformTo(candidateTransform)

			isIntersecting = self._partMover:isIntersectingOthers()
			if isIntersecting then
				goal = mid
			else
				start = mid
			end
		end
	end

	-- Have to make sure that we end on a non-intersection. The invariant is
	-- that start is the best safe position we've found, so we can move it.
	if isIntersecting then
		local transform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, start)
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
			if getFFlagImprovedHandleParams2() then
				self._handles[handleId] = {
					HandleCFrame = self._boundingBox.CFrame * handleDefinition.Offset,
					Color = handleDefinition.Color,
					RadiusOffset = handleDefinition.RadiusOffset,
				}
			else
				self._handles[handleId] = {
					HandleCFrame = self._boundingBox.CFrame * handleDefinition.Offset,
					Color = handleDefinition.Color,
				}
			end
		end
	end
end

return RotateToolImpl
