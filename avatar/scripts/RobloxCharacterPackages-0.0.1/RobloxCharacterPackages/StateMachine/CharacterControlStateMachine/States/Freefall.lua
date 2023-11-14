--[[ Freefall State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Freefall = baseState:inherit()
Freefall.name = script.Name
Freefall.humanoidState = Enum.HumanoidStateType.Freefall
Freefall.activeController = "AirController"
Freefall.isEnabled = true

function Freefall:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)
	
	local rootPart = stateMachine.context.rootPart
	if rootPart then
		stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
	end
end

function Freefall:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)

	local humanoid = stateMachine.context.humanoid
	
	local moveDir = stateMachine.context.MoveDirection
	local movementInput = moveDir.Magnitude > 0.1 
	if movementInput then		
		stateMachine.context.controllerManager.MovingDirection = moveDir
	else		
		stateMachine.context.controllerManager.MovingDirection = Vector3.zero
	end
	
	if not humanoid.AutoRotate then
		return
	end
	
	if movementInput then
		stateMachine.context.controllerManager.FacingDirection = stateMachine.context.controllerManager.MovingDirection.Unit
	else
		local rootPart = stateMachine.context.rootPart
		if rootPart then
			stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
		end
	end
end



return Freefall