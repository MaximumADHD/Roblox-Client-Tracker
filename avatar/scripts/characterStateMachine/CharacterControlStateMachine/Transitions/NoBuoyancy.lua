--[[ NoBuoyancy Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local NoBuoyancy = baseTransition:extend()
NoBuoyancy.name = script.Name
NoBuoyancy.destinationName = "GettingUp"
NoBuoyancy.sourceName = "Swimming"
NoBuoyancy.priority = 3

function NoBuoyancy:Test(stateMachine)
	return not stateMachine.context.humanoid.InWater
end

return NoBuoyancy