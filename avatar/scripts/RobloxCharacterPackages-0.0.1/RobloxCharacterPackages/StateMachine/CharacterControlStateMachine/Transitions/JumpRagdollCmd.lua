--[[ JumpRagdollCmd Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local JumpRagdollCmd = baseTransition:inherit()
JumpRagdollCmd.name = script.Name
JumpRagdollCmd.destinationName = "GettingUp"
JumpRagdollCmd.sourceName = "Ragdoll"
JumpRagdollCmd.priority = 3

function JumpRagdollCmd:Test(stateMachine)
    local jumped = stateMachine.context.humanoid.Jump
    return jumped
end

return JumpRagdollCmd
