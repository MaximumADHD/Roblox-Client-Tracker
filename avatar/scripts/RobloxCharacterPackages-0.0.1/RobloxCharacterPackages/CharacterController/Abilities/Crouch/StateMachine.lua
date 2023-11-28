local ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachine = ReplicatedStorage.RobloxCharacterPackages.StateMachine
local runningState = require(characterStateMachine.CharacterControlStateMachine.States.Running)
local Config = require(script.Parent.Config)
local mu = require(script.Parent.Parent.Parent.Utils.MovementUtils)

local states = {
    {
        name = Config.crouchState,
        base = runningState,
        OnEnter = function (stateMachine, oldStateName)
            local config = require(stateMachine.context.character.ConfigData).Crouch
            -- Crouch derives from the Running State and uses ControllerManager's
            -- RunningController. Use its MoveSpeedFactor to modulate crouch move speed.
            mu.storeDesiredSpeedFactor(stateMachine.context.character.CharacterController, config.CrouchMoveSpeedFactor)
        end,
        OnExit = function (stateMachine, newStateName)
            mu.storeDesiredSpeedFactor(stateMachine.context.character.CharacterController, 1)
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
            local config = require(stateMachine.context.character.ConfigData).Crouch
            local speed = stateMachine.context.rootPart.AssemblyLinearVelocity.Magnitude
            return speed <= config.CrouchIdleSpeedThreshold
        end
    },
    {
        source = Config.crouchIdleState,
        destination = Config.crouchState,
        Test = function (stateMachine)
            local config = require(stateMachine.context.character.ConfigData).Crouch
            local speed = stateMachine.context.humanoid:GetMoveVelocity().Magnitude
            return speed > config.CrouchIdleSpeedThreshold
        end
    },
}
local inheritExitTransitions = {
    {
        originalSource = runningState.name,
        newSource = {Config.crouchState, Config.crouchIdleState},
    },
}
    
return {
    states = states,
    transitions = transitions,
    inheritExitTransitions = inheritExitTransitions,
}