-- FootPlanting - V0.30

--[[
TODO:
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - sticky feet: prevent small changes while idle from modifying the feet positions

TODO COMPOSITOR:
  - remove isIdle computation
--]]

--------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Utils = ReplicatedStorage.AnimateDependencies.Utils
local SmoothDamp = require(Utils.SmoothDamp)
local Util = require(Utils.Util)
local AnimationLibrary = ReplicatedStorage.AnimateDependencies.AnimationLibrary
local Gizmos = require(Utils.Gizmos)
local Layer = require(AnimationLibrary.Base.Layer)
local Types = require(AnimationLibrary.Base.types)

type FootPlanting = Types.ExtendLayer<{ __accumulatedTime: number }>
local FootPlanting: FootPlanting = Layer:extend("FootPlanting")

FootPlanting.defaultProps = {
    linearVelocity = Vector3.zero,
    angularVelocity = Vector3.zero,
    state = Enum.HumanoidStateType.Running,
}

local ENABLED = true
local DEBUG = false
local mainThreadFunctions = {}

-- Constants
-- raycast
local raycastDistanceMultiplier = 1.01
local spherecastRadius = 0.3

-- root adjustment
local adjustRoot = true
local maxHeightAdjustment = 1.2
local maxHeightAdjustmentVelocity = 5
local heightAdjustmentSmoothTime = 0.2
local maxPlatformRootAdjustmentHeight = 1.5
local rootAdjustmentBias = -0.05

-- idle
local maxDisplacementForIdle = 0.1
local maxRotationForIdle = 0.1
local maxVelocityForIdle = 0.2
local maxAngularVelocityForIdle = 0.1
local idleDelay = 0

-- fade
local weightSmoothTime = 0.3
local movementSpeedFadeStart = 4
local movementSpeedFadeEnd = 8

-- misc
local maxTranslationHipHeightPercentage = 0.6
local maxRotationCorrectionDeg = 45
local maxScanDuration = 0.3
local smoothTime = 0.04
local kneeShiftZ = 3
local relativeFootAttachmentHeightTolerance = 0.2
local footAttachmentRotationAngleToleranceDeg = 10

--------------------------------------------------------------------------------

local function runOnMainThread(fn)
    table.insert(mainThreadFunctions, fn)
end

function FootPlanting:createFootIkParams(eeffName, rootName, ikName, limbName)
    local ikparams = {
        Mode = Enum.IKControlType.Transform,
        EndEffector = eeffName,
        ChainRoot = rootName,
        Target = CFrame.new(), -- to be set each frame

        Weight = 1,
        PoleWeight = 1,
        Enabled = true,
    }
    return ikparams
end

function FootPlanting:isStateEnabled()
    local state = self.props.state
    return state == Enum.HumanoidStateType.Running
        or state == Enum.HumanoidStateType.Landed
        or state == Enum.HumanoidStateType.PlatformStanding
    --state == "Idle" or state == "Locomoting" or state == "Crouch" or state == "Landed"
end

function FootPlanting:getTargetWeight()
    -- fades out when moving fast
    local vel = self.props.linearVelocity
    local movementSpeed = vel.Magnitude
    local maxSpeed = (movementSpeedFadeStart + movementSpeedFadeEnd) / 2
    return if movementSpeed >= maxSpeed or self.context.lod > 0 then 0 else 1
end

local function angleBetween(a: CFrame, b: CFrame)
    local axis, angle = (a.Rotation:Inverse() * b.Rotation):ToAxisAngle()
    return angle
end

local function areSimilar(a: CFrame, b: CFrame, maxPos: number, maxRot: number)
    return a
        and b
        and (a.Position - b.Position).Magnitude <= maxPos
        and angleBetween(a, b) <= maxRot
end

