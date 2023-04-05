--[[ Climbing State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Climbing = baseState:inherit()
Climbing.name = script.Name
Climbing.humanoidState = Enum.HumanoidStateType.Climbing 
Climbing.activeController = "ClimbController"

function Climbing:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)

	local humanoid = stateMachine.context.humanoid

	local moveDir = stateMachine.context.MoveDirection
	-- print(moveDir)

	if moveDir.Magnitude < 0.1 then		
		stateMachine.context.controllerManager.MovingDirection = Vector3.zero
	else
		stateMachine.context.controllerManager.MovingDirection = moveDir
	end

	if humanoid.AutoRotate then
		-- TODO: Face direction of ladder object
	end	
end



return Climbing
