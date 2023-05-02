--[[ OnFloor Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local OnFloor = baseTransition:inherit()
OnFloor.name = script.Name
OnFloor.destinationName = "Landed"
OnFloor.sourceName = "FreeFall"
OnFloor.priority = 3

function OnFloor:Test(stateMachine)
	local onFloor = false
	local groundSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.GroundSensor
	if groundSensor then
		onFloor = groundSensor.SensedPart ~= nil -- TODO: Need to check for relative velocity to floor
	end
	if onFloor then
		stateMachine.context.noFloorTimer = 0
	end
	return onFloor
end

return OnFloor