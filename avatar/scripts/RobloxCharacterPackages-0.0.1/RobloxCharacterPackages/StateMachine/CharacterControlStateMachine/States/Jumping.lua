--[[ Jumping State ]]
--
local characterStateMachineFolder: Instance = script.Parent.Parent.Parent
local sensorAndControllerLoader =
    require(characterStateMachineFolder:WaitForChild("CharacterPhysicsControllerLoader"))
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Jumping = baseState:inherit()
Jumping.name = script.Name
Jumping.humanoidState = Enum.HumanoidStateType.Jumping
Jumping.activeController = "AirController"
Jumping.timerCount = 0.5
Jumping.isEnabled = true

function Jumping:OnEnter(stateMachine)
    baseState.OnEnter(self, stateMachine)
    local rootPart: BasePart =
        stateMachine.context.humanoid.Parent:FindFirstChild("HumanoidRootPart")
    local newImpulse =
        sensorAndControllerLoader.ComputeLinearImpulseFromJumpPower(stateMachine.context.humanoid)
    rootPart:ApplyImpulse(newImpulse)
    stateMachine.context.timer = self.timerCount
end

function Jumping:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)

    stateMachine.context.timer = stateMachine.context.timer - dt
end

return Jumping
