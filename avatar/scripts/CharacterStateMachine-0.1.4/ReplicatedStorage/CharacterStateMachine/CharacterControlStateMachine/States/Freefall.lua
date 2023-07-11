--[[ Freefall State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Freefall = baseState:inherit()
Freefall.name = script.Name
Freefall.humanoidState = Enum.HumanoidStateType.Freefall
Freefall.activeController = "AirController"
Freefall.isEnabled = true

function Freefall:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	local humanoid = stateMachine.context.humanoid
	if humanoid then
		local rootPart = humanoid.Parent.PrimaryPart
		if rootPart then
			stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
		end
	end	
end

function Freefall:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)
end



return Freefall