local CCSMDefCreator = {}

local AbilityManager = require(script.Parent.AbilityManager)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachine = ReplicatedStorage.RobloxCharacterPackages.StateMachine
local characterControlStateMachineClass = require(characterStateMachine.CharacterControlStateMachine)
local BaseStateClass = require(characterStateMachine.BaseStateMachine.BaseStateModule)
local BaseTransitionClass = require(characterStateMachine.BaseStateMachine.BaseTransitionModule)

-- TODO: Transition priority isn't currently implemented.
local DEFAULT_PRIORITY = 3

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
    newTransition.priority = DEFAULT_PRIORITY

    function newTransition:Test(stateMachine)
        if test then
            return test(stateMachine)
        end
        return false
    end

    CCSM.definition.transitionDefs[name] = newTransition
end

local function inheritedTransition(src, baseTransition, CCSM)
    local name = "[" .. baseTransition.name .. "]" .. src .. "To" .. baseTransition.destinationName
    if CCSM.definition.transitionDefs[name] then
        warn("Overriding transition:", name)
    end

    local newTransition = baseTransition:inherit()
    newTransition.name = name
    newTransition.sourceName = src
    newTransition.priority = DEFAULT_PRIORITY

    return newTransition
end

local function insertTransition(t, CCSM)
    if CCSM.definition.transitionDefs[t.name] then
        warn("Overriding transition:", t.name)
    end

    CCSM.definition.transitionDefs[t.name] = t
end

local function SplitStringByCharacter(list, character : string)
    local out = {}
    local gmatachString : string = "[^".. character .. "]+"
    for entry in string.gmatch(list, gmatachString) do
        entry = string.gsub(entry, '^%s*(.-)%s*$', '%1')
        table.insert(out, entry)
    end
    return out
end

-- Uses the existing CCSM from lua state machine as base.
function CCSMDefCreator.newDef()
    local CCSM = characterControlStateMachineClass:inherit()

    local inheritance = {}
    local inheritedTransitions = {}
    local states = {}

    AbilityManager.forEachAbility(function (ability)
        local sm = ability.getStateMachine()
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

        -- Save transition inheritance data to be evaluated after initializing explicit transition defs
        if sm.inheritExitTransitions then
            for _, t in pairs(sm.inheritExitTransitions) do
                local originalSource, newSource = t.originalSource, t.newSource

                if type(originalSource) ~= "table" then
                    originalSource = {originalSource}
                end

                if type(newSource) ~= "table" then
                    newSource = {newSource}
                end

                for _, os in ipairs(originalSource) do
                    for _, ns in ipairs(newSource) do
                        if not inheritance[ns] then
                            inheritance[ns] = {}
                        end
                        table.insert(inheritance[ns], os)
                        states[ns] = true
                    end
                end
            end
        end
    end)

    -- Recursively resolve transition inheritance & check for circular dependencies
    local function resolve(state, rootState)
        if state == rootState then
            error("Transition inheritance encountered circular dependency: " .. state)
            return
        end

        if not inheritance[state] then
            return
        end

        for _, s in inheritance[state] do
            -- Resolve all dependencies first
            resolve(s, rootState or state)

            -- Find all transition containing the state to mimic as a source
            -- Create a new transition from the base using the new source
            for _, e in pairs(CCSM.definition.transitionDefs) do
                local transitionSourceList = SplitStringByCharacter(e.sourceName, ",")

                -- Exclude transitions that have destinations which are also the new inheriting sources
                if table.find(transitionSourceList, s) and not inheritance[e.destinationName] then
                    table.insert(inheritedTransitions, inheritedTransition(state, e, CCSM))
                end
            end
        end

        inheritance[state] = nil
    end

    for ns, _ in pairs(states) do
        resolve(ns)
    end

    -- Add inherited transitions altogether (avoid modifying transitionDefs while iterating)
    for _, t in pairs(inheritedTransitions) do
        insertTransition(t, CCSM)
    end

    return CCSM
end

return CCSMDefCreator
