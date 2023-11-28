--[[ Swimming State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Swimming = baseState:inherit()
Swimming.name = script.Name
Swimming.humanoidState = Enum.HumanoidStateType.Swimming
Swimming.activeController = "SwimController"
Swimming.isEnabled = true
Swimming.isAllowed3dMovemment = true

function Swimming:OnCreate(...)
    baseState.OnCreate(self, ...)

    self.armsShouldCollide = true
    self.legsShouldCollide = true
end

function Swimming:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)

    local humanoid = stateMachine.context.humanoid

    local moveDir = stateMachine.context.MoveDirection
    if moveDir.Magnitude < 0.1 then
        stateMachine.context.controllerManager.MovingDirection = Vector3.zero
    else
        stateMachine.context.controllerManager.MovingDirection = moveDir
    end

    if humanoid.AutoRotate then
        if stateMachine.context.controllerManager.MovingDirection.Magnitude > 0 then
            stateMachine.context.controllerManager.FacingDirection =
                stateMachine.context.controllerManager.MovingDirection.Unit
        end
    end
end

return Swimming
