--[[ NoNeck Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local NoNeck = baseTransition:extend()
NoNeck.name = script.Name
NoNeck.destinationName = "Dead"
NoNeck.sourceName = "Climbing, FallingDown, FreeFall, GettingUp, Jumping, Landed, Physics, PlatformStanding, Ragdoll, Running, Seated, Swimming"
NoNeck.priority = 3

function NoNeck:Test(stateMachine)
	return false
end

return NoNeck
