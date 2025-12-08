local Anim = script.Parent.Parent

local Types = require(Anim.Base.types)

export type BlendSpacePosition = number | Vector2

--[[
    An interface for sampling a blend space.
]]
export type BlendSpace = ExtendBlendSpace<{}>
export type ExtendBlendSpace<T> = T & {
    -- The type of this BlendSpace.
    typeName: string,

    -- Creates a new BlendSpace with the given layers. Each implementation of BlendSpace verifies
    -- that the appropriate LinkData exists on each child layer and return nil if invalid.
    new: (layers: { Types.FiniteLayer }) -> ExtendBlendSpace<T>?,

    -- Samples the BlendSpace with the given position; returns pairs of layers and their
    -- corresponding BlendWeights.
    --
    -- Note: due to filtering of insiginificant blend weights, the sum of all weights may not be
    -- exactly 1.
    sample: (
        self: ExtendBlendSpace<T>,
        currentPosition: BlendSpacePosition,
        isLowLod: boolean
    ) -> { LayerWeightPair },
}

export type LayerWeightPair = {
    weight: number,
    layer: Types.FiniteLayer,
}

export type DirectionalPosition = {
    direction: Vector2,
    magnitude: number,
}

return {}
