-- Module Grounding - V0.16

--------------------------------------------------------------------------------

local grounding = {}

--[[
TODO:
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - sticky feet: prevent small changes while idle from modifying the feet positions
--]]

--------------------------------------------------------------------------------
-- Constants
local GROUNDING_ENABLED_STATES = {
    [Enum.HumanoidStateType.Running] = true,
    [Enum.HumanoidStateType.Jumping] = true,
    [Enum.HumanoidStateType.Landed] = true,
    [Enum.HumanoidStateType.GettingUp] = true,
}

local function Collinear(a : Vector3, b : Vector3) : bool
    return a:Cross(b):FuzzyEq(Vector3.zero)
end

local function GetTangents(input : Vector3)
    local Z = input.Unit 
    --Choose another vector not parallel
    local Xd
    if math.abs(Z.x) < 0.9 then Xd = Vector3.xAxis else Xd = Vector3.yAxis end
    -- Remove the part that is parallel to Z
    local X = (Xd - (Z * Z:Dot(Xd))).Unit
    local Y = Z:Cross(X)
    return X, Y
end

local function Smooth(value, target, maxVelocity, dt : number)
    local desiredChange = target - value
    local maxChange = maxVelocity * dt
    local change = math.clamp(desiredChange, -maxChange, maxChange)
    return value + change
end

-- NOTES: This doesn't work on R6
local function ComputeMotor6dFkPose(motor6d : Motor6D) : CFrame
    local transform = CFrame.new()
    while motor6d do
        local parentPart = motor6d.Part0
        local parentMotor = parentPart:FindFirstChildOfClass("Motor6D")
        if parentMotor then
            local objectToParent = parentMotor.C1:Inverse() * motor6d.C0 * motor6d.Transform
            transform = objectToParent * transform
        else
            transform = parentPart.CFrame * motor6d.C0 * motor6d.Transform * transform
        end
        motor6d = parentMotor
    end
    return transform
end

local function CreateFootIkControl(character : Model, eeffName, rootName, ikName, limbName)
    local eeff : BasePart = character:WaitForChild(eeffName)
    local root : BasePart = character:WaitForChild(rootName)

    local target : Attachment = Instance.new("Attachment")
    target.Parent = character:WaitForChild("HumanoidRootPart")
    target.Name = ikName.."_target"

    local eeffAtt : Attachment = eeff:FindFirstChild(eeff.Name.."Attachment")
    if not eeffAtt then warn("The character doesn't have an attachment representing the feet sole") end

    local ik : IKControl = Instance.new("IKControl")
    ik.Parent = character.Humanoid
    ik.Name = ikName
    ik.Type = Enum.IKControlType.Transform
    ik.EndEffector = eeffAtt
    ik.ChainRoot = root
    ik.Target = target
    ik.Enabled = true

    ik:SetAttribute("limbType", limbName)
    return ik
end

-- variables
local character = nil
local ikControlL : IKControl
local ikControlR : IKControl
local rcp : RaycastParams
local currentHeightAdjustment = 0

-- parameters
local maxTranslationCorrection = 1.5 -- studs
local maxRotationCorrectionDeg = 45
local raycastDistanceMultiplier = 1.02
local maxHeightAdjustment = 0.5 -- units
local maxHeightAdjustmentVelocity = 5 -- units/second
local raycastVersion = 2 -- v1==single raycast, 2==multiple raycasts
local rayTangentOffset = 0.1
local maxVelocityForIdle = 0.2
local weightFadeTime = 0.3
local rootAdjustmentBias = -0.05

local function GroundHit(rayOrigin: Vector3, rayDirection: Vector3)
    if raycastVersion == 1 then
        return workspace:Raycast(rayOrigin, rayDirection, rcp)
    else
        local hitCount = 0
        local normalSum = Vector3.zero
        local posSum = Vector3.zero
        local minDist = 10000
        local t0,t1 = GetTangents(rayDirection)
        local l = rayTangentOffset
        local origins = {rayOrigin, rayOrigin+t0*l, rayOrigin+t1*l, rayOrigin-t0*l, rayOrigin-t1*l}
        -- shoot 5 raycasts, pick the best 
        for _,origin in pairs(origins) do
            local hit = workspace:Raycast(origin, rayDirection, rcp)
            if hit then
                hitCount += 1
                posSum += hit.Position
                normalSum += hit.Normal
                minDist = math.min(minDist, hit.Distance)
            end
        end
        if hitCount > 0 then
            --local p = rayOrigin + rayDirection.Unit * minDist
            local p = posSum / hitCount
            local n = (normalSum / hitCount).Unit
            return {Position = p, Normal = n}
        else
            return nil
        end
    end
end


local function ComputeRootCf(ik)
    local root : BasePart = ik.ChainRoot
    local motor : Motor6D = root:FindFirstChildOfClass("Motor6D")
    return ComputeMotor6dFkPose(motor)
end

