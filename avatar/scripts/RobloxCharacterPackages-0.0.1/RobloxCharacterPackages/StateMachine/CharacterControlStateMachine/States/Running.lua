--[[ Ground State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Running = baseState:inherit()
Running.name = script.Name
Running.humanoidState = Enum.HumanoidStateType.Running
Running.activeController = "RunningController"
Running.isEnabled = true

function Running:OnEnter(stateMachine)
    baseState.OnEnter(self, stateMachine)

    local controllerManager = stateMachine.context.controllerManager
    if not controllerManager then
        return
    end

    local rootPart = stateMachine.context.rootPart
    if rootPart then
        controllerManager.FacingDirection = rootPart.CFrame.LookVector
    end
end

function Running:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)

    if stateMachine.context.rootMotion then
        return
    end

    local controllerManager = stateMachine.context.controllerManager
    if not controllerManager then
        return
    end

    local moveDir = stateMachine.context.MoveDirection
    local movementInput = moveDir.Magnitude > 0.1
    if movementInput then
        controllerManager.MovingDirection = moveDir
    else
        controllerManager.MovingDirection = Vector3.zero
    end

    local humanoid = stateMachine.context.humanoid
    if humanoid and not humanoid.AutoRotate then
        return
    end

    if movementInput then
        controllerManager.FacingDirection = controllerManager.MovingDirection.Unit
    else
        local rootPart = stateMachine.context.rootPart
        if rootPart then
            controllerManager.FacingDirection = rootPart.CFrame.LookVector
        end
    end
end

return Running
