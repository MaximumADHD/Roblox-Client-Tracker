--[[ JumpCmd Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)
local sensorAndControllerLoader =
    require(script.Parent.Parent.Parent:WaitForChild("CharacterPhysicsControllerLoader"))
local bodyParts = require(script.Parent.Parent.Parent:WaitForChild("BodyParts"))

local JumpCmd = baseTransition:inherit()
JumpCmd.name = script.Name
JumpCmd.destinationName = "Jumping"
JumpCmd.sourceName = "Swimming, Running, Climbing, Seated, PlatformStanding"
JumpCmd.priority = 3
local noFloorJumpThreshold = 0.13

function JumpCmd:Test(stateMachine)
    local humanoid = stateMachine.context.humanoid
    local jumped = humanoid.Jump
    local currentState = stateMachine:GetCurrentStateName()

    -- check for too steep floor
    local groundSensor: ControllerPartSensor =
        stateMachine.context.humanoid.Parent.HumanoidRootPart.GroundSensor
    local tilt = groundSensor.HitNormal:Dot(Vector3.new(0, 1, 0))
    if
        (tilt > bodyParts.SteepSlopeAngle(humanoid) or currentState == "Running")
        and humanoid.Jump
        and sensorAndControllerLoader.CalculateJumpPower(humanoid) > 0
    then
        return true
    end

    -- no jump if underwater
    local visibleTorso = stateMachine.context.humanoid.Parent:FindFirstChild("UpperTorso")
    if visibleTorso then
        local buoyancySensor = visibleTorso:FindFirstChild("BuoyancySensor")
        if currentState == "Swimming" and buoyancySensor and buoyancySensor.FullySubmerged then
            return false
        end
    end

    -- check if they are off floor for too long
    if
        stateMachine.context.noFloorTimer > noFloorJumpThreshold
        and (currentState == "PlatformStanding" or currentState == "Running")
    then
        return false
    end

    if stateMachine.context.rootPart.Anchored then
        return false
    end

    local climbSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.ClimbSensor
    if currentState == "Climbing" and climbSensor and climbSensor.SensedPart == nil then
        return false
    elseif currentState == "Seated" and humanoid.SeatPart == nil then
        humanoid.Sit = false
        return false
    end

    return jumped
end

return JumpCmd
