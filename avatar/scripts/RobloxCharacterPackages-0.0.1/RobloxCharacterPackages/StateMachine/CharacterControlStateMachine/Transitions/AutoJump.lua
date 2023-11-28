--[[ AutoJump Transition ]]
--
local BaseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local AutoJump = BaseTransition:inherit()
AutoJump.name = script.Name
AutoJump.destinationName = "Jumping"
AutoJump.sourceName = "Running"
AutoJump.priority = 3

function AutoJump:Test(stateMachine)
    local autoJump = stateMachine.context.humanoid:GetAttribute("AutoJump") or false
    return autoJump
end

return AutoJump
