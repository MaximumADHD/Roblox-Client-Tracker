--[[
    An implementation of BlendSpace for sampling 1-dimensional positions of type "number".
]]
local Anim = script.Parent.Parent

local BlendSpaceTypes = require(Anim.BlendSpace.types)
local BlendSpaceUtil = require(Anim.BlendSpace.Util)
local Types = require(Anim.Base.types)

type LayerWeightPair = BlendSpaceTypes.LayerWeightPair

type BlendSpaceEntry = {
    position: number,
    layer: Types.FiniteLayer,
}

export type ScalarBlendSpace = BlendSpaceTypes.ExtendBlendSpace<{
    __entries: { BlendSpaceEntry },
    __index: ScalarBlendSpace,

    __findBlendEntries: (ScalarBlendSpace, position: number) -> (BlendSpaceEntry, BlendSpaceEntry?),
}>

local ScalarBlendSpace = { typeName = "Scalar" } :: ScalarBlendSpace
ScalarBlendSpace.__index = ScalarBlendSpace

function ScalarBlendSpace.new(layers: { Types.FiniteLayer }): ScalarBlendSpace?
    local blendSpace = setmetatable({
        __entries = {},
        __activeLayers = {},
    }, ScalarBlendSpace)

    for i, layer in layers do
        if layer.linkData == nil or layer.linkData.position == nil then
            warn(
                "Cannot create ScalarBlendSpace with a layer with missing position.",
                "Layer name:",
                layer.name
            )
            return nil
        end

        local linkData = layer.linkData :: { position: number }
        if typeof(linkData.position) ~= "number" then
            warn(
                "Cannot create ScalarBlendSpace with a layer with invalid position type:",
                linkData.position
            )
            return nil
        end

        blendSpace.__entries[i] = {
            position = linkData.position,
            layer = layer,
        }
    end
    table.sort(blendSpace.__entries, function(a, b)
        return a.position < b.position
    end)

    return blendSpace :: any
end

function ScalarBlendSpace:sample(
    position: BlendSpaceTypes.BlendSpacePosition,
    isLowLod: boolean
): { LayerWeightPair }
    assert(typeof(position) == "number", "ScalarBlendSpace expects a position type of 'number'")
    if isLowLod then
        return BlendSpaceUtil.getNearestNeighbor(position, self.__entries)
    end

    local lowEntry, highEntry = self:__findBlendEntries(position)
    assert(lowEntry ~= nil)

    if highEntry == nil then
        return { { layer = lowEntry.layer, weight = 1 } }
    end

    assert(highEntry ~= nil)
    local distance = highEntry.position - lowEntry.position
    local alpha = (position - lowEntry.position) / distance
    if alpha < BlendSpaceUtil.WEIGHT_EPSILON then
        return {
            {
                layer = lowEntry.layer,
                weight = 1,
            },
        }
    elseif 1 - alpha < BlendSpaceUtil.WEIGHT_EPSILON then
        return {
            {
                layer = highEntry.layer,
                weight = 1,
            },
        }
    end

    return {
        {
            layer = lowEntry.layer,
            weight = 1 - alpha,
        },
        {
            layer = highEntry.layer,
            weight = alpha,
        },
    }
end

function ScalarBlendSpace:__findBlendEntries(currentPos: number)
    local prevEntry = nil
    for _, entry in self.__entries do
        if currentPos <= entry.position then
            if prevEntry ~= nil then
                return prevEntry, entry
            else
                return entry
            end
        end
        prevEntry = entry
    end
    return prevEntry
end

return ScalarBlendSpace
