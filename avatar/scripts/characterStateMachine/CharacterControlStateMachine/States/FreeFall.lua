--[[ FreeFall State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local FreeFall = baseState:extend()
FreeFall.name = script.Name
FreeFall.humanoidState = Enum.HumanoidStateType.Freefall 

function FreeFall:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)

	local humanoid = stateMachine.context.humanoid
	
	local moveDir = humanoid.MoveDirection
	if moveDir.Magnitude < 0.1 then		
		stateMachine.context.controllerManager.MovingDirection = Vector3.zero
	else		
		stateMachine.context.controllerManager.MovingDirection = moveDir
	end
	
	if humanoid.AutoRotate then
		if stateMachine.context.controllerManager.MovingDirection.Magnitude > 0 then
			stateMachine.context.controllerManager.FacingDirection = stateMachine.context.controllerManager.MovingDirection.Unit
		end
	end
end



return FreeFall