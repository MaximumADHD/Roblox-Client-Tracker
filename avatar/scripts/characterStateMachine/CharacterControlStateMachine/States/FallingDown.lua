--[[ FallingDown State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local FallingDown = baseState:inherit()
FallingDown.name = script.Name
FallingDown.humanoidState = Enum.HumanoidStateType.FallingDown 
FallingDown.activeController = ""
FallingDown.timerCount = 3.0

function FallingDown:OnEnter(stateMachine)
	baseState.OnEnter(self, stateMachine)

	stateMachine.context.timer = self.timerCount	
end

function FallingDown:OnStepped(stateMachine, dt)
	baseState.OnStepped(self, stateMachine, dt)
	
	stateMachine.context.timer = stateMachine.context.timer - dt
end

return FallingDown
