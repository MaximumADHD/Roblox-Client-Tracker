--[[ HasBuoyancy Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local HasBuoyancy = baseTransition:extend()
HasBuoyancy.name = script.Name
HasBuoyancy.destinationName = "Swimming"
HasBuoyancy.sourceName = "FallingDown, GettingUp, FreeFall, Landed, Running, Climbing"
HasBuoyancy.priority = 3

function HasBuoyancy:Test(stateMachine)
	return stateMachine.context.humanoid.InWater
end

return HasBuoyancy