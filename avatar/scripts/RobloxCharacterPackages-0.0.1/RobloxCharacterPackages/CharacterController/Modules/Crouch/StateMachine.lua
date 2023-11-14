local ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachine = ReplicatedStorage.RobloxCharacterPackages.StateMachine
local runningState = require(characterStateMachine.CharacterControlStateMachine.States.Running)
local Config = require(script.Parent.Config)

local states = {
    {
        name = Config.crouchState,
        base = runningState,
        OnEnter = function (stateMachine, oldStateName)
            -- Crouch derives from the Running State and uses ControllerManager's
            -- RunningController. Use its MoveSpeedFactor to modulate crouch move speed.
            local cm = stateMachine.context.controllerManager
            cm.RunningController.MoveSpeedFactor = Config.CrouchMoveSpeedFactor
        end,
        OnExit = function (stateMachine, newStateName)
            local cm = stateMachine.context.controllerManager
            cm.RunningController.MoveSpeedFactor = 1
        end,
    },
    {
        name = Config.crouchIdleState,
        base = runningState,
    },
}
local transitions = {
    {
        source = runningState.name,
        destination = Config.crouchState,
        Test = function (stateMachine)
            return stateMachine.context.character.CharacterController:GetAttribute(Config.crouchState)
        end
    },
    {
        source = {Config.crouchState, Config.crouchIdleState},
        destination = runningState.name,
        Test = function (stateMachine)
            return not stateMachine.context.character.CharacterController:GetAttribute(Config.crouchState)
        end
    },
    {
        source = Config.crouchState,
        destination = Config.crouchIdleState,
        Test = function (stateMachine)
            local speed = stateMachine.context.rootPart.AssemblyLinearVelocity.Magnitude
            return speed <= Config.CrouchIdleSpeedThreshold
        end
    },
    {
        source = Config.crouchIdleState,
        destination = Config.crouchState,
        Test = function (stateMachine)
            local speed = stateMachine.context.rootPart.AssemblyLinearVelocity.Magnitude
            return speed > Config.CrouchIdleSpeedThreshold
        end
    },
}
    
return {
    states = states,
    transitions = transitions
}