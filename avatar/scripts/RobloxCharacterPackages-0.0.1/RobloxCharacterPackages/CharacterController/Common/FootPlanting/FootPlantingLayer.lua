-- FootPlanting - V0.25

--[[
TODO:
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - sticky feet: prevent small changes while idle from modifying the feet positions

TODO COMPOSITOR:
  - remove GROUNDING_ENABLED_STATES and humanoid, get the state from compositor
  - remove isIdle computation
  - remove humanoid/hrp
--]]

--------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Utils = ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils
local Util = require(Utils.Util)
local SmoothDamp = require(Utils.SmoothDamp)
local Autopole = require(script.parent.Autopole)
local Compositor = ReplicatedStorage.RobloxCharacterPackages.MotionCompositor
local Layer = require(Compositor.Base.Layer)
local Types = require(Compositor.Base.types)

type FootPlanting = Types.ExtendLayer<{ __accumulatedTime: number }>
local FootPlanting: FootPlanting = Layer:extend("FootPlanting")

local DEBUG = false
local gizmos: WireframeHandleAdornment = nil

-- Constants
local maxRotationCorrectionDeg = 45
local raycastDistanceMultiplier = 1.01
local maxHeightAdjustment = 0.5 -- units
local maxHeightAdjustmentVelocity = 5 -- units/second
local spherecastRadius = 0.2
local maxVelocityForIdle = 0.2
local maxAngularVelocityForIdle = 0.1
local maxDisplacementForIdle = 0.1
local maxRotationForIdle = 0.1
local weightFadeTime = 0.3
local rootAdjustmentBias = -0.05
local movementSpeedFadeStart = 8
local movementSpeedFadeEnd = 12
local maxScanDuration = 1.5
local idleDelay = 0.05
local adjustRoot = false
local smoothTime = 0.04

local GROUNDING_ENABLED_STATES = {
    [Enum.HumanoidStateType.Running] = true,
    [Enum.HumanoidStateType.Jumping] = true,
    [Enum.HumanoidStateType.Landed] = true,
    [Enum.HumanoidStateType.GettingUp] = true,
}

--------------------------------------------------------------------------------

function FootPlanting:createFootIkParams(eeffName, rootName, ikName, limbName)
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

function FootPlanting:computeGroundingEnabled() : boolean
    -- Computes whether we should perform grounding.
    assert(self.humanoid, "Humanoid is nil")
    local humanoidState = self.humanoid:GetState()
    if GROUNDING_ENABLED_STATES[humanoidState] then
        return true
    end
    return false
end

function FootPlanting:updateTargetWeight(ik, targetWeight)
    ik.weight = Util.linearSmooth(ik.weight, targetWeight, 1 / weightFadeTime, self.dt)
    -- fades out when moving fast
    local movementSpeed = self.hrp.AssemblyLinearVelocity.Magnitude
    local weightMult = Util.remapClamped(movementSpeed, movementSpeedFadeStart, movementSpeedFadeEnd, 1, 0)
    ik.weight *= weightMult
end

local function angleBetween(cf1, cf2)
    local axis, angle = (cf1.Rotation:Inverse() * cf2.Rotation):ToAxisAngle()
    return angle
end

local function areSimilar(cf1, cf2, maxPos, maxRot)
    return cf1 and cf2
        and (cf1.Position-cf2.Position).Magnitude <= maxPos
        and angleBetween(cf1, cf2) <= maxRot
end

function FootPlanting:computeIdle(t)
    -- Checks whether a character is in the idle state.
    assert(self.humanoid, "Humanoid is nil")
    local ans = self.humanoid:GetState() == Enum.HumanoidStateType.Running
        and self.hrp.AssemblyLinearVelocity.Magnitude < maxVelocityForIdle
        and self.hrp.AssemblyAngularVelocity.Magnitude < maxAngularVelocityForIdle
        and areSimilar(self.hrp.AssemblyRootPart.CFrame, self.lastNotIdleCFrame, maxDisplacementForIdle, maxRotationForIdle)
    if not ans then
        self.lastNotIdleTime = t
        self.lastNotIdleCFrame = self.hrp.AssemblyRootPart.CFrame
    end
    self.isIdle = ans and (t > self.lastNotIdleTime + idleDelay)
