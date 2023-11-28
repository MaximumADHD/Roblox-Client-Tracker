--[[ Freefall State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))
local BodyParts = require(script.Parent.Parent.Parent.BodyParts)

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
    -- Set friciton to Zero in freefall
    local humanoid = stateMachine.context.humanoid
    local FRICTION = 0
    local FRICTIONWEIGHT = 100
    stateMachine.context.frictionSettingsChangedInFreeFall = false
    if humanoid and humanoid.parent then
        local torso = humanoid.parent:FindFirstChild("UpperTorso")
        stateMachine.context.torsoFrictionBeforeFreefall = BodyParts.GetFriction(torso)
        stateMachine.context.torsoFrictionWeightBeforeFreefall = BodyParts.GetFrictionWeight(torso)
        BodyParts.SetFriction(torso, FRICTION, FRICTIONWEIGHT)

        local head = humanoid.parent:FindFirstChild("Head")
        stateMachine.context.headFrictionBeforeFreefall = BodyParts.GetFriction(head)
        stateMachine.context.headFrictionWeightBeforeFreefall = BodyParts.GetFrictionWeight(head)
        BodyParts.SetFriction(head, FRICTION, FRICTIONWEIGHT)
        stateMachine.context.frictionSettingsChangedInFreeFall = true
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
        stateMachine.context.controllerManager.FacingDirection =
            stateMachine.context.controllerManager.MovingDirection.Unit
    else
        local rootPart = stateMachine.context.rootPart
        if rootPart then
            stateMachine.context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
        end
    end
end

function Freefall:OnExit(stateMachine)
    local humanoid = stateMachine.context.humanoid
    -- Restore the friction settings
    if humanoid and humanoid.parent and stateMachine.context.frictionSettingsChangedInFreeFall then
        stateMachine.context.frictionSettingsChangedInFreeFall = false
        local torso = humanoid.parent:FindFirstChild("UpperTorso")
        if torso then
            BodyParts.SetFriction(
                torso,
                stateMachine.context.torsoFrictionBeforeFreefall,
                stateMachine.context.torsoFrictionWeightBeforeFreefall
            )
        end

        local head = humanoid.parent:FindFirstChild("Head")
        if head then
            BodyParts.SetFriction(
                head,
                stateMachine.context.headFrictionBeforeFreefall,
                stateMachine.context.headFrictionBeforeFreefall
            )
        end
    end
end

return Freefall
