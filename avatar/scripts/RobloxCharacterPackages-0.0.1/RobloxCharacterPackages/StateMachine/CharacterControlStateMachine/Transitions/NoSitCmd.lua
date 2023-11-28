--[[ NoSitCmd Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local NoSitCmd = baseTransition:inherit()
NoSitCmd.name = script.Name
NoSitCmd.destinationName = "Running"
NoSitCmd.sourceName = "Seated"
NoSitCmd.priority = 3

function NoSitCmd:Test(stateMachine)
    local humanoid = stateMachine.context.humanoid
    local seated = humanoid.Sit
    return not seated
end

return NoSitCmd