end

function FootPlanting:heightFromGround(cf) : number
    -- Computes the height from the ground of a given point.
    -- Returns >0 when the point is above ground, <0 when below.
    -- Assumes the point is close to the ground.
    local origin = cf.Position + Vector3.yAxis * 3
    local dir = -Vector3.yAxis * 100
    local hit = workspace:Spherecast(origin, spherecastRadius, dir, self.rcp)
    if hit then
        return (cf.Position - hit.Position).Y
    end
    return 0
end

function FootPlanting:moveRoot()
    -- Moves the root of the character to improve foot placement.
    local targetHeightAdjustment = 0
    if self.sIdle then
        -- we want the higher-foot to be on the ground such that the lower can be moved up
        local footJointL = self.pose:GetArticulatedJoint(self.ikParamsL.endEffector .. "Attachment", self.mask)
        local footJointR = self.pose:GetArticulatedJoint(self.ikParamsR.endEffector .. "Attachment", self.mask)
        if not footJointL or not footJointR then
            return
        end
        local footCfL = footJointL.CFrameInWorldSpace
        local footCfR = footJointR.CFrameInWorldSpace
        local heightL = self:heightFromGround(footCfL)
        local heightR = self:heightFromGround(footCfR)
        targetHeightAdjustment = -math.max(heightL, heightR)
        targetHeightAdjustment = math.clamp(targetHeightAdjustment, -maxHeightAdjustment, maxHeightAdjustment)
        targetHeightAdjustment += rootAdjustmentBias
    end
    self.currentHeightAdjustment = Util.linearSmooth(self.currentHeightAdjustment, targetHeightAdjustment, maxHeightAdjustmentVelocity, self.dt)

    local rootOffsetCf = CFrame.new(Vector3.new(0, self.currentHeightAdjustment, 0))
    local rootJoint = self.pose:GetArticulatedJoint("LowerTorso", self.mask)
    if rootJoint then
        rootJoint.CFrameInLocalSpace = rootOffsetCf * rootJoint.CFrameInLocalSpace
    end
end

function FootPlanting:doIdleScan(scan, rcr)
    if self.isIdle then
        if scan.Time < maxScanDuration and rcr then
            scan.Time += self.dt
            local a = self.dt / scan.Time
            scan.Position = scan.Position:Lerp(rcr.Position, a)
            scan.Normal = scan.Normal:Lerp(rcr.Normal, a)
        end
    else
        scan.Position = Vector3.zero
        scan.Normal = Vector3.zero
        scan.Time = 0
    end
end

function FootPlanting:doGrounding(ik, scan)
    -- Performs grounding to modify the character foot placement.

    local rootJoint = self.pose:GetArticulatedJoint(ik.chainRoot, self.mask)
    local eeffJoint = self.pose:GetArticulatedJoint(ik.endEffector .. "Attachment", self.mask)
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
        hit = workspace:Spherecast(origin, spherecastRadius, dir * raycastDistanceMultiplier, self.rcp)
    else
        hit = scan
    end

    if hit then
        local rotationAdjustment = Util.CFrameFromVectors(Vector3.yAxis, hit.Normal)
        targetCFrame = rotationAdjustment * eeffCFrame.Rotation + hit.Position

        -- prevent ik if too much correction
        local tooMuchTranslation = (targetCFrame.Position - eeffCFrame.Position).Magnitude
            > self.maxTranslationCorrection
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

