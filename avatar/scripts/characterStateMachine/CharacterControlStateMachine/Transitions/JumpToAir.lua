--[[ JumpToAir Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local JumpToAir = baseTransition:extend()
JumpToAir.name = script.Name
JumpToAir.destinationName = "Air"
JumpToAir.sourceName = "Jump"
JumpToAir.priority = 5

function JumpToAir:Test(stateMachine)
	return stateMachine.currentState.Timer > 0.1
end

return JumpToAir