function FootPlanting:computeIdle(t)
    --local state = self.props.state
    --return state == "Idle"
    -- Checks whether a character is in the idle state.
    local vel = self.props.linearVelocity
    local angularVel = self.props.angularVelocity
    local hrpCf = self.hrpCf

    local ans = self:isStateEnabled()
        and vel.Magnitude < maxVelocityForIdle
        and angularVel.Magnitude < maxAngularVelocityForIdle
        and areSimilar(hrpCf, self.lastNotIdleCFrame, maxDisplacementForIdle, maxRotationForIdle)
        and self.previousState == self.props.state
    if not ans then
        self.lastNotIdleTime = t
        self.lastNotIdleCFrame = hrpCf
        self.previousState = self.props.state
    end
    self.isIdle = ans and (t > self.lastNotIdleTime + idleDelay)
end

function FootPlanting:WorldCFrame(joint)
    -- NOTES: using the commented code causes jitter because there is a random delay in the Hrp that is stored
    -- in the compositor, which is used to compute world space data.
    -- TODO: Replace calls to this function with the commented code once that is fixed.
    local ans = joint.WorldCFrame
    --local ans = self.hrpCf * joint.ModelCFrame
    assert(Util.isFinite(ans), "ArticulatedJoint.WorldCFrame failed")
    return ans
end

function FootPlanting:heightFromGround(ik, hit): number
    if not hit then
        return math.huge
    end
    local eeffCf = self:WorldCFrame(ik.data.eeffJoint)
    return eeffCf.Position.y - hit.Position.y
end

function FootPlanting:getJoints(ik)
    ik.data.rootJoint = self.pose:GetArticulatedJoint(ik.ChainRoot, self.mask)
    local attachmentName = if ik.data.useNewAttachment then "NewAttachment" else "Attachment"
    ik.data.eeffJoint = self.pose:GetArticulatedJoint(ik.EndEffector .. attachmentName, self.mask)
    local midName = if Util.startsWith(ik.EndEffector, "L") then "LeftLowerLeg" else "RightLowerLeg"
    ik.data.midJoint = self.pose:GetArticulatedJoint(midName, self.mask)

    if not ik.data.rootJoint or not ik.data.eeffJoint or not ik.data.midJoint then
        ik.Enabled = false
        return
    end
    ik.Enabled = true
end

function FootPlanting:doRootAdjustment()
    -- Moves the root of the character to improve foot placement.
    local targetHeightAdjustment = 0
    if self.isIdle then
        -- we want the higher-foot to be on the ground such that the lower can be moved up
        local heightL = self:heightFromGround(self.ikParamsL, self.hitL)
        local heightR = self:heightFromGround(self.ikParamsR, self.hitR)
        if heightL > maxPlatformRootAdjustmentHeight then
            heightL = 0
        end
        if heightR > maxPlatformRootAdjustmentHeight then
            heightR = 0
        end
        targetHeightAdjustment = -math.max(heightL, heightR)
        targetHeightAdjustment =
            math.clamp(targetHeightAdjustment, -maxHeightAdjustment, maxHeightAdjustment)
        targetHeightAdjustment += rootAdjustmentBias
        if DEBUG then
            Gizmos:Log("heightL=", heightL)
            Gizmos:Log("heightR=", heightR)
            Gizmos:Log("heightAdjust=", targetHeightAdjustment)
        end
    end
    self.currentHeightAdjustment =
        self.heightAdjustmentSmoother:update(targetHeightAdjustment, self.dt)
    --self.currentHeightAdjustment *= self.fpWeight

    local rootOffsetCf = CFrame.new(0, self.currentHeightAdjustment, 0)
    local rootJoint = self.pose:GetArticulatedJoint("LowerTorso", self.mask)
    if DEBUG then
        local pos = rootJoint.WorldCFrame.Position
        Gizmos:SetColor("white")
        Gizmos:DrawSphere(pos, 0.05)
        Gizmos:DrawRay(pos, Vector3.yAxis * self.currentHeightAdjustment)
    end
    if rootJoint then
        rootJoint.LocalCFrame = rootOffsetCf * rootJoint.LocalCFrame
    end
end

