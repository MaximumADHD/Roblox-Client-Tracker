local baseState = require(script.Parent:WaitForChild("BaseStateModule"))
local baseTransition = require(script.Parent:WaitForChild("BaseTransitionModule"))

local BaseStateMachine = {}
BaseStateMachine.__index = BaseStateMachine
BaseStateMachine.name = script.Name

------------------- DEFINITION  ------------------------------------

BaseStateMachine.definition = {
    startingStateName = "",
    stateDefs = {},
    transitionDefs = {},
}

------------------- LOCAL FUNCTIONS ------------------------------------
local function SplitStringByCharacter(list, character: string)
    local out = {}
    local gmatachString: string = "[^" .. character .. "]+"
    for entry in string.gmatch(list, gmatachString) do
        entry = string.gsub(entry, "^%s*(.-)%s*$", "%1")
        table.insert(out, entry)
    end
    return out
end

function BaseStateMachine:SetupStates()
    local Definition = self.definition
    for stateName, stateDef in pairs(Definition.stateDefs) do
        local stateInstance = stateDef.new()
        self.states[stateName] = stateInstance
    end
end

function BaseStateMachine:SetupTranstions()
    local Definition = self.definition
    for _, transitionDef in pairs(Definition.transitionDefs) do
        local transitionInstance = transitionDef.new()
        -- local transitionSourceAttrib = transitionModule:GetAttribute("Source")
        local transitionSourceAttrib = transitionInstance.sourceName
        if transitionSourceAttrib ~= nil and transitionSourceAttrib ~= "None" then
            local transitionSourceList = SplitStringByCharacter(transitionSourceAttrib, ",")
            for _, sourceString in pairs(transitionSourceList) do
                local sourceState = self:GetStateByName(sourceString)
                if sourceState ~= nil then
                    sourceState:AddTransition(transitionInstance)
                else
                    print(
                        "Undefined state",
                        sourceString,
                        "in source for transition",
                        transitionDef.name
                    )
                end
            end
        end
        transitionInstance.destination = self:GetStateByName(transitionInstance.destinationName)
    end
end

function BaseStateMachine:SetStateFromState(newState)
    if newState ~= self.currentState then
        local oldState = self.currentState
        local oldStateName, newStateName
        if self.currentState ~= nil then
            oldStateName = self.currentState.name
            self.currentState:OnExit(self, newStateName)
        end
        self.currentState = newState
        if self.currentState ~= nil then
            newStateName = self.currentState.name
            self.currentState:OnEnter(self, oldStateName)
        end
        if self.OnStateChanged then
            self.OnStateChanged:Fire(newStateName, oldStateName)
        end
    end
end

function BaseStateMachine:InitializeFromDefinition()
    self.currentState = nil
    self.context = {}
    self.states = {}

    self:SetupStates()
    self:SetupTranstions()
    if self.definition.startingStateName == nil then
        warn("No Starting State Specified.")
    else
        self:SetState(self.definition.startingStateName)
    end
end

function BaseStateMachine:InternalNew(...)
    local newSelf = {}
    local baseClass = self.baseClass
    if baseClass then
        newSelf = baseClass:InternalNew(...)
        newSelf.name = self.name
    else
        newSelf = {
            name = BaseStateMachine.name,
            OnStateChanged = Instance.new("BindableEvent"),
            currentState = nil,
            context = {},
            states = {},
        }
    end
    setmetatable(newSelf, self)
    return newSelf
end

----------------------- PUBLIC FUNCTIONS -----------------------
function BaseStateMachine:CreateTransition()
    return baseTransition:inherit()
    -- may need to add this transition to the state machine transition definition list
end

function BaseStateMachine:CreateState()
    return baseState:inherit()
    -- may need to add this state to the state machine state definition list
end

function BaseStateMachine:GetStateByName(stateName: string)
    for name, state in pairs(self.states) do
        if name == stateName then
            return state
        end
    end
    return nil
end

function BaseStateMachine:SetState(newStateName: string)
    local newState = self:GetStateByName(newStateName)
    if newState == nil then
        warn("SetState(): Unable to find state named" .. newStateName .. ".")
        return
    end

    self:SetStateFromState(newState)
end

function BaseStateMachine:GetCurrentState(): baseState
    return self.currentState
end

function BaseStateMachine:GetCurrentStateName(): string
    if self.currentState ~= nil then
        return self.currentState.name
    else
        return "nil"
    end
end

function BaseStateMachine:OnStepped(dt)
    -- check for state transitions
    if self.currentState ~= nil then
        self:SetStateFromState(self.currentState:CheckTransitions(self))
        -- run current state, need to check for nil again since it could have changed in transitions above
        if self.currentState ~= nil then
            self.currentState:OnStepped(self, dt)
        end
    end
end

function BaseStateMachine:OnCreate(...) end

-- need to plumb extend as the basic mechanism for inheritence through the entire model
-- child classes should 'extend' from base classes at all levels to ensure the functions correctly has the base classes set
function BaseStateMachine:inherit()
    local derivedSM = setmetatable({
        baseClass = self,
        definition = {
            startingStateName = self.definition.startingStateName,
            stateDefs = {},
            transitionDefs = {},
        },
    }, self)
    local Definition = self.definition
    for StateName, StateDef in pairs(Definition.stateDefs) do
        derivedSM.definition.stateDefs[StateName] = StateDef
    end
    for TransitionName, TransitionDef in pairs(Definition.transitionDefs) do
        derivedSM.definition.transitionDefs[TransitionName] = TransitionDef
    end
    derivedSM.__index = derivedSM

    function derivedSM.new(...)
        local self = derivedSM:InternalNew(...)
        self:InitializeFromDefinition()
        self:OnCreate(...)
        return self
    end

    return derivedSM
end

function BaseStateMachine.new(...)
    local self = BaseStateMachine:InternalNew(...)
    self:InitializeFromDefinition()
    self:OnCreate(...)

    return self
end

function BaseStateMachine:delete() end

return BaseStateMachine
