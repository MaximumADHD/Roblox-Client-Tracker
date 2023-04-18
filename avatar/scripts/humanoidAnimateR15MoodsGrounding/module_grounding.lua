-- Module Grounding - V0.18

--[[
TODO:
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - sticky feet: prevent small changes while idle from modifying the feet positions
--]]

--------------------------------------------------------------------------------

-- Constants
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
local movementSpeedFadeStart = 8
local movementSpeedFadeEnd = 12

local GROUNDING_ENABLED_STATES = {
    [Enum.HumanoidStateType.Running] = true,
    [Enum.HumanoidStateType.Jumping] = true,
    [Enum.HumanoidStateType.Landed] = true,
    [Enum.HumanoidStateType.GettingUp] = true,
}

-- Variables
local character = nil
local ikControlL : IKControl
local ikControlR : IKControl
local rcp : RaycastParams
local currentHeightAdjustment = 0

--------------------------------------------------------------------------------

-- Helper Functions

local function Collinear(a : Vector3, b : Vector3) : bool
    -- returns whether the two vectors are collinear
    return a:Cross(b):FuzzyEq(Vector3.zero)
end

local function GetTangents(input : Vector3)
    -- returns two vectors perpendicular to the input and themselves
    local Z = input.Unit 
    local Xd
    if math.abs(Z.x) < 0.9 then Xd = Vector3.xAxis else Xd = Vector3.yAxis end
    local X = (Xd - (Z * Z:Dot(Xd))).Unit
    local Y = Z:Cross(X)
    return X, Y
end

local function CFrameFromVectors(a : Vector3, b : Vector3)
    -- returns a CFrame containing the rotation from vector a to b
    if not Collinear(a, b) then
        local axis = a:Cross(b)
        local angleRad = a:Angle(b)
        return CFrame.fromAxisAngle(axis, angleRad)
    end
    return CFrame.new()
end

local function Smooth(value, target, maxVelocity, dt : number)
    -- returns the value smoothed towards target with maximum velocity
    local desiredChange = target - value
    local maxChange = maxVelocity * dt
    local change = math.clamp(desiredChange, -maxChange, maxChange)
    return value + change
end

local function ComputeMotor6dFkPose(motor : Motor6D) : CFrame
    -- computes the forward kinematics pose of a motor (before physics runs)
    -- Notes: doesn't work on R6
    local transform = CFrame.new()
    while motor do
        local parentPart = motor.Part0
        local parentMotor = parentPart:FindFirstChildOfClass("Motor6D")
        if parentMotor then
            local objectToParent = parentMotor.C1:Inverse() * motor.C0 * motor.Transform
            transform = objectToParent * transform
        else
            transform = parentPart.CFrame * motor.C0 * motor.Transform * transform
        end
        motor = parentMotor
    end
    return transform
end

--------------------------------------------------------------------------------

local function CreateFootIkControl(character : Model, eeffName, rootName, ikName, limbName)
    -- creates an ik on the character with given endeffector, root and a new target
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

local function ComputeGroundingEnabled()
    -- computes whether we should perform grounding
    if character.Humanoid then
        local humanoidState = character.Humanoid:GetState()
        if GROUNDING_ENABLED_STATES[humanoidState] then
            return true
        end
    end
    return false
end

local function UpdateTargetWeight(ik : IKControl, targetWeight, dt)
    ik.Weight = Smooth(ik.Weight, targetWeight, 1 / weightFadeTime, dt)
end

local function ComputeCharacterCf(instance : Instance)
    -- computes the CFrame of a given joint in an animated character
    if instance:IsA("BasePart") then
        local motor : Motor6D = instance:FindFirstChildOfClass("Motor6D")
        return ComputeMotor6dFkPose(motor)
    elseif instance:IsA("Attachment") then
        local motor : Motor6D = instance.Parent:FindFirstChildOfClass("Motor6D")
        -- ComputeMotor6dFkPose(eeff.Parent:FindFirstChildOfClass("Motor6D")) * eeff.CFrame
        return ComputeMotor6dFkPose(motor) * motor.C1:Inverse() * instance.CFrame
    else
        warn("invalid argument for ComputeCharacterCf")
    end
end

local function IsIdle()
    -- checks whether a character is in the idle state
    if not character or not character.Humanoid then return false end
    local humanoid = character.Humanoid
    return humanoid:GetState() == Enum.HumanoidStateType.Running and humanoid.RootPart.Velocity.Magnitude < maxVelocityForIdle
