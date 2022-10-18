--[[ OffFloorJumping Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local OffFloorJumping = baseTransition:extend()
OffFloorJumping.name = script.Name
OffFloorJumping.destinationName = "FreeFall"
OffFloorJumping.sourceName = "Jumping"
OffFloorJumping.priority = 3

function OffFloorJumping:Test(stateMachine)
	return not stateMachine.context.humanoid.OnFloor
end

return OffFloorJumping