function FootPlanting:doRaycast(ik, scan)
    if not ik.Enabled then
        return nil
    end
    -- Finds the ground poisitions
    -- NOTES: the character pose should be already reset and overwritten by the animation
    local rootCFrame = self:WorldCFrame(ik.data.rootJoint)
    local eeffCFrame = self:WorldCFrame(ik.data.eeffJoint)

    local origin = rootCFrame.Position
    local dir = (eeffCFrame.Position - origin)
    local maxDistance = dir.Magnitude * raycastDistanceMultiplier
    maxDistance += self.currentHeightAdjustment / dir.Unit:Dot(Vector3.yAxis)
    dir = dir.Unit * 100

    local hit = nil
    if scan.Time < maxScanDuration then
        hit = workspace:Spherecast(origin, spherecastRadius, dir, self.rcp)
    else
        hit = scan
    end

    if DEBUG then
        Gizmos:DrawCFrame(rootCFrame, 0.2)
        Gizmos:DrawCFrame(eeffCFrame, 0.2)
        if hit and hit.Distance <= maxDistance then
            Gizmos:SetColor("green")
            Gizmos:DrawRay(origin, dir.Unit * maxDistance)
            Gizmos:DrawCircle(hit.Position, 0.15, hit.Normal)
            Gizmos:DrawRay(hit.Position, hit.Normal * 0.3)
        else
            Gizmos:SetColor("red")
            Gizmos:DrawRay(origin, dir.Unit * maxDistance)
        end
    end

    ik.data.maxDist = maxDistance
    return hit
end

function FootPlanting:doGrounding(ik, hit)
    if not ik.Enabled then
        return
    end
    -- Performs grounding to modify the character foot placement.
    local eeffCFrame = self:WorldCFrame(ik.data.eeffJoint)
    local targetCFrame: CFrame = nil

    if hit and hit.Distance <= ik.data.maxDist then
        local rotationAdjustment = CFrame.fromRotationBetweenVectors(Vector3.yAxis, hit.Normal)
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
        ik.Target = targetCFrame -- WorldCFrame
    else
        ik.Target = eeffCFrame -- WorldCFrame
    end
end

function FootPlanting:doPole(ik)
    if not ik.Enabled then
        return
    end
    local knee: CFrame = self:WorldCFrame(ik.data.midJoint)
    local kneePos = knee.Position + knee.LookVector * kneeShiftZ
        ik.Pole = kneePos

    if DEBUG then
        local rootCFrame = self:WorldCFrame(ik.data.rootJoint)
        local eeffCFrame = ik.Target

        local mid = (eeffCFrame.Position + rootCFrame.Position) / 2
        local right = self.hrpCf.RightVector
        local fwd = (eeffCFrame.Position - rootCFrame.Position).Unit:Cross(-right)
        local angle = math.deg(fwd:Angle(ik.Pole - mid))

        Gizmos:SetColor("yellow")
        Gizmos:DrawSphere(ik.Pole, 0.1)
        Gizmos:DrawLine(mid, ik.Pole)
        Gizmos:Log("angle=", angle)
        Gizmos:SetColor("white")
        Gizmos:DrawLine(mid, mid + fwd)
    end
end

function FootPlanting:setEeffOffset(ik, isLeft)
    local ankleJointName = (if isLeft then 'Left' else 'Right') .. 'AnkleRigAttachment'
    local footPart = self.character:WaitForChild(ik.EndEffector)
    local ankleAtt = footPart:WaitForChild(ankleJointName)
    local attachmentSuffix = if ik.data.useNewAttachment then "NewAttachment" else "Attachment"
    local soleAtt = footPart:WaitForChild(ik.EndEffector..attachmentSuffix)
    ik.EndEffectorOffset = ankleAtt.CFrame:Inverse() * soleAtt.CFrame
end

function FootPlanting:doSmoothing(ik, smoother)
    if not ik.Enabled then
        return
    end
    local ref = self.hrpCf
    local localCf = ref:Inverse() * ik.Target
    localCf = smoother:update(localCf)
    ik.Target = ref * localCf
end

