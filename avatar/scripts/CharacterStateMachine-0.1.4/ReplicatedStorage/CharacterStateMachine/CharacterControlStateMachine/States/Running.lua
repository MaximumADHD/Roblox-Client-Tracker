--[[ Ground State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Running = baseState:inherit()
Running.name = script.Name
Running.humanoidState = Enum.HumanoidStateType.Running 
Running.activeController = "RunningController"
Running.isEnabled = true

function Running:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	local humanoid = stateMachine.context.humanoid
	if humanoid then
		local rootPart = humanoid.Parent.PrimaryPart
		if rootPart then
			stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
		end
	end	
end

function Running:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)
end


return Running