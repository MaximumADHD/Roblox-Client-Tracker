local CrossFade = require(script.CrossFade)
local Easing = require(script.Easing)
local Types = require(script.Types)

export type CrossFade = CrossFade.CrossFade
export type EasingFunction = Easing.EasingFunction
export type Transition = Types.Transition

local Transition = {
    Easing = require(script.Easing),
    CreateTransition = require(script.CreateTransition),
}

return Transition