function FootPlanting:doAutopole(ik, limbtype)
    local rootJoint = self.pose:GetArticulatedJoint(ik.chainRoot, self.mask)
    local eeffJoint = self.pose:GetArticulatedJoint(ik.endEffector, self.mask) -- NOTE: not using Attachment
    if not rootJoint or not eeffJoint then
        return
    end
    local rootCFrame = rootJoint.CFrameInWorldSpace
    local eeffCFrame = eeffJoint.CFrameInWorldSpace
    ik.pole = Autopole.getInferredPolePosition(self.hrp, eeffCFrame, rootCFrame, limbtype)
end

function FootPlanting:setEeffOffset(ik)
    local joint = self.pose:GetArticulatedJoint(ik.endEffector .. "Attachment", self.mask)
    if joint then
        ik.endEffectorOffset = joint.CFrameInLocalSpace
    end
end

function FootPlanting:doSmoothing(ik, smoother)
    local ref = self.hrp.CFrame
    local localCf = ref:Inverse() * ik.target
    localCf = smoother:update(localCf)
    ik.target = ref * localCf
end

function FootPlanting:initState()
    self.__accumulatedTime = 0

    self.ikParamsL = self:createFootIkParams("LeftFoot", "LeftUpperLeg", "groundingL", "LegL")
    self.ikParamsR = self:createFootIkParams("RightFoot", "RightUpperLeg", "groundingR", "LegR")
    
    self.smoothL = SmoothDamp.newCf(smoothTime)
    self.smoothR = SmoothDamp.newCf(smoothTime)
    
    self.scanL = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0 }
    self.scanR = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0 }
    
    self.maxTranslationCorrection = math.clamp(self.humanoid.HipHeight * 0.4, 0.1, 1.5)
    self.currentHeightAdjustment = 0
    self.lastNotIdleTime = 0
    self.isIdle = false
end

---------------------------------------------------------------------------------

function FootPlanting:init()
    self.character = self.context.character :: Model
    self.humanoid = self.character:WaitForChild("Humanoid") :: Humanoid
    self.hrp = self.character:WaitForChild("HumanoidRootPart") :: Part
    assert(self.character and self.humanoid and self.hrp, "Character is missing Humanoid or Hrp")
    
    local rcp = RaycastParams.new()
    rcp.IgnoreWater = true
    rcp.FilterDescendantsInstances = self.character:GetDescendants()
    rcp.FilterType = Enum.RaycastFilterType.Exclude
    self.rcp = rcp

    self:initState()

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
    self.dt = dt
    self.__accumulatedTime += dt
    if #self.children == 1 then
        self.children[1]:update(dt)
    end

    local groundingEnabled = self:computeGroundingEnabled()
    local targetWeight = groundingEnabled and 1 or 0
    self:updateTargetWeight(self.ikParamsL, targetWeight)
    self:updateTargetWeight(self.ikParamsR, targetWeight)

    self:computeIdle(self.__accumulatedTime)
end

function FootPlanting:evaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateRestPose()

    self.mask = mask
    self.pose = pose

    if adjustRoot then
        self:moveRoot()
    end
    local rcrL = self:doGrounding(self.ikParamsL, self.scanL)
    local rcrR = self:doGrounding(self.ikParamsR, self.scanR)

    self:doIdleScan(self.scanL, rcrL)
    self:doIdleScan(self.scanR, rcrR)

    self:doSmoothing(self.ikParamsL, self.smoothL)
    self:doSmoothing(self.ikParamsR, self.smoothR)

    self:doAutopole(self.ikParamsL, "legL")
    self:doAutopole(self.ikParamsR, "legR")

    self:setEeffOffset(self.ikParamsL)
    self:setEeffOffset(self.ikParamsR)

    pose:SolveIk(self.ikParamsL)
    pose:SolveIk(self.ikParamsR)
    
    self.mask = nil
    self.pose = nil

    return pose
end

function FootPlanting:__resetInternal()
    self:initState()
end

function FootPlanting:reset()
    self:__resetInternal()
end

return FootPlanting :: Types.Layer