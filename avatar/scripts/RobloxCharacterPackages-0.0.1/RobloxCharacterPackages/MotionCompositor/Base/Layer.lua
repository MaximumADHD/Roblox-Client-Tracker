local Types = require(script.Parent.types)

local layerClassMetatable = {}

function layerClassMetatable:__tostring()
    return self.__layerName
end

-- The BaseLayer type.
export type BaseLayer = Types.ExtendLayer<{
    extend: <T>(self: BaseLayer, name: string) -> T,
}>

local layerData = { defaultProps = {}, defaultLinkData = nil, __layerName = "Layer" }
local Layer = (setmetatable(layerData, layerClassMetatable) :: any) :: BaseLayer

function Layer:extend<T>(name: string): T
    local layerClass = {}

    for key, value in pairs(self) do
        if key ~= "extend" then
            layerClass[key] = value
        end
    end

    layerClass.__index = layerClass
    layerClass.__tostring = function()
        return layerClass.__layerName
    end
    layerClass.__layerName = name
    setmetatable(layerClass, layerClassMetatable)

    return layerClass :: any
end

function Layer:init()
    -- Intentionally left blank.
end

function Layer:overrideProperties(propOverrides: Types.Map)
    self.props:override(propOverrides)
end

function Layer:update(dt: number, phaseState: Types.PhaseState?)
    for _, child in self.children do
        child:update(dt, phaseState)
    end

    return nil
end

function Layer:evaluate(mask: AnimationMask)
    error(tostring(self) .. ":evaluate not implemented")
end

function Layer:reset()
    self:__resetInternal()
    for _, child in self.children do
        child:reset()
    end
end

function Layer:__resetInternal()
    -- Intentionally left blank.
end

function Layer:getChildDebugData(index, child): Types.Map?
    return nil
end

function Layer:getLayerWatches(): Types.Map?
    return nil
end

function Layer:getDebugData(): Types.DebugData
    return {
        name = self.name,
        className = self.__layerName,
        state = self.state or {},
        props = self.props:getAllValues(),
        watches = self:getLayerWatches(),
    } :: Types.DebugData
end

return Layer
