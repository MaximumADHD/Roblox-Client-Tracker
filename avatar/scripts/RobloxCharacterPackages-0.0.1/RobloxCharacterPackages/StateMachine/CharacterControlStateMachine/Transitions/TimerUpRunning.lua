--[[ TimerUpRunning Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local TimerUpRunning = baseTransition:inherit()
TimerUpRunning.name = script.Name
TimerUpRunning.destinationName = "Running"
TimerUpRunning.sourceName = "Landed"
TimerUpRunning.priority = 3

function TimerUpRunning:Test(stateMachine)
    return stateMachine.context.timer < 0.0
end

return TimerUpRunning