end

local function HeightFromGround(attachment : Attachment) : number
    -- computes the height from ground of a given point
    -- returns >0 when the point is above ground, <0 when below
    if not attachment then return 0 end
    local attCFrame = ComputeCharacterCf(attachment)
    local hit = workspace:Raycast(attCFrame.Position + Vector3.yAxis * 2, -Vector3.yAxis * 100, rcp)
    if hit then
        return (attCFrame.Position - hit.Position).Y
    end 
    return 0
end

local function MoveRoot(dt)
    -- moves the root of the character to improve foot placement
    local targetHeightAdjustment = 0
    if IsIdle() then
        -- we want the higher-foot to be on the ground such that the lower can be moved up
        local heightL = HeightFromGround(ikControlL.EndEffector)
        local heightR = HeightFromGround(ikControlR.EndEffector)
        targetHeightAdjustment = math.clamp(-math.max(heightL, heightR), -maxHeightAdjustment, maxHeightAdjustment)
        targetHeightAdjustment += rootAdjustmentBias
    end
    currentHeightAdjustment = Smooth(currentHeightAdjustment, targetHeightAdjustment, maxHeightAdjustmentVelocity, dt)

    local rootOffsetCf = CFrame.new(Vector3.new(0, currentHeightAdjustment, 0))
    local motor = character.LowerTorso.Root
    motor.Transform = rootOffsetCf * motor.Transform
end

local function GroundHit(rayOrigin: Vector3, rayDirection: Vector3)
    -- raycasts against the ground to return the hit point
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

local function RemapClamp(a, b, c, d, v)
    -- remaps a value v from range [a,b] to [c,d]
    local t = (v-a)/(b-a)
    t = math.clamp(t, 0, 1)
    return c+(d-c)*t
end

local function DoGrounding(ik : IKControl)
    -- performs grounding to modify the character foot placement
    local root : BasePart = ik.ChainRoot
    local eeff : Attachment = ik.EndEffector
    local target : Attachment = ik.Target
    if not root or not eeff or not target then
        warn("Missing root, endeffector or target.")
        return
    end

    local rootCFrame = ComputeCharacterCf(root)
    local eeffCFrame = ComputeCharacterCf(eeff)

    -- NOTES: the character pose should be already reset and overwritten by the animation
    local origin = rootCFrame.Position
    local dir = (eeffCFrame.Position-origin)

    local targetCFrame : CFrame = nil
    local hit = GroundHit(origin, dir * raycastDistanceMultiplier)
    if hit then
        local rotationAdjustment = CFrameFromVectors(Vector3.yAxis, hit.Normal)
        targetCFrame = rotationAdjustment * eeffCFrame.Rotation + hit.Position

        -- prevent ik if too much correction
        local toomuchTranslation = (targetCFrame.Position-eeffCFrame.Position).Magnitude > maxTranslationCorrection
        local angleRad = Vector3.yAxis:Angle(hit.Normal)
        local toomuchRotation = math.deg(angleRad) > maxRotationCorrectionDeg
        if toomuchTranslation or toomuchRotation then
            targetCFrame = nil
        end
    end

    if targetCFrame then
        target.WorldCFrame = targetCFrame
    else
        target.WorldCFrame = eeffCFrame
    end
    local movementSpeed = character.Humanoid.RootPart.Velocity.Magnitude
    local weightMult = RemapClamp(movementSpeedFadeStart, movementSpeedFadeEnd, 1, 0, movementSpeed)
    ik.Weight *= weightMult
end

--------------------------------------------------------------------------------

local function Start(_character : Model)
    -- runs once at the beginning
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
    -- runs every frame
    local groundingEnabled = ComputeGroundingEnabled()
    local targetWeight = groundingEnabled and 1 or 0
    UpdateTargetWeight(ikControlL, targetWeight, dt)
    UpdateTargetWeight(ikControlR, targetWeight, dt)

    MoveRoot(dt)
    DoGrounding(ikControlL)
    DoGrounding(ikControlR)
end

--------------------------------------------------------------------------------

local grounding = {}

function grounding:Init(character : Model)
    -- call this function with your character to enable grounding
    Start(character)
    game:GetService("RunService").Stepped:Connect(Update)
end

return grounding