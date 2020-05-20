--[[
    Shared utility class which transforms parts efficiently as a group, and
    manages joining / unjoining them from the world.
]]
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local DraggerFramework = script.Parent.Parent
local getGeometry = require(DraggerFramework.Utility.getGeometry)
local JointPairs = require(DraggerFramework.Utility.JointPairs)
local JointUtil = require(DraggerFramework.Utility.JointUtil)

local getFFlagHandleCanceledToolboxDrag = require(DraggerFramework.Flags.getFFlagHandleCanceledToolboxDrag)

local PartMover = {}
PartMover.__index = PartMover

--[[
	Default value for IK dragging translation and rotation stiffness.
]]
local DRAG_CONSTRAINT_STIFFNESS = 0.85

function PartMover.new()
    local self = setmetatable({
        _partSet = {},
        _wasAnchored = {},
        _facesToHighlightSet = {},
        _nearbyGeometry = { --[[ [BasePart x]: (self:_getGeometry(x)) ]] },
    }, PartMover)
    self:_createMainPart()
    return self
end

--[[
    The part we're using to move stuff that needs to be ignored for raycasting.
]]
function PartMover:getIgnorePart()
    return self._mainPart
end

function PartMover:setDragged(parts, originalCFrameMap, breakJoints, customCenter)
    -- Separate the parts into "physical" and "free":
    -- The physical parts are those under the Workspace, which have to
    -- potentially respect physics, and which we can move via welding
    -- together into one assembly.
    -- The free parts are everything else, such as parts in ServerStorage.
    local physicalParts = {}
    local freeParts = {}
    for _, part in ipairs(parts) do
        if part:IsDescendantOf(Workspace) then
            table.insert(physicalParts, part)
        else
            table.insert(freeParts, part)
        end
    end
    parts = physicalParts
    self._freeParts = freeParts

    assert(not self._moving)
    self._moving = true
    self._originalCFrameMap = originalCFrameMap
    if #parts == 0 then
        self._parts = {}
        return
    end
    self:_initPartSet(parts)
    self:_setupMainPart(customCenter or Vector3.new())
    self:_prepareJoints(parts, breakJoints)
    -- setupGeometryTracking has to come after prepareJoints, because the
    -- RootPart tracking should it does should take into account the
    -- modifications to joints which prepareJoints did.
    self:_setupGeometryTracking(parts)
    self._parts = parts
end

function PartMover:_initPartSet(parts)
    self._partSet = {}
    for _, part in ipairs(parts) do
        self._partSet[part] = true
        self._wasAnchored[part] = part.Anchored
    end
end

--[[
    _getGeometry caches into nearbyGeometry, so here we reset that table
    and load the initial geometry of the parts to move into the cache.
]]
function PartMover:_setupGeometryTracking(parts)
    self._nearbyGeometry = {}
    self._rootPartSet = {}
    for _, part in ipairs(parts) do
        -- We have to track the roots separately, because some of the root parts
        -- of the dragged parts may not be in the set of dragged parts.
        self._rootPartSet[part:GetRootPart()] = true
        self:_getGeometry(part)
    end
end

--[[
    Create an auxiliary part to weld everything to in order to move everything
    as a single aggregate from the Lua side.
]]
function PartMover:_createMainPart()
    local part = Instance.new("Part")
    part.Name = "PartDragMover"
    part.Transparency = 1
    part.Archivable = false

    -- 0 Density so that we don't effect the IK drag weighting
    part.CustomPhysicalProperties =
        PhysicalProperties.new(
            0, -- Density
            0.3, -- Friction
            0.5 -- Elasticity
        )

    self._mainPart = part
    self._originalMainPartCFrame = part.CFrame
end

function PartMover:_setupMainPart(customCenter)
    -- Part must be anchored in run mode, so that physics can't simulate it.
    -- However, the part must be UNanchored in normal mode, because IK dragging
    -- won't work if the part is anchored.
    self._mainPart.Anchored = RunService:IsRunning()
    self._originalMainPartCFrame = CFrame.new(customCenter)
    self._mainPart.CFrame = self._originalMainPartCFrame
    self._mainPart.Parent = Workspace.Terrain
    self._partSet[self._mainPart] = true
end

