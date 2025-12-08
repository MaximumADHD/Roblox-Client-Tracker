local Anim = script.Parent.Parent

local Types = require(Anim.Base.types)

export type Transition = ExtendTransition<{}>
export type ExtendTransition<T> = Types.ExtendLayer<T & {
    isTransitionFinished: (self: ExtendTransition<T>) -> boolean,
    calculateWeightForLayer: (self: ExtendTransition<T>, layer: Types.Layer) -> number,
    getToLayer: (self: ExtendTransition<T>) -> Types.Layer,
}>

return {}
