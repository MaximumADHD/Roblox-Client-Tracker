local Anim = script.Parent.Parent

local BlendSpaceTypes = require(Anim.BlendSpace.types)
local Types = require(Anim.Base.types)

type BlendSpacePosition = BlendSpaceTypes.BlendSpacePosition
type DirectionalPosition = BlendSpaceTypes.DirectionalPosition
type LayerWeightPair = BlendSpaceTypes.LayerWeightPair

type PositionLayerPair<T> = {
    position: T,
    layer: Types.FiniteLayer,
}

local Util = {}

local ANGLE_INFLUENCE_WEIGHT = 2
local MAGNITUDE_EPSILON = 1e-2
Util.WEIGHT_EPSILON = 1e-2

function Util.getDirectionalPositionFromVector(vec: Vector2): DirectionalPosition
    local magnitude = vec.Magnitude
    return {
        direction = if magnitude < MAGNITUDE_EPSILON then Vector2.zero else vec.Unit,
        magnitude = magnitude,
    }
end

function Util.interpolateWithGradientBands<T>(
    position: T,
    entries: { PositionLayerPair<T> },
    calculateInfluenceCallback: (T, T, T) -> number
): { LayerWeightPair }
    local influences = {}
    local sumInfluences = 0
    for i, entry1 in entries do
        influences[i] = math.huge
        for j, entry2 in entries do
            if i == j then
                continue
            end

            influences[i] = math.min(
                influences[i],
                calculateInfluenceCallback(position, entry1.position, entry2.position)
            )
        end

        sumInfluences += influences[i]
    end

    local layerWeightPairs = {}
    for i, influence in influences do
        local weight = influence / sumInfluences
        if weight >= Util.WEIGHT_EPSILON then
            table.insert(layerWeightPairs, { weight = weight, layer = entries[i].layer })
        end
    end

    return layerWeightPairs
end

function Util.calculateInfluenceDirectional(
    currentPos: DirectionalPosition,
    pos1: DirectionalPosition,
    pos2: DirectionalPosition
): number
    local function signedAngle(a: Vector2, b: Vector2): number
        local x = a.X * b.Y - a.Y * b.X
        local y = a.X * b.X + a.Y * b.Y
        return if x == 0 and y == 0 then 0 else -math.atan2(x, y)
    end

    local avgLength = 0.5 * (pos1.magnitude + pos2.magnitude)

    local p1ToP2 = Vector2.new(
        (pos2.magnitude - pos1.magnitude) / avgLength,
        ANGLE_INFLUENCE_WEIGHT * signedAngle(pos2.direction, pos1.direction)
    )
    local p1ToSamplePos = Vector2.new(
        (currentPos.magnitude - pos1.magnitude) / avgLength,
        ANGLE_INFLUENCE_WEIGHT * signedAngle(currentPos.direction, pos1.direction)
    )

    local res = 1.0 - p1ToSamplePos:Dot(p1ToP2) / (p1ToP2.X * p1ToP2.X + p1ToP2.Y * p1ToP2.Y)
    return math.clamp(res, 0, 1)
end

local function getNumberMagnitude(v: number): number
    return math.abs(v)
end

local function getVectorMagnitude(v: Vector2): number
    return v.Magnitude
end

function Util.getNearestNeighbor<T>(position: T, layers: { PositionLayerPair<T> }): { LayerWeightPair }
    if #layers == 0 then
        return {}
    end

    local getDistance: (v: T) -> number
    if typeof(position) == "number" then
        getDistance = getNumberMagnitude :: any
    elseif typeof(position) == "Vector2" then
        getDistance = getVectorMagnitude :: any
    end

    local nearestLayer = layers[1]
    local nearestDistance = getDistance(position - layers[1].position :: any)

    for i = 2, #layers, 1 do
        local layerPos = layers[i].position
        local newDistance = getDistance(position - layerPos :: any)
        if newDistance < nearestDistance then
            nearestLayer = layers[i]
            nearestDistance = newDistance
        end
    end

    return { { layer = nearestLayer.layer, weight = 1 } }
end

return Util