function FootPlanting:initState()
    self.__accumulatedTime = 0

    self.ikParamsL = self:createFootIkParams("LeftFoot", "LeftUpperLeg", "groundingL", "LegL")
    self.ikParamsR = self:createFootIkParams("RightFoot", "RightUpperLeg", "groundingR", "LegR")
    self.ikDataL = {}
    self.ikDataR = {}
    self.ikParamsL.data = self.ikDataL
    self.ikParamsR.data = self.ikDataR

    self.ikSmootherL = SmoothDamp.newCf(smoothTime)
    self.ikSmootherR = SmoothDamp.newCf(smoothTime)

    self.scanL = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0, Distance = 0 }
    self.scanR = { Position = Vector3.zero, Normal = Vector3.zero, Time = 0, Distance = 0 }

    assert(self.hipHeight >= 0)
    self.maxTranslationCorrection = self.hipHeight * maxTranslationHipHeightPercentage
    self.currentHeightAdjustment = 0
    self.lastNotIdleTime = 0
    self.isIdle = false
    self.heightAdjustmentSmoother =
        SmoothDamp.new(heightAdjustmentSmoothTime, maxHeightAdjustmentVelocity)
end

function FootPlanting:checkValidRig()
    -- checks that all required joints are found and that end-effector attachments exist and are in a reasonable position
    -- if joints are missing, Foot Planting cannot run. If end-efector attachments are missing or incorrect, we fix them.
    local requiredJoints = {
        "LeftUpperLeg",
        "LeftLowerLeg",
        "LeftFoot",
        "RightUpperLeg",
        "RightLowerLeg",
        "RightFoot",
    }
    for _, jointName in ipairs(requiredJoints) do
        local joint = self.character:WaitForChild(jointName)
        if not joint then
            warn(`Rig is missing {jointName}. Foot planting is disabled`)
            self.Enabled = false
            return
        end
    end

    for _, footName in ipairs({ "LeftFoot", "RightFoot" }) do
        local part = self.character:WaitForChild(footName)
        assert(part)
        local att = part:FindFirstChild(footName .. "Attachment")
        local validAtt = true
        if att then
            local size = part.Size
            local diff = math.abs(-att.CFrame.Position.Y - size.Y / 2)
            if diff > size.Y * relativeFootAttachmentHeightTolerance then
                validAtt = false
            end
            local _, angle = att.CFrame:ToAxisAngle()
            local diffAngle = math.abs(math.deg(angle))
            if diffAngle > footAttachmentRotationAngleToleranceDeg then
                validAtt = false
            end
        end
        if not att or not validAtt then
            local ik = if Util.startsWith(footName, "L") then self.ikParamsL else self.ikParamsR
            ik.data.useNewAttachment = true
            if game:GetService("RunService"):IsServer() then
                runOnMainThread(function()
                    local size = part.Size
                    att = Instance.new("Attachment")
                    att.Name = part.name .. "NewAttachment"
                    att.Parent = part
                    att.CFrame = CFrame.new(0, -size.Y / 2, 0)
                end)
            end
        end
    end
    self.Enabled = true
end

---------------------------------------------------------------------------------

function FootPlanting:onInit()
    self.character = self.context.character :: Model
    self.hipHeight = self.character:WaitForChild("Humanoid").HipHeight
    self.hrp = self.character:WaitForChild("HumanoidRootPart", 60)

    local rcp = RaycastParams.new()
    rcp.IgnoreWater = true
    rcp.FilterDescendantsInstances = self.character:GetDescendants()
    rcp.FilterType = Enum.RaycastFilterType.Exclude
    rcp.RespectCanCollide = true
    self.rcp = rcp
    self.fpWeight = 1
    self.timeSinceLastScan = 0

    self:initState()
    self:checkValidRig()
    self:setEeffOffset(self.ikParamsL, true)
    self:setEeffOffset(self.ikParamsR, false)
end

function FootPlanting:onUpdate(dt: number)
    self.dt = dt
    self.__accumulatedTime += dt
    if #self.children == 1 then
        self.children[1]:update(dt)
    end

    local targetWeight = self:getTargetWeight()

    self.fpWeight = Util.clamp01(Util.linearSmooth(self.fpWeight, targetWeight, 2, dt))

    self.ikParamsL.Weight = self.fpWeight
    self.ikParamsR.Weight = self.fpWeight

    self.timeSinceLastScan += dt

    self:computeIdle(self.__accumulatedTime)
