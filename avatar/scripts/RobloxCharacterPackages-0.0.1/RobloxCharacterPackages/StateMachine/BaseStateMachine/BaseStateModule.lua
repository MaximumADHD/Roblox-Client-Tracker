local BaseState = {}
BaseState.__index = BaseState

BaseState.name = script.Name
BaseState.activeController = ""
BaseState.isEnabled = true
BaseState.isAllowed3dMovemment = false

local LOG_TRANSITIONS = false

----------------------------------------------------
-- L O C A L    F U N C T I O N S
----------------------------------------------------

function BaseState:CheckTransitions(stateMachine)
    for _, transition in pairs(self.transitions) do
        if not transition.destination.isEnabled then
            continue
        end
        local results = transition:Test(stateMachine)
        if results then
            if LOG_TRANSITIONS then
                local curState = stateMachine.currentState.name
                local newState = transition.destination.name
                print(
                    string.format(
                        "TRANSITION: (%s) {%s} -> {%s}",
                        transition.name,
                        curState,
                        newState
                    )
                )
            end

            return transition.destination
        end
    end
    return self
end

function BaseState:AddTransition(transition)
    -- check for duplicate names
    for _, t in pairs(self.transitions) do
        if t.name == transition.name then
            return
        end
    end

    for idx, t in pairs(self.transitions) do
        if transition.priority < t.priority then
            table.insert(self.transitions, idx, transition)
            return
        end
    end
    table.insert(self.transitions, transition)
end

function BaseState:RemoveTransition(TransitionName)
    for i, transition in pairs(self.transitions) do
        if transition and transition.name == TransitionName then
            table.remove(self.transitions, i)
            break
        end
    end
end

function BaseState:InternalNew(...)
    local newSelf = {}
    local baseClass = self.baseClass
    if baseClass then
        newSelf = baseClass:InternalNew(...)
        newSelf.name = self.name
    else
        newSelf = {
            name = BaseState.name,
            transitions = {},
        }
    end
    setmetatable(newSelf, self)
    return newSelf
end

----------------------------------------------------
-- P U B L I C    F U N C T I O N S
----------------------------------------------------

function BaseState.new(...)
    local self = BaseState:InternalNew(...)
    self:OnCreate(...)
    return self
end

function BaseState:inherit()
    local derivedState = setmetatable({
        baseClass = self,
    }, self)
    derivedState.__index = derivedState

    function derivedState.new(...)
        local newObject = derivedState:InternalNew(...)
        newObject:OnCreate(...)
        return newObject
    end

    return derivedState
end

function BaseState:OnCreate(...) end

function BaseState:OnStepped(stateMachine, dt) end

function BaseState:OnEnter(stateMachine, oldStateName) end

function BaseState:OnExit(stateMachine, newStateName) end

return BaseState
