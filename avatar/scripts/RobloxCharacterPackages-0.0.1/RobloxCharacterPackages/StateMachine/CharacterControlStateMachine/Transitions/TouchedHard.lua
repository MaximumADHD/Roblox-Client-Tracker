--[[ TouchedHard Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local TouchedHard = baseTransition:inherit()
TouchedHard.name = script.Name
TouchedHard.destinationName = "Ragdoll"
TouchedHard.sourceName = "Swimming, Running"
TouchedHard.priority = 3

function TouchedHard:Test(stateMachine)
    return false
end

return TouchedHard
