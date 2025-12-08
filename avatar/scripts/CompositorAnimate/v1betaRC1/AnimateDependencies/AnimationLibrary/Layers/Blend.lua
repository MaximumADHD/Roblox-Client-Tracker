local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

export type LinkData = { weight: number | (params: Types.Map?) -> number }

export type BlendLayer = BlendLayerT<{}>
type BlendLayerInternal = BlendLayerT<{
    __multiBlender: MultiBlender.MultiBlender,
}>

type BlendLayerT<T> = Types.ExtendLayer<T>

local BlendLayer = Layer:extend("BlendLayer") :: BlendLayerInternal

BlendLayer.defaultProps = {
    lowLodThreshold = 2,
}

function BlendLayer:onInit()
    self.__multiBlender = MultiBlender.new()
end

local function getWeight(linkDataMap: Types.Map?, params: Types.Map?): number
    local linkData = linkDataMap :: LinkData
    if typeof(linkData.weight) == "function" then
        return linkData.weight(params)
    else
        return linkData.weight
    end
end

function BlendLayer:onEvaluate(mask): AnimationPose
    if #self.children < 1 then
        return AnimationPose.createRest(mask)
    end

    -- At low LODs, only evaluate the child with the highest weight.
    if self.context.lod >= self.props.lowLodThreshold then
        local highestWeightChild = self.children[1]
        for i = 2, #self.children, 1 do
            local linkData = self.children[i].linkData :: LinkData
            if linkData.weight > (highestWeightChild.linkData :: LinkData).weight then
                highestWeightChild = self.children[i]
            end
        end
        return highestWeightChild:evaluate(mask)
    end

    for i = 1, #self.children do
        self.__multiBlender:addPose(
            self.children[i]:evaluate(mask),
            getWeight(self.children[i].linkData, self.context.params)
        )
    end

    return self.__multiBlender:blend(mask)
end

function BlendLayer:getChildDebugData(_, child: Types.Layer): Types.Map?
    return {
        weight = getWeight(child.linkData, self.context.params),
    }
end

return BlendLayer
