--!strict
--[[
    Ease functions for creating smooth animations.
    
    Provides different easing functions like linear, quadratic, cubic, quartic, quintic, and more.
    Inspired by Robert Penner's easing functions.
    Supports Roblox EasingStyle.
]]
local types = require(script.Parent.types)
type State = types.State
type Goal<T> = types.Goal<T>

export type EasingStyle = Enum.EasingStyle | { number }

export type EaseOptions = {
	-- Defaults to 1
	duration: number?,
	-- Defaults to Enum.EasingStyle.Linear
	easingStyle: EasingStyle?,
}

type EaseState = {
	elapsed: number?,
	goal: number?,
	initialValue: number?,
}

local function linear(t: number, _s: EasingStyle): number
	return t
end

local function quad(t: number, _s: EasingStyle): number
	return t * t
end

local function cubic(t: number, _s: EasingStyle): number
	return t * t * t
end

local function quart(t: number, _s: EasingStyle): number
	return t * t * t * t
end

local function quint(t: number, _s: EasingStyle): number
	return t * t * t * t * t
end

local function exponential(t: number, _s: EasingStyle): number
	return t == 0 and 0 or math.pow(2, 10 * (t - 1))
end

local function sine(t: number, _s: EasingStyle): number
	return 1 - math.cos((t * math.pi) / 2)
end

local function elastic(t: number, _s: EasingStyle): number
	return t == 0 and 0 or t == 1 and 1 or -math.pow(2, 10 * t - 10) * math.sin((t * 10 - 10.75) * ((2 * math.pi) / 3))
end

local function back(t: number, _s: EasingStyle): number
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

local function bounce(t: number, _s: EasingStyle): number
	return 1 - easeOutBounce(1 - t)
end

local function circular(t: number, _s: EasingStyle): number
	return -(math.sqrt(1 - t * t) - 1)
end

-- Function to evaluate cubic bezier x(t) or y(t) at time t
local function evaluateBezier(t: number, p1: number, p2: number): number
	local oneMinusT = 1 - t
	local oneMinusT2 = oneMinusT * oneMinusT
	local t2 = t * t

	return 3 * oneMinusT2 * t * p1 + 3 * oneMinusT * t2 * p2 + t * t2
end

local NUM_ITERATIONS = 10
local function cubicBezier(t: number, values: EasingStyle): number
	assert(typeof(values) == "table", "Expected values to be a table")
	assert(#values == 4, "Expected values to have 4 elements")

	local x1, y1, x2, y2 = table.unpack(values)

	assert(x1 >= 0 and x1 <= 1, "x1 must be between 0 and 1")
	assert(x2 >= 0 and x2 <= 1, "x2 must be between 0 and 1")

	-- Handle edge cases
	if t <= 0 then
		return 0
	end
	if t >= 1 then
		return 1
	end

	-- Binary search to find t value where x(t) = target
	local left = 0
	local right = 1
	local target = t
	local iterationCount = 0
	local finalError

	for _ = 1, NUM_ITERATIONS do
		iterationCount += 1
		local mid = (left + right) / 2
		local x = evaluateBezier(mid, x1, x2)
		finalError = math.abs(x - target)

		if finalError < 0.0001 then
			-- Found close enough match
			local y = evaluateBezier(mid, y1, y2)

			return y
		elseif x < target then
			left = mid
		else
			right = mid
		end
	end

	-- Use final midpoint
	local finalT = (left + right) / 2
	local y = evaluateBezier(finalT, y1, y2)

	return y
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
	local duration = if inputOptions and inputOptions.duration then inputOptions.duration else 1
	local easingStyle = if inputOptions and inputOptions.easingStyle
		then inputOptions.easingStyle
		else Enum.EasingStyle.Linear

	local easingFunction: (number, Enum.EasingStyle | { number }) -> number = if typeof(easingStyle) == "EnumItem"
			or typeof(easingStyle) == "string"
		then easingFunctions[easingStyle]
		else cubicBezier

	local function step(state: State & EaseState, dt: number): State & EaseState
		local p0 = if state.initialValue ~= nil then state.initialValue else state.value or 0
		local elapsed = (state.elapsed or 0) + dt

		-- If the goalPosition changed, update initialValue
		if state.goal and goalPosition ~= state.goal :: number then
			p0 = state.value
			elapsed = 0
		end

		local t = math.min(elapsed / duration, 1)
		local easedT = easingFunction(t, easingStyle)

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