--[[
    Every moved part is joined together so that we can move the parts as
    a single solid body with only one property set from Lua.
    If breakJoints is true, break joints to outsiders before doing the drag
]]
function PartMover:_prepareJoints(parts, breakJoints)
    self._reenableWeldConstraints = {}
    self._temporaryJoints = {}
    self._alreadyConnectedToSets = {}
    local mainPartCFrameInv = self._originalMainPartCFrame:Inverse()
    local debugTotalDestroyed = 0
    local debugTotalFoundJoints = 0
    for _, part in ipairs(parts) do
        self._alreadyConnectedToSets[part] = {}
        for _, joint in ipairs(part:GetJoints()) do
            if joint:IsA("JointInstance") then
                local other = JointUtil.getJointInstanceCounterpart(joint, part)
                if breakJoints then
                    debugTotalFoundJoints = debugTotalFoundJoints + 1
                    if not self._partSet[other] then
                        debugTotalDestroyed = debugTotalDestroyed + 1

                        -- We can't destroy these, otherwise Undo behavior
                        -- won't be able to put them back in the workspace.
                        joint.Parent = nil
                    end
                else
                    self._alreadyConnectedToSets[part][other] = true
                end
            elseif joint:IsA("Constraint") then
                -- Constraints don't effect non-IK movement, so
                -- we don't have to break or unparent them.

                -- However we do have to record the constraints between
                -- parts so that we know what joint pairs are redundant.
                local other = JointUtil.getConstraintCounterpart(joint, part)
                if other then
                    -- The if is because some constraints like VectorForce
                    -- will not have a counterpart.
                    self._alreadyConnectedToSets[part][other] = true
                end
            elseif joint:IsA("WeldConstraint") then
                local other = JointUtil.getWeldConstraintCounterpart(joint, part)
                self._alreadyConnectedToSets[part][other] = true

                -- Weld constraints to non-dragged parts need to be disabled,
                -- and then re-enabled after the move. Note: To show up in
                -- GetJoints, this weld must have been enabled.
                if not self._partSet[other] then
                    joint.Enabled = false
                    self._reenableWeldConstraints[joint] = true
                end
            else
                error("Unexpected Joint Type: " .. joint.ClassName)
            end
        end

        part.Anchored = false
        local moveJoint = Instance.new("Weld")
        moveJoint.Archivable = false
        moveJoint.Name = "Temp Movement Weld"
        moveJoint.Part0 = self._mainPart
        moveJoint.Part1 = part
        moveJoint.C0 = mainPartCFrameInv * part.CFrame
        moveJoint.Parent = self._mainPart
        table.insert(self._temporaryJoints, moveJoint)
    end
end

-- Find the candidate joints after transforming the dragged parts by `transform`
function PartMover:computeJointPairs(globalTransform)
    assert(self._moving)

    local jointPairs = JointPairs.new(self._parts, self._partSet, self._rootPartSet,
        globalTransform,
        self._alreadyConnectedToSets, function(part)
            return self:_getGeometry(part)
        end)

    if RunService:IsRunning() then
        self:_clearOtherGeometry()
    end

    return jointPairs
end

--[[
    The main function to move the parts. We did all the actual work in setting
    up the temporary joints between the parts to move, so moving the main part
    is now sufficient to move all the parts.
]]
function PartMover:transformTo(transform)
    assert(self._moving)
    if #self._parts > 0 then
        self._mainPart.CFrame = transform * self._originalMainPartCFrame
    end
    for _, freePart in ipairs(self._freeParts) do
        freePart.CFrame = transform * self._originalCFrameMap[freePart]
    end
end

function PartMover:transformToWithIk(transform, translateStiffness, rotateStiffness, collisionsMode)
    assert(self._moving)
    -- If we have no physical parts, then IK dragging is the same as
    -- geometric dragging. (We still may have free parts to move)
    if #self._parts == 0 then
        self:transformTo(transform)
        return transform
    end

    local targetCFrame = transform * self._originalMainPartCFrame
    Workspace:IKMoveTo(
        self._mainPart, targetCFrame,
        translateStiffness, rotateStiffness,
        collisionsMode)
    local actualCFrame = self._mainPart.CFrame
    local actualGlobalTransform = actualCFrame * self._originalMainPartCFrame:Inverse()

    -- We need to clear all non-dragged parts cached geometry, since we may
    -- have bumped into and moved other parts as part of the IK move.
    self:_flushNonDraggedGeometryCache()

    return actualGlobalTransform
end

