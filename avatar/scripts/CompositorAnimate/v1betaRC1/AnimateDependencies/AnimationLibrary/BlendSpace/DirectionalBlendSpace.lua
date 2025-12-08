--[[
    An implemantation of BlendSpace that samples positions in polar coordinates. Both the blend
    children and sample position of this BlendSpace are represented as Vector2.
]]
local Anim = script.Parent.Parent

local BlendSpaceTypes = require(Anim.BlendSpace.types)
local BlendSpaceUtil = require(Anim.BlendSpace.Util)
local Types = require(Anim.Base.types)

type BlendSpacePosition = BlendSpaceTypes.BlendSpacePosition
type LayerWeightPair = BlendSpaceTypes.LayerWeightPair
type DirectionalPosition = BlendSpaceTypes.DirectionalPosition

type BlendSpaceEntry = {
    position: DirectionalPosition,
    layer: Types.FiniteLayer,
}

type LowLodEntry = {
    position: Vector2,
    layer: Types.FiniteLayer,
}

-- TODO(nashkenazi): Consider adding optimiziation like Delaunay Triangulation to reduce the O(n^2)
-- runtime for this BlendSpace.
export type DirectionalBlendSpace = BlendSpaceTypes.ExtendBlendSpace<{
    __entries: { BlendSpaceEntry },
    __lowLodEntries: { LowLodEntry },
    __index: DirectionalBlendSpace,
}>

local DirectionalBlendSpace = { typeName = "Polar" } :: DirectionalBlendSpace
DirectionalBlendSpace.__index = DirectionalBlendSpace

function DirectionalBlendSpace.new(layers: { Types.FiniteLayer }): DirectionalBlendSpace?
    local blendSpace = setmetatable({
        __entries = {},
        __lowLodEntries = {},
    }, DirectionalBlendSpace)

    for i, layer in layers do
        if layer.linkData == nil or layer.linkData.position == nil then
            warn(
                "Cannot create DirectionalBlendSpace with a layer with missing position:",
                layer.name
            )
            return nil
        end

        local linkData = layer.linkData :: { position: Vector2 }
        if typeof(linkData.position) ~= "Vector2" then
            warn(
                "Cannot create DirectionalBlendSpace with a layer with invalid position type:",
                linkData.position
            )
            return nil
        end
        blendSpace.__entries[i] = {
            position = BlendSpaceUtil.getDirectionalPositionFromVector(linkData.position),
            layer = layer,
        }
        blendSpace.__lowLodEntries[i] = {
            position = linkData.position,
            layer = layer,
        }
    end

    return blendSpace :: any
end

function DirectionalBlendSpace:sample(
    position: BlendSpacePosition,
    isLowLod: boolean
): { LayerWeightPair }
    assert(
        typeof(position) == "Vector2",
        "DirectionalBlendSpace expects a position type of 'Vector2'"
    )

    if isLowLod then
        return BlendSpaceUtil.getNearestNeighbor(position, self.__lowLodEntries)
    end

    local currentBlendSpacePos = BlendSpaceUtil.getDirectionalPositionFromVector(position)
    return BlendSpaceUtil.interpolateWithGradientBands(
        currentBlendSpacePos,
        self.__entries,
        BlendSpaceUtil.calculateInfluenceDirectional
    )
end

return DirectionalBlendSpace
