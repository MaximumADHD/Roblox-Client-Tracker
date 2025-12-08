export type EasingFunction = (t: number) -> number

local Easing = {}

function Easing.EaseInOutQuad(t: number): number
    return if t < 0.5 then 2 * t * t else 1 - math.pow(-2 * t + 2, 2) / 2
end

return Easing
