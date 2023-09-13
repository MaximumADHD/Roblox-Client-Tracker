local Types = require(script.Parent.types)

local PropsTable = {}

function PropsTable.new(props: Types.Map, defaultProps: Types.Map): Types.PropsTable
    local self = setmetatable(
        { __props = {}, __expressions = {}, __paramsTable = {}, __overrides = {} },
        PropsTable
    )
    for key, val in defaultProps do
        if props[key] == nil then
            self.__props[key] = val
        end
    end

    for key, val in props do
        if typeof(val) == "function" then
            self.__expressions[key] = val
        else
            self.__props[key] = val
        end
    end

    return (self :: any) :: Types.PropsTable
end

function PropsTable:setParams(params: Types.Map)
    self.__paramsTable = params
end

function PropsTable:__index(key: string)
    local metatableVal = getmetatable(self)[key]
    if metatableVal ~= nil then
        return metatableVal
    end

    local override = self.__overrides[key]
    if override ~= nil then
        return override
    end

    local prop = self.__props[key]
    if prop ~= nil then
        return prop
    end

    local expr = self.__expressions[key]
    if expr ~= nil then
        return expr(self.__paramsTable)
    end

    return nil
end

function PropsTable:override(overrides)
    self.__overrides = overrides or {}
end

function PropsTable:getAllValues()
    local allValues = {}

    for key, val in self.__props do
        allValues[key] = val
    end

    for key, expr in self.__expressions do
        allValues[key] = expr(self.__paramsTable)
    end
    return allValues
end

return PropsTable
