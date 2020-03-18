--[[
	Rotate tool implementation. Responsible for handle state and handle views.
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local StudioService = game:GetService("StudioService")

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
local StudioSettings = require(DraggerFramework.Utility.StudioSettings)

local RotateHandleView = require(Plugin.Src.RotateHandleView)

local RotateToolImpl = {}
RotateToolImpl.__index = RotateToolImpl

--[[
	Axis of rotation is the CFrame right vector.
]]
local RotateHandleDefinitions = {
    XAxis = {
        Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	YAxis = {
        Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	ZAxis = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0)),
		Color = Colors.Z_AXIS,
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

function RotateToolImpl:update(draggerToolState)
	if not self._draggingHandleId then
		self._boundingBox = {
            Size = draggerToolState.boundingBoxSize,
            CFrame = draggerToolState.mainCFrame * CFrame.new(draggerToolState.boundingBoxOffset),
		}

		self._attachmentsToMove = draggerToolState.attachmentsToMove
		self._partsToMove = draggerToolState.partsToMove
		self._originalCFrameMap = draggerToolState.originalCFrameMap
		self._scale = draggerToolState.scale
	end
	self:_updateHandles()
end

function RotateToolImpl:hitTest(mouseRay)
    local closestHandleId, closestHandleDistance = nil, math.huge
    for handleId, handleProps in pairs(self._handles) do
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
	-- TODO: DEVTOOLS-3884 [Modeling] Enhancements to rotated parts
	-- Show the selection's rotated AABB when dragging.

	local children = {}
	if self._draggingHandleId then
		local handleProps = self._handles[self._draggingHandleId]
		handleProps.Color = handleProps.ActiveColor
		handleProps.Hovered = true
		handleProps.StartAngle = self._startAngle
		handleProps.EndAngle = self._startAngle + self._draggingLastGoodDelta
		children[self._draggingHandleId] = Roact.createElement(RotateHandleView, handleProps)

		if areJointsEnabled() then
            children.JointDisplay = self._partMover:renderJointPairs(self._scale)
        end
	else
		for handleId, handleProps in pairs(self._handles) do
			handleProps.Hovered = handleId == hoveredHandleId
			local color = handleProps.ActiveColor
			if not handleProps.Hovered then
				color = Colors.makeDimmed(color)
			end
			handleProps.Color = color
			children[handleId] = Roact.createElement(RotateHandleView, handleProps)
		end
	end
	return Roact.createFragment(children)
end

function RotateToolImpl:mouseDown(mouseRay, handleId)
	-- TODO: DEVTOOLS-3884 [Modeling] Enhancements to rotated parts
	-- Make dragged parts semi-transparent while dragging.
	local handleProps = self._handles[handleId]

	self._draggingHandleId = handleId
	self._draggingLastGoodDelta = 0
	self._draggingOriginalBoundingBoxCFrame = self._boundingBox.CFrame

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

	if areConstraintsEnabled() and #self._partsToMove > 0 then
		self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
	else
	    self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
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
        return
    end

	local candidateTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, delta)
	self._partMover:transformTo(candidateTransform)

	if areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
		self._draggingLastGoodDelta = self:_findAndRotateToGoodDelta(delta)
	else
		self._draggingLastGoodDelta = delta
	end

	local appliedTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, self._draggingLastGoodDelta)
	self._attachmentMover:transformTo(appliedGlobalTransform)

    if areJointsEnabled() then
        self._partMover:computeJointPairs(appliedTransform)
    end
end

--[[
	For inverse kinematics dragging, adjust handle for translation caused by
	the IK solver, and compute the amount of rotation applied from the resulting
	transformation, so that the RotateHandleView can show the correct angle.
]]
function RotateToolImpl:_mouseDragWithInverseKinematics(mouseRay, delta)
	if snappedDelta == 0 then
        return
	end

    local collisionsMode = areCollisionsEnabled() and
        Enum.CollisionsMode.OtherMechanismsAnchored or
		Enum.CollisionsMode.NoCollisions

	local candidateTransform = getRotationTransform(self._boundingBox.CFrame, self._handleCFrame.RightVector, delta)
	local appliedTransform = self._partMover:rotateToWithIk(candidateTransform, collisionsMode)

	self._attachmentMover:transformTo(appliedTransform)

	-- Adjust the bounding box for any translation caused by the IK solver.
	local translation = (appliedTransform * self._draggingOriginalBoundingBoxCFrame).Position - self._boundingBox.CFrame.Position
	self._boundingBox.CFrame = self._boundingBox.CFrame + translation

	-- Derive the last good delta from the appliedTransform returned from IK.
	local rotatedAxis = appliedTransform:VectorToObjectSpace(self._handleCFrame.LookVector)
	local ry = self._handleCFrame.UpVector:Dot(rotatedAxis)
	local rx = self._handleCFrame.LookVector:Dot(rotatedAxis)
	self._draggingLastGoodDelta = -math.atan2(ry, rx)

    if areJointsEnabled() then
        self._partMover:computeJointPairs(appliedTransform)
    end
end

function RotateToolImpl:mouseUp(mouseRay)
	self._draggingHandleId = nil
	self._draggingLastGoodDelta = 0
	self._startAngle = nil

	if areJointsEnabled() then
        self._partMover:createJointPairs()
    end
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

    if #self._partsToMove == 0 then
        self._handles = {}
	else
		for handleId, handleDefinition in pairs(RotateHandleDefinitions) do
			self._handles[handleId] = {
				ActiveColor = handleDefinition.Color,
				HandleCFrame = self._boundingBox.CFrame * handleDefinition.Offset,
				HandleID = handleId,
				Offset = handleDefinition.Offset,
				Scale = self._scale,
			}
        end
    end
end

return RotateToolImpl
