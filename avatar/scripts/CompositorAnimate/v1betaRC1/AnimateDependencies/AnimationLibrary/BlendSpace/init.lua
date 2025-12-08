local Anim = script.Parent

local BlendSpaceTypes = require(Anim.BlendSpace.types)
local DirectionalBlendSpace = require(Anim.BlendSpace.DirectionalBlendSpace)
local LocomotionBlendSpace = require(Anim.BlendSpace.LocomotionBlendSpace)
local ScalarBlendSpace = require(Anim.BlendSpace.ScalarBlendSpace)
local Types = require(Anim.Base.types)

export type BlendSpacePosition = BlendSpaceTypes.BlendSpacePosition
export type BlendSpace = BlendSpaceTypes.BlendSpace
export type LayerWeightPair = BlendSpaceTypes.LayerWeightPair

local BlendSpace = {
    Type = {
        Directional = "Directional",
        Locomotion = "Locomotion",
        Scalar = "Scalar",
    },
    LocomotionPositions = LocomotionBlendSpace.Positions,
}

local blendSpaceClasses = {
    Directional = DirectionalBlendSpace,
    Locomotion = LocomotionBlendSpace,
    Scalar = ScalarBlendSpace,
}

function BlendSpace.new(
    blendSpaceType: string,
    layers: { Types.FiniteLayer }
): BlendSpaceTypes.BlendSpace?
    local blendSpaceClass = blendSpaceClasses[blendSpaceType] :: BlendSpaceTypes.BlendSpace
    if blendSpaceClass == nil then
        return nil
    end

    return blendSpaceClass.new(layers)
end

return BlendSpace
