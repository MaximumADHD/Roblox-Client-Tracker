--[[ AwayLdr Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local AwayLdr = baseTransition:inherit()
AwayLdr.name = script.Name
AwayLdr.destinationName = "Running"
AwayLdr.sourceName = "Climbing"
AwayLdr.priority = 3

function AwayLdr:Test(stateMachine)
    local climbSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.ClimbSensor
    return climbSensor.SensedPart == nil
end

return AwayLdr
