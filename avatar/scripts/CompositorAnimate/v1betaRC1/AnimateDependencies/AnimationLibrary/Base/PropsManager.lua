local Anim = script.Parent.Parent

local Types = require(Anim.Base.types)

local nilValue = newproxy(true)
getmetatable(nilValue).__tostring = function()
    return "nil prop"
end

local nilCallback = newproxy(true)
getmetatable(nilCallback).__tostring = function()
    return "nil callback prop"
end

type PropsManagerInternal = Types.PropsManagerT<PropsManagerInternal> & {
    new: (props: Types.Map, defaultProps: Types.Map) -> Types.PropsManager,

    __props: Types.Map,
    __expressions: Types.Map,
    __overrides: Types.Map?,
    __index: PropsManagerInternal,
}

local PropsManager = {} :: PropsManagerInternal
PropsManager.__index = PropsManager

PropsManager.NIL_DEFAULT_VALUE = nilValue
PropsManager.NIL_DEFAULT_CALLBACK = nilCallback

function PropsManager.new(props: Types.Map, defaultProps: Types.Map)
    local expressions = {}
    local combinedProps = {}

    -- Combine props with default props, and separate expressions.
    for key, defaultVal in defaultProps do
        local actualVal = props[key]
        if actualVal == nil then
            if
                defaultVal ~= PropsManager.NIL_DEFAULT_VALUE
                and defaultVal ~= PropsManager.NIL_DEFAULT_CALLBACK
            then
                combinedProps[key] = defaultVal
            end
            continue
        end

        if typeof(actualVal) == "function" and defaultVal ~= PropsManager.NIL_DEFAULT_CALLBACK then
            expressions[key] = actualVal
        else
            combinedProps[key] = actualVal
        end
    end

    local newPropsManager = setmetatable({
        __props = combinedProps,
        __expressions = expressions,
        __isFrozen = false,
    }, PropsManager)

    return newPropsManager :: any
end

function PropsManager:evaluate(params: Types.Map): Types.Map
    for key, expression in self.__expressions do
        self.__props[key] = expression(params)
    end

    return if self.__overrides ~= nil then self.__overrides else self.__props
end

function PropsManager:override(overrides: Types.Map?)
    self.__overrides = overrides
    if self.__overrides ~= nil then
        setmetatable(self.__overrides, { __index = self.__props })
    end
end

function PropsManager:clone()
    local newPropsManager = setmetatable({
        __props = table.clone(self.__props),
        __expressions = self.__expressions,
        __overrides = self.__overrides,
    }, PropsManager)

    return newPropsManager :: any
end

return PropsManager
