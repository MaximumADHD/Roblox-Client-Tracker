--[[ OffFloorGrace Transition ]]--
local baseTransition = require(script.Parent.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseTransitionModule"))

local OffFloorGrace = baseTransition:extend()
OffFloorGrace.name = script.Name
OffFloorGrace.destinationName = "FreeFall"
OffFloorGrace.sourceName = "Jumping, Landed, Running"
OffFloorGrace.priority = 3

OffFloorGrace.delay = 0.125

function OffFloorGrace:Test(stateMachine)
	local onFloor = stateMachine.context.humanoid.OnFloor -- TODO: Need to check for relative velocity to floor
	if onFloor then
		stateMachine.context.noFloorTimer = 0
	end
	return stateMachine.context.noFloorTimer > OffFloorGrace.delay 
end

return OffFloorGrace