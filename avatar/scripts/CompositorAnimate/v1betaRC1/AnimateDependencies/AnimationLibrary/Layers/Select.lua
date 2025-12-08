local Anim = script.Parent.Parent

local Layer = require(Anim.Base.Layer)
local PropsManager = require(Anim.Base.PropsManager)
local Transition = require(Anim.Transition)
local Types = require(Anim.Base.types)

type LayerWeightPair = { layer: Types.Layer, weight: number }
type SelectLayerInternal = Types.ExtendLayer<{
    __activeSelection: string?,
    __activeLayer: Types.Layer?,
    __transitionLayer: Transition.Transition?,
    __mapping: Types.Dictionary<string, Types.Layer>,

    __getTransitionDuration: (self: SelectLayerInternal, layer: Types.Layer) -> number,
}>
local SelectLayer = Layer:extend("SelectLayer") :: SelectLayerInternal

SelectLayer.defaultProps = {
    selection = PropsManager.NIL_DEFAULT_VALUE,
    transitionDurationSeconds = 0.25,
    lowLodThreshold = 3,
}

function SelectLayer:onInit()
    self.__mapping = {}

    for _, child in self.children do
        self.__mapping[(child.linkData :: Types.Map).key] = child
    end
end

function SelectLayer:onUpdate(dt: number, phaseState: Types.PhaseState?): Types.PhaseState?
    local newSelection = self.props.selection
    if self.__activeSelection ~= newSelection then
        local newSelectionLayer = newSelection and self.__mapping[newSelection] or nil
        if newSelection ~= nil and newSelectionLayer == nil then
            warn("selection '" .. newSelection .. "' is not valid child of " .. self.name)
        end
        self.__activeSelection = newSelection

        if
            newSelectionLayer ~= nil
            and self.context.lod < self.props.lowLodThreshold
            and self.__activeLayer ~= nil
        then
            if self.context.blendHandler == nil then
                local transitionLayer = Transition.CreateTransition(
                    newSelectionLayer,
                    self.__activeLayer,
                    self:__getTransitionDuration(newSelectionLayer)
                )

                self.__activeLayer = transitionLayer
                self.__transitionLayer = transitionLayer
            else
                self.context.blendHandler:requestBlend(
                    self:__getTransitionDuration(newSelectionLayer)
                )
                self.__activeLayer = newSelectionLayer
            end
        else
            self.__activeLayer = newSelectionLayer
        end
    end

    if self.__activeLayer == nil then
        return nil
    end

    local updateResult = self.__activeLayer:update(dt, phaseState)
    if self.__transitionLayer ~= nil then
        if self.__transitionLayer:isTransitionFinished() then
            self.__activeLayer = self.__transitionLayer:getToLayer()
            self.__transitionLayer = nil
        end
    end

    return updateResult
end

function SelectLayer:onEvaluate(mask: AnimationMask)
    if self.__activeLayer == nil then
        return AnimationPose.createRest(mask)
    end
    assert(self.__activeLayer ~= nil)
    return self.__activeLayer:evaluate(mask)
end

function SelectLayer:onReset()
    self.__activeLayer = nil
    self.__transitionLayer = nil
    self.__activeSelection = nil
end

function SelectLayer:onChildChanged(index: number)
    local child = self.children[index]
    self.__mapping[(child.linkData :: Types.Map).key] = child
end

function SelectLayer:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    if child == self.__activeLayer then
        return { weight = 1 }
    end

    return {
        weight = if self.__transitionLayer ~= nil
            then self.__transitionLayer:calculateWeightForLayer(child)
            else 0,
        linkData = { (child.linkData :: Types.Map).key },
    }
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
