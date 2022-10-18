--[[ PlatformStandCmd Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local PlatformStandCmd = baseTransition:extend()
PlatformStandCmd.name = script.Name
PlatformStandCmd.destinationName = "PlatformStanding"
PlatformStandCmd.sourceName = "Climbing, FreeFall, FallingDown, GettingUp, Landed, Running, Jumping, Swimming"
PlatformStandCmd.priority = 3

function PlatformStandCmd:Test(stateMachine)
	return false
end

return PlatformStandCmd
