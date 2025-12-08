local Layer = require(script.Parent.Layer)
local Types = require(script.Parent.types)

export type BaseFiniteLayer = Types.ExtendFiniteLayer<{
    extend: <T>(self: BaseFiniteLayer, name: string) -> T,
}>

local FiniteLayer: BaseFiniteLayer = {} :: any

function FiniteLayer:extend<T>(name: string): T
    local layerClass = Layer:extend(name)

    for key, value in pairs(self) do
        if key ~= "extend" then
            layerClass[key] = value
        end
    end

    return layerClass :: any
end

function FiniteLayer:getDuration(): number
    error("FiniteLayer:getDuration not implemented")
end

function FiniteLayer:getTimePositionNormalized(): number
    error("FiniteLayer:getTimePositionNormalized not implemented")
end

-- We override this method to add the duration of the FiniteLayer to the DebugData's state.
function FiniteLayer:getDebugData(): Types.DebugData
    local debugData = Layer.getDebugData(self :: any)
    debugData.state.length = self:getDuration()
    debugData.state.timePositionNormalized = self:getTimePositionNormalized()
    return debugData
end

return FiniteLayer
