--[[ OnFloorClimbing Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local OnFloorClimbing = baseTransition:inherit()
OnFloorClimbing.name = script.Name
OnFloorClimbing.destinationName = "Running"
OnFloorClimbing.sourceName = "Climbing"
OnFloorClimbing.priority = 3

OnFloorClimbing.forwardThreshold = -0.01

function OnFloorClimbing:Test(stateMachine)
    local groundSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.GroundSensor
    local onFloor = groundSensor.SensedPart ~= nil -- TODO: Need to check for relative velocity to floor

    if onFloor then
        local moveDir = stateMachine.context.MoveDirection
        local rootPart = stateMachine.context.rootPart
        if rootPart then
            if moveDir:Dot(rootPart.CFrame.LookVector) > OnFloorClimbing.forwardThreshold then
                onFloor = false
            end
        end
    end

    if onFloor then
        stateMachine.context.noFloorTimer = 0
    end
    return onFloor
end

return OnFloorClimbing
