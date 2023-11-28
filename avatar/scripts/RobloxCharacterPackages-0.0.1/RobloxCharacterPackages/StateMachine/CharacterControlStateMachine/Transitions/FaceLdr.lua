--[[ FaceLdr Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local FaceLdr = baseTransition:inherit()
FaceLdr.name = script.Name
FaceLdr.destinationName = "Climbing"
FaceLdr.sourceName = "Freefall, Running"
FaceLdr.priority = 3

function FaceLdr:Test(stateMachine)
    local climbSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.ClimbSensor
    return climbSensor.SensedPart ~= nil
end

return FaceLdr
