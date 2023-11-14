local ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachine = ReplicatedStorage.RobloxCharacterPackages.StateMachine
local runningState = require(characterStateMachine.CharacterControlStateMachine.States.Running)
local Config = require(script.Parent.Config)

local states = {
    {
        name = "Idle",
        base = runningState,
    },
}
local transitions = {
    {
        source = runningState.name,
        destination = "Idle",
        Test = function (stateMachine)
            return stateMachine.context.character.CharacterController:GetAttribute("Idle")
        end
    },
    {
        source = "Idle",
        destination = runningState.name,
        Test = function (stateMachine)
            return not stateMachine.context.character.CharacterController:GetAttribute("Idle")
        end
    },
}
    
return {
    states = states,
    transitions = transitions
}