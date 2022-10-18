--[[ Jumping State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Jumping = baseState:extend()
Jumping.name = script.Name
Jumping.humanoidState = Enum.HumanoidStateType.Jumping 
Jumping.timerCount = 0.5

function Jumping:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	stateMachine.context.timer = self.timerCount	
end

function Jumping:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)

	stateMachine.context.timer = stateMachine.context.timer - dt
end


return Jumping