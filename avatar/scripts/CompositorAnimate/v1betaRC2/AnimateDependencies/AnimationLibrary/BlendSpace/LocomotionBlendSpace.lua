--[[
    A specialized implementation of a 2-dimensional BlendSpace for locomotion. Child layers in this
    BlendSpace must have a position type of "number", representing a particular position along
    within the optimized BlendSpace. Sampling of this BlendSpace utilized a Vector2 position.

    The locomotion blend space roughly maps to a dartboard representation. Each number on
    the dartboard below represents a bucket in the blend space that returns a different set of
    layers to include in the influence calculation. Each () represents a blend child.

            ████()████
          ██    ██    ██
        ()  11  ██  10  ()
      ██  ██  ██()██  ██  ██
    ██  12  ()3 ██ 2()   9  ██
    ██    ██4 \ ██ / 1██    ██
    ()████()████()████()████()
    ██    ██5 / ██ \ 8██    ██
    ██  13  ()6 ██ 7()  16  ██
      ██  ██  ██()██  ██  ██
        ()  14  ██  15  ()
          ██    ██    ██
            ████()████
]]
local Anim = script.Parent.Parent

local BlendSpaceTypes = require(Anim.BlendSpace.types)
local BlendSpaceUtil = require(Anim.BlendSpace.Util)
local Types = require(Anim.Base.types)

type BlendSpacePosition = BlendSpaceTypes.BlendSpacePosition
type LayerWeightPair = BlendSpaceTypes.LayerWeightPair
type DirectionalPosition = BlendSpaceTypes.DirectionalPosition

local positions = {
    Origin = Vector2.zero,

    RightSlow = Vector2.new(1, 0),
    ForwardRightSlow = Vector2.new(1, 1).Unit,
    ForwardSlow = Vector2.new(0, 1),
    ForwardLeftSlow = Vector2.new(-1, 1).Unit,
    LeftSlow = Vector2.new(-1, 0),
    BackwardLeftSlow = Vector2.new(-1, -1).Unit,
    BackwardSlow = Vector2.new(0, -1),
    BackwardRightSlow = Vector2.new(1, -1).Unit,

    RightFast = Vector2.new(2, 0),
    ForwardRightFast = Vector2.new(1, 1).Unit * 2,
    ForwardFast = Vector2.new(0, 2),
    ForwardLeftFast = Vector2.new(-1, 1).Unit * 2,
    LeftFast = Vector2.new(-2, 0),
    BackwardLeftFast = Vector2.new(-1, -1).Unit * 2,
    BackwardFast = Vector2.new(0, -2),
    BackwardRightFast = Vector2.new(1, -1).Unit * 2,
}

export type LocomotionBlendSpace =
    BlendSpaceTypes.ExtendBlendSpace<{
        Positions: typeof(positions),

        __getEntriesForBucketIndex: (self: LocomotionBlendSpace, bucketIndex: number, useFastPositions: boolean) -> { Entry },

        __layers: { Types.FiniteLayer },
        __index: LocomotionBlendSpace,
    }>

type Entry = {
    position: DirectionalPosition,
    layer: Types.FiniteLayer,
}

local LocomotionBlendSpace = { typeName = "Locomotion" } :: LocomotionBlendSpace
LocomotionBlendSpace.__index = LocomotionBlendSpace

LocomotionBlendSpace.Positions = positions

local positionToIndex = {
    [positions.Origin] = 0,

    [positions.RightSlow] = 1,
    [positions.ForwardRightSlow] = 2,
    [positions.ForwardSlow] = 3,
    [positions.ForwardLeftSlow] = 4,
    [positions.LeftSlow] = 5,
    [positions.BackwardLeftSlow] = 6,
    [positions.BackwardSlow] = 7,
    [positions.BackwardRightSlow] = 8,

    [positions.RightFast] = 9,
    [positions.ForwardRightFast] = 10,
    [positions.ForwardFast] = 11,
    [positions.ForwardLeftFast] = 12,
    [positions.LeftFast] = 13,
    [positions.BackwardLeftFast] = 14,
    [positions.BackwardFast] = 15,
    [positions.BackwardRightFast] = 16,
}

