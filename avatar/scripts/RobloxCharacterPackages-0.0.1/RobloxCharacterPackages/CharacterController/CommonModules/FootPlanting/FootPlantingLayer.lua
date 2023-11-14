-- Module Grounding - V0.25

--[[
TODO:
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - sticky feet: prevent small changes while idle from modifying the feet positions

TODO COMPOSITOR:
  - remove GROUNDING_ENABLED_STATES and humanoid, get the state from compositor
  - remove isIdle computation
  - remove humanoid/hrp
  - remove mydt
--]]

--------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Util = require(ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils.Util)
local Autopole = require(script.parent.Autopole)

local DEBUG = false

local gizmos: WireframeHandleAdornment = nil

-- Constants
local maxTranslationCorrection = 1.5 -- studs
local maxRotationCorrectionDeg = 45
local raycastDistanceMultiplier = 1.01
local maxHeightAdjustment = 0.5 -- units
local maxHeightAdjustmentVelocity = 5 -- units/second
local spherecastRadius = 0.2
local maxVelocityForIdle = 0.2
local maxAngularVelocityForIdle = 0.1
local weightFadeTime = 0.3
local rootAdjustmentBias = -0.05
local movementSpeedFadeStart = 8
local movementSpeedFadeEnd = 12
local maxScanDuration = 1.5
local idleDelay = 0.05
local adjustRoot = false


local GROUNDING_ENABLED_STATES = {
    [Enum.HumanoidStateType.Running] = true,
    [Enum.HumanoidStateType.Jumping] = true,
    [Enum.HumanoidStateType.Landed] = true,
    [Enum.HumanoidStateType.GettingUp] = true,
}

-- Variables
local character: Model = nil
local humanoid: Humanoid = nil
local hrp: Part = nil
local ikParamsL = nil
local ikParamsR = nil
local rcp: RaycastParams
local currentHeightAdjustment = 0
local scanL = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0 }
local scanR = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0 }
local lastNotIdleTime = 0
local isIdle = false
local mydt = 0
local mmask = nil

--------------------------------------------------------------------------------

local function createFootIkParams(eeffName, rootName, ikName, limbName)
    local ikparams = {
        mode = Enum.IKControlType.Transform,
        endEffector = eeffName,
        chainRoot = rootName,
        target = CFrame.new(), -- to be set each frame

        weight = 1,
        poleWeight = 0,
        enabled = true,
    }

    return ikparams
end

local function computeGroundingEnabled()
    -- Computes whether we should perform grounding.
    assert(humanoid, "Humanoid is nil")
    local humanoidState = humanoid:GetState()
    if GROUNDING_ENABLED_STATES[humanoidState] then
        return true
    end
    return false
end

local function updateTargetWeight(ik, targetWeight, dt)
    ik.weight = Util.linearSmooth(ik.weight, targetWeight, 1 / weightFadeTime, dt)
    -- fades out when moving fast
    local movementSpeed = hrp.AssemblyLinearVelocity.Magnitude
    local weightMult = Util.remapClamped(movementSpeed, movementSpeedFadeStart, movementSpeedFadeEnd, 1, 0)
    ik.weight *= weightMult
end

local function computeIdle(t)
    -- Checks whether a character is in the idle state.
    assert(humanoid, "Humanoid is nil")
    local ans = humanoid:GetState() == Enum.HumanoidStateType.Running
        and hrp.AssemblyLinearVelocity.Magnitude < maxVelocityForIdle
        and hrp.AssemblyAngularVelocity.Magnitude < maxAngularVelocityForIdle
    if not ans then
        lastNotIdleTime = t
    end
    isIdle = ans and (t > lastNotIdleTime + idleDelay)
end

