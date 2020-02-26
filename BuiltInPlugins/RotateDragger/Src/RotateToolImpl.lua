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

local RotateHandleDefinitions = {
    XAxis = {
        Orientation = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	YAxis = {
        Orientation = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	ZAxis = {
		Orientation = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0)),
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
	self._mainCFrame = draggerToolState.mainCFrame * CFrame.new(draggerToolState.boundingBoxOffset)
	self._attachmentsToMove = draggerToolState.attachmentsToMove
	self._partsToMove = draggerToolState.partsToMove
	self._originalCFrameMap = draggerToolState.originalCFrameMap
	self._scale = draggerToolState.scale

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
    return closestHandleId, closestHandleDistance
end

function RotateToolImpl:render(hoveredHandleId)
	-- TODO: DEVTOOLS-3884 [Modeling] Enhancements to rotated parts
	-- Show the selection's original unrotated AABB for comparison when dragging.

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
	self._handleCFrame = handleProps.HandleCFrame

	local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
	self._startAngle = snapToRotateIncrementIfNeeded(angle)

	local breakJoints = not areConstraintsEnabled()
	local center = self._handleCFrame.Position
    self._partMover:setDragged(self._partsToMove, self._originalCFrameMap, breakJoints, center)
	self._attachmentMover:setDragged(self._attachmentsToMove)
end

function RotateToolImpl:mouseDrag(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	local angle = rotationAngleFromRay(self._handleCFrame, mouseRay.Unit)
	local delta = snapToRotateIncrementIfNeeded(angle) - self._startAngle

	-- TODO: DEVTOOLS-3883: [Modeling] Integrate IK dragging into Rotate dragger

	local axis = self._handleCFrame.RightVector
	local localAxis = self._mainCFrame:VectorToObjectSpace(axis)
	local rotatedBase = self._mainCFrame * CFrame.fromAxisAngle(localAxis, delta)
	self._partMover:transformTo(rotatedBase * self._mainCFrame:Inverse())

	if areCollisionsEnabled() and self._partMover:isIntersectingOthers() then
		self._draggingLastGoodDelta = self:_findAndRotateToGoodDelta(delta)
	else
		self._draggingLastGoodDelta = delta
	end

	if areJointsEnabled() then
		local rotatedBase = self._mainCFrame * CFrame.fromAxisAngle(localAxis, self._draggingLastGoodDelta)
		local goodTransform = rotatedBase * self._mainCFrame:Inverse()
        self._partMover:computeJointPairs(goodTransform)
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
	and the currently desired delta.

	Assume that the last good delta is free of collions, the desired delta is blocked,
	and there exists an angle between the two where it switches from blocked to free.

    Return the good delta that we moved the parts to.
]]
function RotateToolImpl:_findAndRotateToGoodDelta(desiredDelta)
	local axis = self._handleCFrame.RightVector
	local localAxis = self._mainCFrame:VectorToObjectSpace(axis)

	local function rotateParts(delta)
		local transform = self._mainCFrame * CFrame.fromAxisAngle(localAxis, delta)
		self._partMover:transformTo(transform * self._mainCFrame:Inverse())
	end

    local start = self._draggingLastGoodDelta
    local goal = desiredDelta
    local isIntersecting = true
    while math.abs(goal - start) > 0.0001 do
		local mid = (goal + start) / 2
		rotateParts(mid)

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
        rotateParts(start)
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
			local orientation = handleDefinition.Orientation
			self._handles[handleId] = {
				ActiveColor = handleDefinition.Color,
				HandleCFrame = CFrame.new(self._mainCFrame.Position) * orientation,
				HandleID = handleId,
				Scale = self._scale,
			}
        end
    end
end

return RotateToolImpl
