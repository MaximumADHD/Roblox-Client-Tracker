local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

type LayerWeightPair = { layer: Types.Layer, weight: number }
type SelectLayerInternal = Types.ExtendLayer<{
    __activeLayer: LayerWeightPair?,
    __fadingOutLayers: { LayerWeightPair },
    __mapping: { [string]: LayerWeightPair },

    __getTransitionDuration: (self: SelectLayerInternal, layer: Types.Layer) -> number,
}>
local SelectLayer = Layer:extend("SelectLayer") :: SelectLayerInternal

SelectLayer.defaultProps = {
    selection = "None",
    transitionDurationSeconds = 0.25,
}

function SelectLayer:init()
    self.__mapping = {}
    self.__fadingOutLayers = {}
    self.__activeLayer = nil

    for _, child in self.children do
        self.__mapping[(child.linkData :: Types.Map).key] = { layer = child, weight = 0 }
    end
end

function SelectLayer:update(dt: number, phaseState: Types.PhaseState?)
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

    local transitionDuration = self.props.transitionDurationSeconds
    if self.__activeLayer ~= nil then
        transitionDuration = self:__getTransitionDuration(self.__activeLayer.layer)
        local newWeight = self.__activeLayer.weight + dt / transitionDuration
        self.__activeLayer.weight = math.min(1, newWeight)
        self.__activeLayer.layer:update(dt, phaseState)
    end

    for i, layerPair in self.__fadingOutLayers do
        if layerPair == self.__activeLayer then
            table.remove(self.__fadingOutLayers, i)
            continue
        end

        layerPair.weight -= dt / transitionDuration
        layerPair.layer:update(dt)
        if layerPair.weight < 0 then
            layerPair.weight = 0
            table.remove(self.__fadingOutLayers, i)
        end
    end

    return nil
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

function SelectLayer:__getTransitionDuration(layer: Types.Layer): number
    local transitionDuration = if layer.linkData ~= nil
            and layer.linkData.transitionDurationSeconds
        then layer.linkData.transitionDurationSeconds
        else self.props.transitionDurationSeconds

    -- If transitionDuration is 0, return 0.001 instead.
    return transitionDuration or 0.001
end

return SelectLayer
