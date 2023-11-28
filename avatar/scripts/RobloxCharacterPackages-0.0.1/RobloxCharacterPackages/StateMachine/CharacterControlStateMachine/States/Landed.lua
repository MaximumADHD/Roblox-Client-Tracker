--[[ Landed State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Landed = baseState:inherit()
Landed.name = script.Name
Landed.humanoidState = Enum.HumanoidStateType.Landed
Landed.activeController = "RunningController"
Landed.timerCount = 0.05
Landed.isEnabled = true

function Landed:OnEnter(stateMachine)
    baseState.OnEnter(self, stateMachine)

    stateMachine.context.timer = self.timerCount
end

function Landed:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)

    stateMachine.context.timer = stateMachine.context.timer - dt
end

return Landed
