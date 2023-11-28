--[[ TimerUpGettingUp Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local TimerUpGettingUp = baseTransition:inherit()
TimerUpGettingUp.name = script.Name
TimerUpGettingUp.destinationName = "GettingUp"
TimerUpGettingUp.sourceName = "FallingDown, Ragdoll"
TimerUpGettingUp.priority = 3

function TimerUpGettingUp:Test(stateMachine)
    return stateMachine.context.timer < 0.0
end

return TimerUpGettingUp
