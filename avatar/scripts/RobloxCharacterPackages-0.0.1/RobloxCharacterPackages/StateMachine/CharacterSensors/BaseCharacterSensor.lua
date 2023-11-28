local BaseCharacterSensor = {}

BaseCharacterSensor.__index = BaseCharacterSensor
BaseCharacterSensor.name = script.Name

function BaseCharacterSensor:InternalNew(...)
    local newSelf = {}
    local baseClass = self.baseClass
    if baseClass then
        newSelf = baseClass:InternalNew(...)
        newSelf.name = self.name
    else
        newSelf = {
            name = BaseCharacterSensor.name,
            transitions = {},
        }
    end
    setmetatable(newSelf, self)
    return newSelf
end

----------------------------------------------------
-- P U B L I C    F U N C T I O N S
----------------------------------------------------

function BaseCharacterSensor.new(...)
    local self = BaseCharacterSensor:InternalNew(...)
    return self
end

function BaseCharacterSensor:inherit()
    local derivedSensor = setmetatable({
        baseClass = self,
    }, self)
    derivedSensor.__index = derivedSensor

    function derivedSensor.new(...)
        local newObject = derivedSensor:InternalNew(...)
        return newObject
    end

    return derivedSensor
end

function BaseCharacterSensor:OnStepped(ccsm: any, humanoid: Humanoid, dt: number) end

return BaseCharacterSensor
