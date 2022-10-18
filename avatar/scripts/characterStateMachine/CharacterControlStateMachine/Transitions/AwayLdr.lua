--[[ AwayLdr Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local AwayLdr = baseTransition:extend()
AwayLdr.name = script.Name
AwayLdr.destinationName = "Running"
AwayLdr.sourceName = "Climbing"
AwayLdr.priority = 3

function AwayLdr:Test(stateMachine)
	return not stateMachine.context.humanoid.FacingLadder
end

return AwayLdr