--!strict
--[[
    Ease functions for creating smooth animations.
    
    Provides different easing functions like linear, quadratic, cubic, quartic, quintic, and more.
    Inspired by Robert Penner's easing functions.
    Supports Roblox EasingStyle.
]]
local Packages = script.Parent.Parent
local assign = require(Packages.Collections).Object.assign

local types = require(script.Parent.types)
type State = types.State
type Goal<T> = types.Goal<T>

export type EasingStyle = Enum.EasingStyle

export type EaseOptions = {
	duration: number,
	easingStyle: EasingStyle,
}

type EaseState = {
	elapsed: number?,
	goal: number?,
	initialValue: number?,
}

local function linear(t: number): number
	return t
end

local function quad(t: number): number
	return t * t
end

local function cubic(t: number): number
	return t * t * t
end

local function quart(t: number): number
	return t * t * t * t
end

local function quint(t: number): number
	return t * t * t * t * t
end

local function exponential(t: number): number
	return t == 0 and 0 or math.pow(2, 10 * (t - 1))
end

local function sine(t: number): number
	return 1 - math.cos((t * math.pi) / 2)
end

local function elastic(t: number): number
	return t == 0 and 0 or t == 1 and 1 or -math.pow(2, 10 * t - 10) * math.sin((t * 10 - 10.75) * ((2 * math.pi) / 3))
end

local function back(t: number): number
	local c1 = 1.70158
	local c3 = c1 + 1
	return c3 * t * t * t - c1 * t * t
end

local function easeOutBounce(t: number): number
	local n1 = 7.5625
	local d1 = 2.75

	if t < 1 / d1 then
		return n1 * t * t
	elseif t < 2 / d1 then
		return n1 * (t - 1.5 / d1) * (t - 1.5 / d1) + 0.75
	elseif t < 2.5 / d1 then
		return n1 * (t - 2.25 / d1) * (t - 2.25 / d1) + 0.9375
	else
		return n1 * (t - 2.625 / d1) * (t - 2.625 / d1) + 0.984375
	end
end

local function bounce(t: number): number
	return 1 - easeOutBounce(1 - t)
end

local function circular(t: number): number
	return -(math.sqrt(1 - t * t) - 1)
end

local easingFunctions = {
	[Enum.EasingStyle.Linear] = linear,
	[Enum.EasingStyle.Quad] = quad,
	[Enum.EasingStyle.Cubic] = cubic,
	[Enum.EasingStyle.Quart] = quart,
	[Enum.EasingStyle.Quint] = quint,
	[Enum.EasingStyle.Exponential] = exponential,
	[Enum.EasingStyle.Sine] = sine,
	[Enum.EasingStyle.Back] = back,
	[Enum.EasingStyle.Bounce] = bounce,
	[Enum.EasingStyle.Elastic] = elastic,
	[Enum.EasingStyle.Circular] = circular,
}

local function ease(goalPosition: number, inputOptions: EaseOptions?): Goal<EaseState>
	local options: EaseOptions = {
		duration = 1,
		easingStyle = Enum.EasingStyle.Linear,
	}

	if inputOptions ~= nil then
		assign(options, inputOptions)
	end

	local duration = options.duration
	local easingStyle = options.easingStyle
	local easingFunction = easingFunctions[easingStyle] or linear

	local function step(state: State & EaseState, dt: number): State & EaseState
		local p0 = if state.initialValue ~= nil then state.initialValue else state.value or 0
		local elapsed = (state.elapsed or 0) + dt

		-- If the goalPosition changed, update initialValue
		if state.goal and goalPosition ~= state.goal :: number then
			p0 = state.value
			elapsed = 0
		end

		local t = math.min(elapsed / duration, 1)
		local easedT = easingFunction(t)

		local p1 = p0 + (goalPosition - p0) * easedT
		local complete = elapsed >= duration or p0 == goalPosition

		if complete then
			p1 = goalPosition
			-- Set these for accuracy in the next animation
			p0 = goalPosition
			elapsed = 0
		end

		return {
			initialValue = p0,
			goal = goalPosition,
			value = p1,
			elapsed = elapsed,
			complete = complete,
		}
	end

	return {
		step = step,
	}
end

return ease