local function heightFromGround(cf: CFrame): number
    -- Computes the height from the ground of a given point.
    -- Returns >0 when the point is above ground, <0 when below.
    -- Assumes the point is close to the ground.
    local origin = cf.Position + Vector3.yAxis * 3
    local dir = -Vector3.yAxis * 100
    local hit = workspace:Spherecast(origin, spherecastRadius, dir, rcp)
    if hit then
        return (cf.Position - hit.Position).Y
    end
    return 0
end

local function moveRoot(dt, pose, mask)
    -- Moves the root of the character to improve foot placement.
    local targetHeightAdjustment = 0
    if isIdle then
        -- we want the higher-foot to be on the ground such that the lower can be moved up
        local footJointL = pose:GetArticulatedJoint(ikParamsL.endEffector .. "Attachment", mmask)
        local footJointR = pose:GetArticulatedJoint(ikParamsR.endEffector .. "Attachment", mmask)
        if not footJointL or not footJointR then
            return
        end
        local footCfL = footJointL.CFrameInWorldSpace
        local footCfR = footJointR.CFrameInWorldSpace
        local heightL = heightFromGround(footCfL)
        local heightR = heightFromGround(footCfR)
        targetHeightAdjustment = -math.max(heightL, heightR)
        targetHeightAdjustment = math.clamp(targetHeightAdjustment, -maxHeightAdjustment, maxHeightAdjustment)
        targetHeightAdjustment += rootAdjustmentBias
    end
    currentHeightAdjustment = Util.linearSmooth(currentHeightAdjustment, targetHeightAdjustment, maxHeightAdjustmentVelocity, dt)

    local rootOffsetCf = CFrame.new(Vector3.new(0, currentHeightAdjustment, 0))
    local rootJoint = pose:GetArticulatedJoint("LowerTorso", mmask)
    if rootJoint then
        rootJoint.CFrameInLocalSpace = rootOffsetCf * rootJoint.CFrameInLocalSpace
    end
end

local function doIdleScan(dt, scan, rcr)
    if isIdle then
        if scan.Time < maxScanDuration and rcr then
            scan.Time += dt
            local a = dt / scan.Time
            scan.Position = scan.Position:Lerp(rcr.Position, a)
            scan.Normal = scan.Normal:Lerp(rcr.Normal, a)
        end
    else
        scan.Position = Vector3.zero
        scan.Normal = Vector3.zero
        scan.Time = 0
    end
end

local function doGrounding(ik, pose, scan)
    -- Performs grounding to modify the character foot placement.

    local rootJoint = pose:GetArticulatedJoint(ik.chainRoot, mmask)
    local eeffJoint = pose:GetArticulatedJoint(ik.endEffector .. "Attachment", mmask)
    if not rootJoint or not eeffJoint then
        ik.enabled = false
        return
    end
    ik.enabled = true

    local rootCFrame = rootJoint.CFrameInWorldSpace
    local eeffCFrame = eeffJoint.CFrameInWorldSpace

    -- NOTES: the character pose should be already reset and overwritten by the animation
    local origin = rootCFrame.Position
    local dir = (eeffCFrame.Position - origin)

    local targetCFrame: CFrame = nil
    local hit = nil

    if scan.Time < maxScanDuration then
        if DEBUG then
            gizmos:AddLine(origin, origin +  dir * raycastDistanceMultiplier)
        end
        hit = workspace:Spherecast(origin, spherecastRadius, dir * raycastDistanceMultiplier, rcp)
    else
        hit = scan
    end

    if hit then
        local rotationAdjustment = Util.CFrameFromVectors(Vector3.yAxis, hit.Normal)
        targetCFrame = rotationAdjustment * eeffCFrame.Rotation + hit.Position

        -- prevent ik if too much correction
        local tooMuchTranslation = (targetCFrame.Position - eeffCFrame.Position).Magnitude
            > maxTranslationCorrection
        local angleRad = Vector3.yAxis:Angle(hit.Normal)
        local tooMuchRotation = math.deg(angleRad) > maxRotationCorrectionDeg
        if tooMuchTranslation or tooMuchRotation then
            targetCFrame = nil
        end
    end

    if targetCFrame then
        ik.target = targetCFrame -- WorldCFrame
    else
        ik.target = eeffCFrame -- WorldCFrame
    end

    return hit
