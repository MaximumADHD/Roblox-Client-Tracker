--[[ FaceLdr Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local FaceLdr = baseTransition:extend()
FaceLdr.name = script.Name
FaceLdr.destinationName = "Climbing"
FaceLdr.sourceName = "FreeFall, Running"
FaceLdr.priority = 3

function FaceLdr:Test(stateMachine)
	return stateMachine.context.humanoid.FacingLadder
end

return FaceLdr