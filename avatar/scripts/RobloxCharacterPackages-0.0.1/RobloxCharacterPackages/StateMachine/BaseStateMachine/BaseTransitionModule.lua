local BaseTransition = {}
BaseTransition.__index = BaseTransition
BaseTransition.name = script.Name
BaseTransition.destinationName = ""
BaseTransition.sourceName = ""
BaseTransition.priority = ""

----------------  LOCAL FUNCTIONS ----------------
function BaseTransition:InternalNew(...)
    local newSelf = {}
    local baseClass = self.baseClass
    if baseClass then
        newSelf = baseClass:InternalNew(...)
        newSelf.name = self.name
    else
        newSelf = {
            name = BaseTransition.name,
            destination = nil,
        }
    end
    setmetatable(newSelf, self)
    return newSelf
end

----------------  PUBLIC FUNCTIONS ----------------
function BaseTransition.new(...)
    local self = BaseTransition:InternalNew(...)
    self:OnCreate(...)
    return self
end

function BaseTransition:inherit()
    local derivedTransition = setmetatable({
        baseClass = self,
    }, self)
    derivedTransition.__index = derivedTransition

    function derivedTransition.new(...)
        local newSelf = derivedTransition:InternalNew(...)
        newSelf:OnCreate(...)
        return newSelf
    end

    return derivedTransition
end

function BaseTransition:OnCreate(...) end

function BaseTransition:Test(stateMachine)
    return false
end

return BaseTransition
