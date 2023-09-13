local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

type LayerWeightPair = { layer: Types.Layer, weight: number }
type SelectLayerInternal = Types.ExtendLayer<{
    __activeLayer: LayerWeightPair?,
    __fadingOutLayers: { LayerWeightPair },
    __mapping: { [string]: LayerWeightPair },
}>
local SelectLayer: SelectLayerInternal = Layer:extend("SelectLayer")

SelectLayer.defaultProps = {
    selection = "None",
    fadeInTimeSeconds = 0.25,
    fadeOutTimeSeconds = 0.25,
}
SelectLayer.defaultLinkData = {
    key = "invalid",
}

function SelectLayer:init()
    self.__mapping = {}
    self.__fadingOutLayers = {}
    self.__activeLayer = nil

    for _, child in self.children do
        self.__mapping[(child.linkData :: Types.Map).key] = { layer = child, weight = 0 }
    end
end

function SelectLayer:update(dt: number)
    local currentSelection = self.__mapping[self.props.selection]
    if self.__activeLayer ~= currentSelection then
        if self.__activeLayer ~= nil then
            table.insert(self.__fadingOutLayers, self.__activeLayer)
        end

        self.__activeLayer = currentSelection
        local activeLayer = self.__activeLayer :: LayerWeightPair

        if activeLayer then
            activeLayer.layer:reset()
        else
            warn('"' .. self.props.selection .. '" does not exist in the layer mapping')
        end
    end

    if self.__activeLayer ~= nil then
        local newWeight = self.__activeLayer.weight + dt / self.props.fadeInTimeSeconds
        self.__activeLayer.weight = math.min(1, newWeight)
        self.__activeLayer.layer:update(dt)
    end

    for i, layerPair in self.__fadingOutLayers do
        if layerPair == self.__activeLayer then
            table.remove(self.__fadingOutLayers, i)
            continue
        end

        layerPair.weight -= dt / self.props.fadeOutTimeSeconds
        layerPair.layer:update(dt)
        if layerPair.weight < 0 then
            layerPair.weight = 0
            table.remove(self.__fadingOutLayers, i)
        end
    end
end

function SelectLayer:evaluate(mask: AnimationMask)
    if self.__activeLayer == nil then
        return mask:CreateRestPose()
    end

    local multiBlender = MultiBlender.new(mask)
    local activeLayer = self.__activeLayer :: LayerWeightPair
    multiBlender:addPose(activeLayer.layer:evaluate(mask), activeLayer.weight)
    for _, layer in self.__fadingOutLayers do
        multiBlender:addPose(layer.layer:evaluate(mask), layer.weight)
    end
    return multiBlender:blend()
end

function SelectLayer:getChildDebugData(_, child: Types.Layer): Types.Map?
    for key, mapData in self.__mapping do
        if mapData.layer == child then
            return {
                weight = mapData.weight,
                linkData = {
                    key = key,
                },
            }
        end
    end
    return nil
end

return SelectLayer
