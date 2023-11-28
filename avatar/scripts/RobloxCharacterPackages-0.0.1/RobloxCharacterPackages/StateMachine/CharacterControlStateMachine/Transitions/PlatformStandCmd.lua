--[[ PlatformStandCmd Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local PlatformStandCmd = baseTransition:inherit()
PlatformStandCmd.name = script.Name
PlatformStandCmd.destinationName = "PlatformStanding"
PlatformStandCmd.sourceName =
    "Climbing, Freefall, FallingDown, GettingUp, Landed, Running, Jumping, Swimming"
PlatformStandCmd.priority = 3

function PlatformStandCmd:Test(stateMachine)
    return stateMachine.context.humanoid.PlatformStand
end

return PlatformStandCmd
