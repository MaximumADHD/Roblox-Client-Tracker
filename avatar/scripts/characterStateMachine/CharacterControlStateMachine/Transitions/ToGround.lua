--[[ ToGround Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local ToGround = baseTransition:extend()
ToGround.name = script.Name
ToGround.destinationName = "Ground"
ToGround.sourceName = "Air, Jump"
ToGround.priority = 3

function ToGround:Test(stateMachine)
	if stateMachine:GetCurrentStateName() == "Jump" and stateMachine.currentState.Timer < 0.1 then
		return false
	end
	local floorPart = stateMachine.context.humanoid.LastFloor
	return floorPart ~= nil
end

return ToGround