end

local function doAutopole(ik, pose, limbtype)
    local rootJoint = pose:GetArticulatedJoint(ik.chainRoot, mmask)
    local eeffJoint = pose:GetArticulatedJoint(ik.endEffector, mmask) -- NOTE: not using Attachment
    if not rootJoint or not eeffJoint then
        return
    end
    local rootCFrame = rootJoint.CFrameInWorldSpace
    local eeffCFrame = eeffJoint.CFrameInWorldSpace
    ik.pole = Autopole.getInferredPolePosition(hrp, eeffCFrame, rootCFrame, limbtype)
end

local function setEeffOffset(pose, ik)
    local joint = pose:GetArticulatedJoint(ik.endEffector .. "Attachment", mmask)
    if joint then
        ik.endEffectorOffset = joint.CFrameInLocalSpace
    end
end

---------------------------------------------------------------------------------

local Workspace = game:GetService("ReplicatedStorage").RobloxCharacterPackages.MotionCompositor
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

type FootPlanting = Types.ExtendLayer<{ __accumulatedTime: number }>
local FootPlanting: FootPlanting = Layer:extend("FootPlanting")

function FootPlanting:init()
    self.__accumulatedTime = 0

    ikParamsL = createFootIkParams("LeftFoot", "LeftUpperLeg", "groundingL", "LegL")
    ikParamsR = createFootIkParams("RightFoot", "RightUpperLeg", "groundingR", "LegR")

    character = self.context.character
    humanoid = character:WaitForChild("Humanoid")
    hrp = character:WaitForChild("HumanoidRootPart")

    assert(character and humanoid and hrp, "Character is missing Humanoid or Hrp")

    maxTranslationCorrection = math.clamp(humanoid.HipHeight * 0.4, 0.1, 1.5)

    rcp = RaycastParams.new()
    rcp.IgnoreWater = true
    rcp.FilterDescendantsInstances = character:GetDescendants()
    rcp.FilterType = Enum.RaycastFilterType.Exclude

    if DEBUG then
        gizmos = Instance.new("WireframeHandleAdornment")
        gizmos.Name = "gizmos"
        gizmos.Parent = workspace
        gizmos.Color3 = Color3.new(1, 0, 0)
        gizmos.Adornee = workspace
    end
end

function FootPlanting:update(dt: number)
    if DEBUG then
        gizmos:Clear()
    end
    mydt = dt
    self.__accumulatedTime += dt
    if #self.children == 1 then
        self.children[1]:update(dt)
    end

    local groundingEnabled = computeGroundingEnabled()
    local targetWeight = groundingEnabled and 1 or 0
    updateTargetWeight(ikParamsL, targetWeight, dt)
    updateTargetWeight(ikParamsR, targetWeight, dt)

    computeIdle(self.__accumulatedTime)
end

function FootPlanting:evaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateRestPose()

    mmask = mask

    if adjustRoot then
        moveRoot(mydt, pose)
    end
    local rcrL = doGrounding(ikParamsL, pose, scanL)
    local rcrR = doGrounding(ikParamsR, pose, scanR)

    doIdleScan(mydt, scanL, rcrL)
    doIdleScan(mydt, scanR, rcrR)

    doAutopole(ikParamsL, pose, "legL")
    doAutopole(ikParamsR, pose, "legR")

    setEeffOffset(pose, ikParamsL)
    setEeffOffset(pose, ikParamsR)

    pose:SolveIk(ikParamsL)
    pose:SolveIk(ikParamsR)
    mmask = nil

    return pose
end

function FootPlanting:__resetInternal()
    self.__accumulatedTime = 0
end

return FootPlanting :: Types.Layer