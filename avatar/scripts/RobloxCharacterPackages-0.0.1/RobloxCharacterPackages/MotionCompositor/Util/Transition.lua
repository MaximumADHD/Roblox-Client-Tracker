local Workspace = script.Parent.Parent
local Types = require(Workspace.Base.types)

type EasingFunction = (t: number) -> number

local EasingFunctions = {
    EaseInOutQuad = function(t: number): number
        return if t < 0.5 then 2 * t * t else 1 - math.pow(-2 * t + 2, 2) / 2
    end,
}

type TransitionT<T> = T & {
    isFinished: (TransitionT<T>) -> boolean,
    update: (TransitionT<T>, number) -> (),
    evaluate: (TransitionT<T>, AnimationMask) -> AnimationPose,
    getPhase: (TransitionT<T>) -> number,
}
export type Transition = TransitionT<{}>

export type CrossFade = TransitionT<{
    new: (number, Types.Layer, Types.Layer, EasingFunction) -> CrossFade,
    __duration: number,
    __fadeOutLayer: Types.Layer,
    __fadeInLayer: Types.Layer,
    __easingFn: EasingFunction,
    __timePosition: number,
}>

local CrossFade: CrossFade = {} :: any;
(CrossFade :: any).__index = CrossFade

function CrossFade.new(durationSeconds: number, outClip, inClip, easingFn): CrossFade
    local object = {
        __duration = durationSeconds,
        __fadeOutLayer = outClip,
        __fadeInLayer = inClip,
        __easingFn = easingFn,
        __timePosition = 0,
    }
    setmetatable(object, CrossFade)
    return object :: any
end

function CrossFade:isFinished()
    return self.__timePosition >= self.__duration
end

function CrossFade:update(dt: number)
    self.__timePosition = math.min(self.__duration, self.__timePosition + dt)
    self.__fadeOutLayer:update(dt)
    self.__fadeInLayer:update(dt)
end

function CrossFade:getPhase(): number
    return self.__easingFn(self.__timePosition / self.__duration)
end

function CrossFade:evaluate(mask: AnimationMask)
    local phase = self:getPhase()
    local res = self.__fadeOutLayer:evaluate(mask)
    res:Blend(self.__fadeInLayer:evaluate(mask), phase)
    return res
end

return {
    EasingFunctions = EasingFunctions,
    CrossFade = CrossFade,
}
