--[[ NoHealth Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local NoHealth = baseTransition:extend()
NoHealth.name = script.Name
NoHealth.destinationName = "Dead"
NoHealth.sourceName = "Climbing, FallingDown, FreeFall, GettingUp, Jumping, Landed, Physics, PlatformStanding, Ragdoll, Running, Seated, Swimming"
NoHealth.priority = 3

function NoHealth:Test(stateMachine)
	local noHealth = stateMachine.context.humanoid.Health <= 0
	return noHealth
end

return NoHealth