end

function FootPlanting:onEvaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateRestPose()

    if not ENABLED or not self.Enabled or not self:isStateEnabled() or self.fpWeight < 0.001 then
        return pose
    end

    self.mask = mask
    self.pose = pose
    self.hrpCf = self.hrp.CFrame -- NOTES: ensures the value is up to date.

    self.ikParamsL.data = self.ikDataL
    self.ikParamsR.data = self.ikDataR

    self:getJoints(self.ikParamsL)
    self:getJoints(self.ikParamsR)

    if self.timeSinceLastScan > 0 then
        self.hitL = self:doRaycast(self.ikParamsL, self.scanL)
        self.hitR = self:doRaycast(self.ikParamsR, self.scanR)
        self.timeSinceLastScan = 0
    end

    if adjustRoot then
        self:doRootAdjustment()
    end
    self:doGrounding(self.ikParamsL, self.hitL)
    self:doGrounding(self.ikParamsR, self.hitR)

    self:doSmoothing(self.ikParamsL, self.ikSmootherL)
    self:doSmoothing(self.ikParamsR, self.ikSmootherR)

    self:doPole(self.ikParamsL)
    self:doPole(self.ikParamsR)

    if DEBUG then
        local hrpPos = self.hrpCf.Position
        Gizmos:SetColor("orange")
        Gizmos:AddToPath("hrpPos", hrpPos, 0.02)
        Gizmos:SetColor("blue")
        Gizmos:AddToPath("targetL", self.ikParamsL.Target.Position, 0.02)
        Gizmos:SetColor("yellow")
        Gizmos:AddToPath("poleL", self.ikParamsL.Pole, 0.02)
        Gizmos:SetColor("red")
        local rootJoint = self.pose:GetArticulatedJoint("LowerTorso", self.mask)
        local lowerTorsoCf = self:WorldCFrame(rootJoint)
        Gizmos:AddToPath("lowerTorso", lowerTorsoCf.Position, 0.02)

        Gizmos:Log("dt=", self.dt)
        Gizmos:Log("fpWeight=", self.fpWeight)
        Gizmos:Log("isidle=", self.isIdle)
        Gizmos:Log("hrp=", self.hrpCf)
    end

    self.ikParamsL.data = nil
    self.ikParamsR.data = nil

    pose:SolveIk(self.ikParamsL)
    pose:SolveIk(self.ikParamsR)

    self.mask = nil
    self.pose = nil

    return pose
end

function FootPlanting:__resetInternal()
    self:initState()
end

local function Update(t, dt)
    -- TODO: Ideally avoid polling and have some event-based mechanism to schedule work on the main thread
    for _, fn in ipairs(mainThreadFunctions) do
        fn()
    end
    mainThreadFunctions = {}
end

function FootPlanting:getLayerWatches()
    return {
        -- NOTES: add here your watches in the format 'key = self.value,'
    }
end

function evaluateCommand(cmd)
    if not cmd then
        return
    end
    -- /fp enabled 0/1 true/false
    -- /fp adjustroot "
    -- /fp debug "
    local tokens = string.split(cmd, " ")
    if #tokens < 2 then
        return
    end
    local fp, fn, val = tokens[1], tokens[2], tokens[3]
    if fp ~= "fp" then
        return
    end
    local value = if val and (val == "1" or val == "true" or val == "True") then true else false
    if fn == "enabled" then
        ENABLED = value
    elseif fn == "adjustroot" then
        adjustRoot = value
    elseif fn == "debug" then
        DEBUG = value
    end
end

-- TODO:Create this from script
--if game:GetService("RunService"):IsClient() then
--    game.ReplicatedStorage.RobloxCharacterPackages:WaitForChild('ConsoleCommandEvent').OnClientEvent:Connect(evaluateCommand)
--end

game:GetService("RunService").Stepped:Connect(Update)

return FootPlanting :: Types.Layer
