--[[ FreeFall State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local FreeFall = baseState:inherit()
FreeFall.name = script.Name
FreeFall.humanoidState = Enum.HumanoidStateType.Freefall 
FreeFall.activeController = "AirController"

function FreeFall:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	local humanoid = stateMachine.context.humanoid
	if humanoid then
		local rootPart = humanoid.Parent.PrimaryPart
		if rootPart then
			stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
		end
	end	
end

function FreeFall:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)

	local humanoid = stateMachine.context.humanoid
	
	local moveDir = stateMachine.context.MoveDirection
	local movementInput = moveDir.Magnitude > 0.1 
	if movementInput then		
		stateMachine.context.controllerManager.MovingDirection = moveDir
	else		
		stateMachine.context.controllerManager.MovingDirection = Vector3.zero
	end
	
	if humanoid.AutoRotate then
		if movementInput then
			stateMachine.context.controllerManager.FacingDirection = stateMachine.context.controllerManager.MovingDirection.Unit
		else
			local rootPart = humanoid.Parent.PrimaryPart
			if rootPart then
				stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
			end
		end
	end	
end



return FreeFall