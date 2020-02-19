
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- Libraries
local Plugin = script.Parent.Parent
local plugin = Plugin.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

local Math = require(DraggerFramework.Utility.Math)
local PartMover = require(DraggerFramework.Utility.PartMover)
local StudioSettings = require(DraggerFramework.Utility.StudioSettings)
local Colors = require(DraggerFramework.Utility.Colors)

local MoveHandleView = require(Plugin.Src.MoveHandleView)

local ALWAYS_ON_TOP = true

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

local function areJointsEnabled()
    return plugin:GetJoinMode() ~= Enum.JointCreationMode.None
end

local function areCollisionsEnabled()
    return plugin.CollisionEnabled
end

local function areConstraintsEnabled()
    if Workspace:FindFirstChild("ConstraintsEnabled") then
        return Workspace.ConstraintsEnabled.Value
    end
    return false
end

local function useLocalSpace()
    return StudioService.UseLocalSpace
end

local function snapToGridSize(distance)
    local gridSize = StudioService.GridSize
    return math.floor(distance / gridSize + 0.5) * gridSize
end

function MoveToolImpl.new()
    local self = {}
    self._handles = {}
    self._partMover = PartMover.new()
    return setmetatable(self, MoveToolImpl)
end

function MoveToolImpl:update(draggerToolState)
    if not self._draggingHandleId then
        -- Don't clobber these fields while we're dragging because we're
        -- updating the bounding box in a smart way given how we're moving the
        -- parts.
        self._boundingBox = {
            Size = draggerToolState.boundingBoxSize,
            CFrame = draggerToolState.mainCFrame * CFrame.new(draggerToolState.boundingBoxOffset),
        }
        self._partsToMove = draggerToolState.partsToMove
        self._originalCFrameMap = draggerToolState.originalCFrameMap
        self._scale = draggerToolState.scale
    end
    self:_updateHandles()
end

function MoveToolImpl:hitTest(mouseRay)
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
    local children = {}
    if self._draggingHandleId then
        local handleProps = self._handles[self._draggingHandleId]
        handleProps.Hovered = false
        children[self._draggingHandleId] = Roact.createElement(MoveHandleView, handleProps)

        if areJointsEnabled() then
            children.JointDisplay = self._partMover:renderJointPairs(self._scale)
        end
    else
        for handleId, handleProps in pairs(self._handles) do
            handleProps.Hovered = (handleId == hoveredHandleId)
            children[handleId] = Roact.createElement(MoveHandleView, handleProps)
        end
    end
    return Roact.createFragment(children)
end

function MoveToolImpl:mouseDown(mouseRay, handleId)
    self._draggingHandleId = handleId
    self._draggingLastGoodGeometricDelta = 0
    self._draggingOriginalBoundingBoxCFrame = self._boundingBox.CFrame
    self._partMover:setDragged(
        self._partsToMove,
        self._originalCFrameMap,
        not areConstraintsEnabled(), -- keep joints when constraints are enabled
        self._boundingBox.CFrame.Position)
    self:_setupMoveAtCurrentBoundingBox(mouseRay)
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

function MoveToolImpl:mouseDrag(mouseRay)
    local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
    if not hasDistance then
        return
    end
    local delta = distance - self._startDistance

    -- Apply snapping unconditionally because free axis movement in studio is
    -- implemented as snapping with grid size = 0.001.
    local snappedDelta = snapToGridSize(delta)

    if areConstraintsEnabled() then
        self:_mouseDragWithInverseKinematics(mouseRay, snappedDelta)
    else
        self:_mouseDragWithGeometricMovement(mouseRay, snappedDelta)
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

    local globalTransform = CFrame.new(self._axis * snappedDelta)
    self._partMover:transformTo(globalTransform)
    if areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
        self._draggingLastGoodGeometricDelta = self:_findAndMoveToGoodDelta(snappedDelta)
    else
        self._draggingLastGoodGeometricDelta = snappedDelta
    end

    self._boundingBox.CFrame =
        self._draggingOriginalBoundingBoxCFrame + self._axis * self._draggingLastGoodGeometricDelta

    if areJointsEnabled() then
        local goodTransform = CFrame.new(self._axis * self._draggingLastGoodGeometricDelta)
        self._partMover:computeJointPairs(goodTransform)
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
        areCollisionsEnabled() and
        Enum.CollisionsMode.IncludeContactedMechanisms or
        Enum.CollisionsMode.NoCollisions

    local globalTransform = CFrame.new(self._axis * snappedDelta)
    local targetNewBoundingBox = globalTransform * self._boundingBox.CFrame
    local globalTransformNeeded =
        targetNewBoundingBox * self._draggingOriginalBoundingBoxCFrame:Inverse()
    local actualGlobalTransformUsed =
        self._partMover:transformToWithIk(globalTransformNeeded, collisionsMode)

    -- Update the bounding box by the actual transform that the IK solver was
    -- able to find.
    self._boundingBox.CFrame = actualGlobalTransformUsed * self._draggingOriginalBoundingBoxCFrame

    -- Since we updated the bounding box we have to call this again
    self:_setupMoveAtCurrentBoundingBox(mouseRay)

    if areJointsEnabled() then
        self._partMover:computeJointPairs(actualGlobalTransformUsed)
    end
end

function MoveToolImpl:mouseUp(mouseRay)
    self._draggingHandleId = nil
    if areJointsEnabled() then
        self._partMover:createJointPairs()
    end
    self._partMover:commit()
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
    while math.abs(goal - start) > 0.0001 do
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
    if areConstraintsEnabled() then
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
    if #self._partsToMove == 0 then
        self._handles = {}
    else
        for handleId, handleDef in pairs(MoveHandleDefinitions) do
            -- This is code to offset the handle's base position by the size
            -- of the bounding box on that handle's axis.
            local localSize = handleDef.Offset:Inverse():VectorToWorldSpace(self._boundingBox.Size)
            local handleBaseCFrame =
                self._boundingBox.CFrame *
                handleDef.Offset *
                CFrame.new(0, 0, -0.5 * math.abs(localSize.Z))
            self._handles[handleId] = {
                Axis = handleBaseCFrame,
                Scale = self._scale,
                Color = handleDef.Color,
                AlwaysOnTop = ALWAYS_ON_TOP,
            }
        end
    end
end

return MoveToolImpl