function PartMover:moveToWithIk(transform, collisionsMode)
	local translateStiffness = DRAG_CONSTRAINT_STIFFNESS
	local rotateStiffness = 0
    return self:transformToWithIk(transform, translateStiffness, rotateStiffness, collisionsMode)
end

function PartMover:rotateToWithIk(transform, collisionsMode)
	local translateStiffness = 0
	local rotateStiffness = DRAG_CONSTRAINT_STIFFNESS
    return self:transformToWithIk(transform, translateStiffness, rotateStiffness, collisionsMode)
end


--[[
    Are any of the parts to move intersecting other parts not in the set of
    parts to move?
]]
function PartMover:isIntersectingOthers()
    assert(self._moving)
    for _, part in ipairs(self._parts) do
        local others = part:GetTouchingParts()
        for _, other in ipairs(others) do
            if not self._partSet[other] then
                return true
            end
        end
    end
    return false
end

--[[
    Finish moving parts, and removing all of the temporary joints.
]]
function PartMover:commit()
    assert(self._moving)
    self._moving = false
    if self._mainPart then
        self._mainPart.Parent = nil
    end
    if self._reenableWeldConstraints then
        for weldConstraint, _ in pairs(self._reenableWeldConstraints) do
            weldConstraint.Enabled = true
        end
        self._reenableWeldConstraints = nil
    end
    self._facesToHighlightSet = {}
    if self._temporaryJoints then
        for _, joint in ipairs(self._temporaryJoints) do
            joint:Destroy()
        end
        self._temporaryJoints = {}
    end
    if self._wasAnchored then
        for part, wasAnchored in pairs(self._wasAnchored) do
            part.Anchored = wasAnchored
        end
        self._wasAnchored = {}
    end

    -- ChangeHistoryService "bump": Since we used temporary welds to move the
    -- parts, the ChangeHistoryService won't "see" the move, we have to
    -- move each part individually this time so that those moves will be undone
    -- as part of the next undo.
    -- We can still batch this by assembly though, taking advantage of the
    -- original welds that were present in the selection to begin with.
    local assembliesMovedSet = {}
    for _, part in ipairs(self._parts) do
        local root = part:GetRootPart()
        if not assembliesMovedSet[root] then
            local cframe = part.CFrame
            part.CFrame = CFrame.new()
            part.CFrame = cframe
            if getFFlagHandleCanceledToolboxDrag() then
                if root then
                    assembliesMovedSet[root] = true
                end
            else
                assembliesMovedSet[root] = true
            end
        end
    end

    -- UGLY HACK: There is a bug where the parts don't wake up correctly at the
    -- end of our drag, so we need to "tickle" the parts with a velocity set to
    -- wake them up. Otherwise, they would get stuck sleeping midair.
    -- TODO: nwarren has fixed this in ticket CLI-32051, remove when it ships.
    if RunService:IsRunning() then
        for _, part in ipairs(self._parts) do
            part.Velocity = Vector3.new(0, 0.000001, 0)
        end
    end

    -- Note: We didn't do anything with the freeParts during commit. That's
    -- because there's nothing to do with them, they are not simulated in any
    -- way, so the changes we already made to their CFrames suffice.
end

local function augmentGeometry(geometry)
    -- Add additional precomputed fields to geometry
    -- Nothing to do for now. I needed something in here in the past and for
    -- optimizations we will probably want to precompute some things in here.
end

function PartMover:_getGeometry(part)
    local geometry = self._nearbyGeometry[part]
    if not geometry then
        geometry = getGeometry(part, Vector3.new())
        self._nearbyGeometry[part] = geometry
        augmentGeometry(geometry)
    end
    return geometry
end

--[[
    Use this function to clear other part geometry after finishing a frame's
    worth of operation.

    In run mode, we can't keep the geometry of parts other than those we're
    moving cached between frames, because physics may move those parts. However
    we still want to keep them cached _within_ a frame, because multiple parts
    may need to check for joints vs a given part's geometry.
]]
function PartMover:_clearOtherGeometry()
    for part, _ in pairs(self._nearbyGeometry) do
        if not self._partSet[part] then
            self._nearbyGeometry[part] = nil
        end
    end
end

function PartMover:_flushNonDraggedGeometryCache()
    for part, _ in pairs(self._nearbyGeometry) do
        if not self._partSet[part] then
            self._nearbyGeometry[part] = nil
        end
    end
end

return PartMover