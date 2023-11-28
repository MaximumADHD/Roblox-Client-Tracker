--[[ NoPlatformStandCmd Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local NoPlatformStandCmd = baseTransition:inherit()
NoPlatformStandCmd.name = script.Name
NoPlatformStandCmd.destinationName = "Running"
NoPlatformStandCmd.sourceName = "PlatformStanding"
NoPlatformStandCmd.priority = 3

function NoPlatformStandCmd:Test(stateMachine)
    return not stateMachine.context.humanoid.PlatformStand
end

return NoPlatformStandCmd
