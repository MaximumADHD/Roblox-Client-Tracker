--[[ OffFloorJumping Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local OffFloorJumping = baseTransition:inherit()
OffFloorJumping.name = script.Name
OffFloorJumping.destinationName = "Freefall"
OffFloorJumping.sourceName = "Jumping"
OffFloorJumping.priority = 3

function OffFloorJumping:Test(stateMachine)
    local groundSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.GroundSensor
    return groundSensor.SensedPart == nil
end

return OffFloorJumping