local indexToDirectionalPosition = (function()
    local result = {}
    for position, index in positionToIndex do
        local magnitude = position.Magnitude
        result[index] = {
            direction = if magnitude == 0 then Vector2.zero else position.Unit,
            magnitude = magnitude,
        } :: DirectionalPosition
    end
    return result
end)()

function LocomotionBlendSpace.new(layers: { Types.FiniteLayer }): LocomotionBlendSpace?
    local blendSpace = setmetatable({
        __layers = {},
    }, LocomotionBlendSpace)

    for _, layer in layers do
        if layer.linkData == nil or layer.linkData.position == nil then
            warn(
                "Cannot create LocomotionBlendSpace with a layer with missing position.",
                "Layer name:",
                layer.name
            )
            return nil
        end

        local linkData = layer.linkData :: { position: Vector2 }
        if typeof(linkData.position) ~= "Vector2" or positionToIndex[linkData.position] == nil then
            warn(
                "Cannot create LocomotionBlendSpace with a layer with invalid position:",
                linkData.position
            )
            return nil
        end
        blendSpace.__layers[positionToIndex[linkData.position]] = layer
    end

    return blendSpace :: any
end

function LocomotionBlendSpace:sample(
    position: BlendSpacePosition,
    isLowLod: boolean
): { LayerWeightPair }
    assert(
        typeof(position) == "Vector2",
        "LocomotionBlendSpace expects a position type of 'Vector2'"
    )

    local angle = math.atan2(position.Y, position.X) % (2 * math.pi)
    local bucketIndex = math.floor(4 * angle / math.pi) + 1
    local activeEntries = self:__getEntriesForBucketIndex(bucketIndex, position.Magnitude > 1)
    if isLowLod then
        local activeEntriesVector2 = (
            activeEntries :: any
        ) :: { { layer: Types.FiniteLayer, position: Vector2 } }
        for i, entry in activeEntriesVector2 do
            entry.position = (entry.layer.linkData :: { position: Vector2 }).position
        end
        return BlendSpaceUtil.getNearestNeighbor(position, activeEntriesVector2)
    end

    local currentBlendSpacePos: DirectionalPosition =
        BlendSpaceUtil.getDirectionalPositionFromVector(position)
    return BlendSpaceUtil.interpolateWithGradientBands(
        currentBlendSpacePos,
        activeEntries,
        BlendSpaceUtil.calculateInfluenceDirectional
    )
end

function LocomotionBlendSpace:__getEntriesForBucketIndex(
    bucketIndex: number,
    useFastPositions: boolean
): { Entry }
    local bucketHighIndex = bucketIndex % 8 + 1
    local entries
    if useFastPositions then
        entries = {
            {
                position = indexToDirectionalPosition[bucketIndex],
                layer = self.__layers[bucketIndex],
            },
            {
                position = indexToDirectionalPosition[bucketHighIndex],
                layer = self.__layers[bucketHighIndex],
            },
            {
                position = indexToDirectionalPosition[bucketIndex + 8],
                layer = self.__layers[bucketIndex + 8],
            },
            {
                position = indexToDirectionalPosition[bucketHighIndex + 8],
                layer = self.__layers[bucketHighIndex + 8],
            },
        }
    else
        entries = {
            {
                position = { direction = Vector2.zero, magnitude = 0 }, -- origin position
                layer = self.__layers[0],
            },
            {
                position = indexToDirectionalPosition[bucketIndex],
                layer = self.__layers[bucketIndex],
            },
            {
                position = indexToDirectionalPosition[bucketHighIndex],
                layer = self.__layers[bucketHighIndex],
            },
        }
    end

    for i = #entries, 1, -1 do
        if entries[i].layer == nil then
            table.remove(entries, i)
        end
    end

    return entries
end

return LocomotionBlendSpace
