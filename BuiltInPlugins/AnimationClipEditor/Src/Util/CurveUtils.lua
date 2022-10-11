--[[
	Utility functions for curves.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Templates = require(Plugin.Src.Util.Templates)
local Constants = require(Plugin.Src.Util.Constants)

local CurveUtils = {}

function CurveUtils.makeCubic(easingDirection, tickA, keyframeA, tickB, keyframeB, isQuaternionTrack)
	local dt = tickB - tickA
	local dv = isQuaternionTrack and 1 or (keyframeB.Value - keyframeA.Value)

	if easingDirection == Enum.PoseEasingDirection.Out then
		keyframeA.RightSlope = 3 * dv / dt
		keyframeB.LeftSlope = 0
	else
		keyframeA.RightSlope = 0
		keyframeB.LeftSlope = 3 * dv / dt
	end

	-- No new keyframes
	return {}
end

function CurveUtils.makeBounce(
	easingDirection,
	tickA,
	keyframeA,
	tickB,
	keyframeB,
	isQuaternionTrack,
	elasticity,
	count
)
	local keyframes = {}
	local dt = tickB - tickA
	local dv = isQuaternionTrack and 1 or (keyframeB.Value - keyframeA.Value)

	-- https://www.desmos.com/calculator/kxuvw88gec
	-- The graph shown in Desmos represents the weight of a Bounce Out interpolation. Keep in mind that the weight
	-- is always expected to go from (0, 0) to (1, 1), as it is used in a lerp going from a key value to the next.

	-- Put in default values that produce the legacy bounce interpolation
	-- We also precalculate the square root of the elasticity as it appears everywhere
	elasticity = elasticity or 0.25
	count = count or 3

	local elSqrt = math.sqrt(elasticity)

	-- Calculate the acceleration constant from the elasticity
	local a = 1
	for n = 1, count do
		a = a + 2 * math.pow(elSqrt, n)
	end

	-- Calculate the new keyframes points (there should be `count` roots and `count` apexes between the two keyframes)
	-- Avoid calculating successive values that involve math.pow(elSqrt, k)
	-- This code isn't really legible, as I have used the same variable names as in Desmos (and variables there are limited to
	-- one character), but I expected the math to be clearer there anyway.
	-- This code also relies on cumulative variables to handle the Sum operator.
	local e = elSqrt
	local slope = 2 * a
	local root = 1
	local lastSlope

	for _ = 1, count do
		local tck
		local keyframe

		-- Add a rebound
		local reboundX = root / a
		-- For normal tracks, the slope is described by the equations in Desmos. Each rebound has a right slope that is
		-- flatter than the previous one (by a factor elSqrt) and of opposite sign (the previous curve goes up, the next one goes down,
		-- as shown on the graph).
		-- For quaternions, however, the value always goes from 0 to 1, so there is no dampening (the dampening comes from the value of
		-- the node), and slope is always positive.
		local reboundLeftSlope = isQuaternionTrack and (2 * a * elSqrt) / e or slope
		local reboundRightSlope = isQuaternionTrack and (2 * a) / e or (-slope * elSqrt)

		-- Add an apex. Even though the curves are parabolas, the apex is required for quaternion tracks. Without the apex, the tracks
		-- would interpolate between identical values.
		local apexX = reboundX + e / a
		local apexY = 1 - e * e

		-- Invert position and slopes if we're dealing with EasingIn
		if easingDirection == Enum.PoseEasingDirection.In then
			reboundX = 1 - reboundX
			local t = reboundLeftSlope
			reboundLeftSlope = reboundRightSlope
			reboundRightSlope = t

			apexX = 1 - apexX
			apexY = 1 - apexY
		end

		-- Create a keyframe for the rebound
		tck = KeyframeUtils.getNearestTick(tickA + reboundX * dt)
		keyframe = Templates.keyframe()
		keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
		keyframe.LeftSlope = reboundLeftSlope * dv / dt
		keyframe.RightSlope = reboundRightSlope * dv / dt
		keyframe.Value = easingDirection == Enum.PoseEasingDirection.In and keyframeA.Value or keyframeB.Value
		keyframes[tck] = keyframe

		-- Keep the slope of the rebound, because we'll need it for the last keyframe
		lastSlope = if easingDirection == Enum.PoseEasingDirection.Out then keyframe.RightSlope else keyframe.LeftSlope

		-- Create a keyframe for the apex
		tck = KeyframeUtils.getNearestTick(tickA + apexX * dt)
		keyframe = Templates.keyframe()
		keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
		keyframe.LeftSlope = 0
		keyframe.RightSlope = 0
		if isQuaternionTrack then
			keyframe.Value = keyframeA.Value:lerp(keyframeB.Value, apexY)
		else
			keyframe.Value = keyframeA.Value + apexY * (keyframeB.Value - keyframeA.Value)
		end
		keyframes[tck] = keyframe

		-- Prepare for next iteration
		root = root + 2 * e
		e = e * elSqrt
		slope = slope * elSqrt
	end

	if easingDirection == Enum.PoseEasingDirection.In then
		if isQuaternionTrack then
			keyframeA.RightSlope = lastSlope
		else
			keyframeA.RightSlope = -lastSlope
		end
		keyframeB.LeftSlope = 0
	else
		keyframeA.RightSlope = 0
		if isQuaternionTrack then
			keyframeB.LeftSlope = lastSlope
		else
			keyframeB.LeftSlope = -lastSlope
		end
	end

	return keyframes
end

function CurveUtils.makeElastic(
	easingDirection,
	tickA,
	keyframeA,
	tickB,
	keyframeB,
	isQuaternionTrack,
	frequency,
	dampening
)
	local keyframes = {}
	local dt = tickB - tickA
	local dv = isQuaternionTrack and 1 or (keyframeB.Value - keyframeA.Value)

	-- https://www.desmos.com/calculator/glh1mdog1v
	-- The graph shown in Desmos represents the weight of an Elastic Out interpolation. Keep in mind that the weight
	-- is always expected to go from (0, 0) to (1, 1), as it is used in a lerp going from a key value to the next.

	-- Put in default values that produce the legacy bounce interpolation
	frequency = frequency or (10 / 3)
	dampening = dampening or 10

	-- There is an abominable value in the equation for the extrema, but amazingly enough that value is constant.
	local TwoPiFrequency = 2 * math.pi * frequency
	local magic = math.atan(-dampening * math.log(2) / TwoPiFrequency) / TwoPiFrequency
	for n = 1, 2 * frequency do
		local x = magic + n / (2 * frequency)
		local y = 1 - math.pow(2, -dampening * x) * math.cos(TwoPiFrequency * x)

		-- Invert position and slope if we're dealing with EasingIn
		if easingDirection == Enum.PoseEasingDirection.In then
			x = 1 - x
			y = 1 - y
		end

		-- Create a keyframe
		local tck = KeyframeUtils.getNearestTick(tickA + x * dt)
		local keyframe = Templates.keyframe()
		keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
		keyframe.LeftSlope = 0
		keyframe.RightSlope = 0
		if isQuaternionTrack then
			keyframe.Value = keyframeA.Value:lerp(keyframeB.Value, y)
		else
			keyframe.Value = keyframeA.Value + y * (keyframeB.Value - keyframeA.Value)
		end
		keyframes[tck] = keyframe
	end

	-- Adjust the slopes at the ends of the segment
	-- The slope at (0, 0) is dampening * ln(2)
	if easingDirection == Enum.PoseEasingDirection.In then
		keyframeA.RightSlope = 0
		keyframeB.LeftSlope = dampening * math.log(2) * dv / dt
	else
		keyframeA.RightSlope = dampening * math.log(2) * dv / dt
		keyframeB.LeftSlope = 0
	end

	return keyframes
end

function CurveUtils.generateCurve(trackType, easingStyle, easingDirection, tickA, keyframeA, tickB, keyframeB)
	local func = {
		-- Nothing to do for Constant and Linear
		[Enum.PoseEasingStyle.Cubic] = CurveUtils.makeCubic,
		[Enum.PoseEasingStyle.Bounce] = CurveUtils.makeBounce,
		[Enum.PoseEasingStyle.Elastic] = CurveUtils.makeElastic,
	}
	local isQuaternionTrack = trackType == Constants.TRACK_TYPES.Quaternion

	keyframeA.InterpolationMode = Constants.POSE_EASING_STYLE_TO_KEY_INTERPOLATION[easingStyle]
	keyframeA.EasingStyle = nil
	keyframeA.EasingDirection = nil

	if
		easingDirection == Enum.PoseEasingDirection.InOut
		and (easingStyle ~= Enum.PoseEasingStyle.Constant and easingStyle ~= Enum.PoseEasingStyle.Linear)
	then
		-- For InOut easing, and unless we're dealing with Constant or Linear easing for which InOut is meaningless,
		-- we need to create a keyframe half way between the ends, and apply the easing In on the first half, and
		-- the easing Out on the second half.
		local tck = KeyframeUtils.getNearestTick((tickA + tickB) * 0.5)
		local keyframe = Templates.keyframe()

		if isQuaternionTrack then
			keyframe.Value = keyframeA.Value:lerp(keyframeB.Value, 0.5)
		else
			keyframe.Value = (keyframeA.Value + keyframeB.Value) * 0.5
		end

		local keyframesA = CurveUtils.generateCurve(
			trackType,
			easingStyle,
			Enum.PoseEasingDirection.In,
			tickA,
			keyframeA,
			tck,
			keyframe
		)
		local keyframesB = CurveUtils.generateCurve(
			trackType,
			easingStyle,
			Enum.PoseEasingDirection.Out,
			tck,
			keyframe,
			tickB,
			keyframeB
		)

		local keyframes = Cryo.Dictionary.join(keyframesA, keyframesB)

		-- The curve looks better if we don't include the middle tick for Elastic easing
		if easingStyle ~= Enum.PoseEasingStyle.Elastic then
			keyframes[tck] = keyframe
		end

		return keyframes
	else
		if func[easingStyle] then
			return func[easingStyle](easingDirection, tickA, keyframeA, tickB, keyframeB, isQuaternionTrack)
		else
			-- Nothing special to do, and no additional keyframes
			return {}
		end
	end
end

-- Find the min and max Y of a track between two consecutive keyframes.
-- See https://www.desmos.com/calculator/zpiscuiegt
function CurveUtils.getYExtents(
	tckA: number,
	valueA: number,
	slopeA: number,
	tckB: number,
	valueB: number,
	slopeB: number
): (number, number)
	local ax, ay = tckA, valueA
	local fx, fy = tckB, valueB

	-- Use keyframe A's value by default, so we can always do a min/max on
	-- all four values, regardless of the number of local extrema we find
	local m1, m2 = ay, ay

	-- Scale the slopes to work within the x=[0, 1], y=[0, 1] interval
	-- (Hermite space)
	local s0 = slopeA * (fx - ax) / (fy - ay)
	local s1 = slopeB * (fx - ax) / (fy - ay)

	-- Calculate the discriminant for the first derivative of the cubic
	-- equation
	local d = (6 - 4 * s0 - 2 * s1)
	local r = d * d - 4 * (3 * s0 + 3 * s1 - 6) * s0

	-- Hermite cubic between (0, 0) and (1, 1), with slopes s0 and s1
	local function h(x: number): number
		return x * (x * ((3 - 2 * x) + (x - 2) * s0 + (x - 1) * s1) + s0)
	end

	if r >= 0 then
		-- At least one local extremum. Find the roots (w1 and possibly w2),
		-- then evaluate the Hermite curve for those roots using h(), and
		-- finally scale the values back to the curve space.
		-- We only care about extrema that are between 0 and 1, as this maps
		-- to the curve between the two keyframes.
		local sqrt_r = math.sqrt(r)

		local w1 = (4 * s0 + 2 * s1 - 6 + sqrt_r) / (6 * s0 + 6 * s1 - 12)
		if w1 > 0 and w1 < 1 then
			m1 = ay + h(w1) * (fy - ay)
		end

		local w2 = (4 * s0 + 2 * s1 - 6 - sqrt_r) / (6 * s0 + 6 * s1 - 12)
		if w2 > 0 and w2 < 1 then
			m2 = ay + h(w2) * (fy - ay)
		end
	end

	return math.min(ay, m1, m2, fy), math.max(ay, m1, m2, fy)
end

return CurveUtils
