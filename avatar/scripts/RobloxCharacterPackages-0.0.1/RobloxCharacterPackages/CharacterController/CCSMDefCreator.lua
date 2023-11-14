local CCSMDefCreator = {}

local ModuleManager = require(script.Parent.ModuleManager)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachine = ReplicatedStorage.RobloxCharacterPackages.StateMachine
local characterControlStateMachineClass = require(characterStateMachine.CharacterControlStateMachine)
local BaseStateClass = require(characterStateMachine.BaseStateMachine.BaseStateModule)
local BaseTransitionClass = require(characterStateMachine.BaseStateMachine.BaseTransitionModule)

local function addState(state, CCSM)
    local name = state.name
    if CCSM.definition.stateDefs[name] then
        warn("Overriding state:", name)
    end

    local baseClass = state.base or BaseStateClass
    local newState = baseClass:inherit()
    newState.name = name

    function newState:OnEnter(stateMachine, oldStateName)
        self.baseClass.OnEnter(self, stateMachine)
        if state.OnEnter then
            state.OnEnter(stateMachine, oldStateName)
        end
    end

    function newState:OnExit(stateMachine, oldStateName)
        self.baseClass.OnExit(self, stateMachine)
        if state.OnExit then
            state.OnExit(stateMachine, oldStateName)
        end
    end

    CCSM.definition.stateDefs[name] = newState
end

local function addTransition(src, dst, test, CCSM)
    local name = src .. "To" .. dst
    if CCSM.definition.transitionDefs[name] then
        warn("Overriding transition:", name)
    end

    local newTransition = BaseTransitionClass:inherit()
    newTransition.name = name
    newTransition.sourceName = src
    newTransition.destinationName = dst

    -- TODO: Priority isn't really used. Placeholder pending state machine progress.
    newTransition.priority = 3

    function newTransition:Test(stateMachine)
        if test then
            return test(stateMachine)
        end
        return false
    end

    CCSM.definition.transitionDefs[name] = newTransition
end

-- Uses the existing CCSM from lua state machine as base.
function CCSMDefCreator.newDef()
    local CCSM = characterControlStateMachineClass:inherit()

    ModuleManager.forEachModule(function (module)
        local sm = module.getStateMachine()
        if not sm then
            return
        end
        for _, state in pairs(sm.states) do
            addState(state, CCSM)
        end
        for _, transition in pairs(sm.transitions) do
            local source, destination = transition.source, transition.destination
    
            -- Ensure source and destination are tables, even if they are single strings
            if type(source) ~= "table" then
                source = {source}
            end

            if type(destination) ~= "table" then
                destination = {destination}
            end

            -- Iterate through all combinations of source and destination
            -- Avoid redundancy with similar transitions using the same test function
            for _, src in ipairs(source) do
                for _, dst in ipairs(destination) do
                    addTransition(src, dst, transition.Test, CCSM)
                end
            end
        end
    end)
    
    return CCSM
end

return CCSMDefCreator
