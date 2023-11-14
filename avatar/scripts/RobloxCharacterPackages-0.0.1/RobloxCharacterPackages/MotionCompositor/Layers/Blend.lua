local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

export type LinkData = { weight: number | (params: Types.Map?) -> number }

export type BlendLayer = Types.ExtendLayer<{}>

local BlendLayer = Layer:extend("BlendLayer") :: BlendLayer

BlendLayer.defaultLinkData = { weight = 1 }

local function getWeight(linkDataMap: Types.Map?, params: Types.Map?): number
    local linkData = linkDataMap :: LinkData
    if typeof(linkData.weight) == "function" then
        return linkData.weight(params)
    else
        return linkData.weight
    end
end

function BlendLayer:evaluate(mask): AnimationPose
    if #self.children < 1 then
        return mask:CreateRestPose()
    end

    local multiBlender = MultiBlender.new(mask)
    for i = 1, #self.children do
        multiBlender:addPose(
            self.children[i]:evaluate(mask),
            getWeight(self.children[i].linkData, self.context.params)
        )
    end

    return multiBlender:blend()
end

function BlendLayer:getChildDebugData(_, child: Types.Layer): Types.Map?
    return {
        weight = getWeight(child.linkData, self.context.params),
    }
end

return BlendLayer