local function ComputeEeffCf(ik)
    local eeff : Attachment = ik.EndEffector
    local motor : Motor6D = eeff.Parent:FindFirstChildOfClass("Motor6D")
    -- ComputeMotor6dFkPose(eeff.Parent:FindFirstChildOfClass("Motor6D")) * eeff.CFrame
    return ComputeMotor6dFkPose(motor) * motor.C1:Inverse() * eeff.CFrame
end

local function HeightFromGround(ik) : number -- returns >0 when the foot is above ground, <0 when below
    local eeff : Attachment = ik.EndEffector
    if not eeff then return 0 end
    local eeffCFrame = ComputeEeffCf(ik)
    local hit = workspace:Raycast(eeffCFrame.Position + Vector3.yAxis * 10, -Vector3.yAxis * 100, rcp)
    if hit then
        return (eeffCFrame.Position - hit.Position).Y
    end 
    return 0
end

local function IsIdle()
    if not character or not character.Humanoid then return false end
    local humanoid = character.Humanoid
    return humanoid:GetState() == Enum.HumanoidStateType.Running and humanoid.RootPart.Velocity.Magnitude < maxVelocityForIdle
end

local function MoveRoot(dt)
    local targetHeightAdjustment = 0
    if IsIdle() then
        -- we want the higher-foot to be on the ground such that the lower can be moved up
        local hl = HeightFromGround(ikControlL)
        local hr = HeightFromGround(ikControlR)
        targetHeightAdjustment = math.clamp(-math.max(hl, hr), -maxHeightAdjustment, maxHeightAdjustment)
        targetHeightAdjustment += rootAdjustmentBias
    end
    currentHeightAdjustment = Smooth(currentHeightAdjustment, targetHeightAdjustment, maxHeightAdjustmentVelocity, dt)

    local rootOffsetCf = CFrame.new(Vector3.new(0, currentHeightAdjustment, 0))
    local motor = character.LowerTorso.Root
    motor.Transform = rootOffsetCf * motor.Transform
end

local function DoGrounding(ik : IKControl)
    local root : BasePart = ik.ChainRoot
    local eeff : Attachment = ik.EndEffector
    if not root or not eeff then
        print("Missing root or end effector.")
        return
    end
    local target : Attachment = ik.Target
    assert(target, "Target should have been created")

    local rootCFrame = ComputeRootCf(ik)
    local eeffCFrame = ComputeEeffCf(ik)

    -- NOTES: the pose should be already reset and overwritten by the animation
    local origin = rootCFrame.Position
    local dir = (eeffCFrame.Position-origin)

    local hit = GroundHit(origin, dir * raycastDistanceMultiplier)
    if hit then
        -- orientation
        local normal = hit.Normal
        local up = Vector3.yAxis -- -dir

        local targetCFrame = eeffCFrame.Rotation

        local angleRad = 0
        if not Collinear(normal, up) then
            local axis = up:Cross(normal)
            angleRad = up:Angle(normal)
            targetCFrame = CFrame.fromAxisAngle(axis, angleRad) * eeffCFrame.Rotation
        end
        -- position
        targetCFrame = targetCFrame + hit.Position

        -- prevent ik if too much correction
        local toomuchTranslation = (targetCFrame.Position-eeffCFrame.Position).Magnitude > maxTranslationCorrection
        local toomuchRotation = math.deg(angleRad) > maxRotationCorrectionDeg
        if toomuchTranslation or toomuchRotation then
            target.WorldCFrame = eeffCFrame
        else
            target.WorldCFrame = targetCFrame
        end
    else -- not hit
        target.WorldCFrame = eeffCFrame
    end
end

local function UpdateTargetWeight(ik : IKControl, targetWeight, dt)
    ik.Weight = Smooth(ik.Weight, targetWeight, 1 / weightFadeTime, dt)
end

local function ComputeGroundingEnabled()
    if character.Humanoid then
        local humanoidState = character.Humanoid:GetState()
        if GROUNDING_ENABLED_STATES[humanoidState] then
            return true
        end
    end
    return false
end

local function Start(_character : Model)
    character = _character
    ikControlL = CreateFootIkControl(character, "LeftFoot", "LeftUpperLeg", "groundingL", "LegL")
    ikControlR = CreateFootIkControl(character, "RightFoot", "RightUpperLeg", "groundingR", "LegR")

    rcp = RaycastParams.new()
    rcp.IgnoreWater = true
    --rcp.BruteForceAllSlow = true
    rcp.FilterDescendantsInstances = character:GetDescendants()
    rcp.FilterType = Enum.RaycastFilterType.Blacklist

    local hum : Humanoid = character:FindFirstChildOfClass("Humanoid")
    maxTranslationCorrection = math.clamp(hum.HipHeight * 0.4, 0.1, 1.5)
end

local function Update(t, dt)
    local groundingEnabled = ComputeGroundingEnabled()
    local targetWeight = groundingEnabled and 1 or 0
    UpdateTargetWeight(ikControlL, targetWeight, dt)
    UpdateTargetWeight(ikControlR, targetWeight, dt)

    MoveRoot(dt)
    DoGrounding(ikControlL)
    DoGrounding(ikControlR)
end

function grounding:Init(character : Model)
    Start(character)
    game:GetService("RunService").Stepped:Connect(Update)
end

return grounding