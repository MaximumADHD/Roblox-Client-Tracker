--[[
	Utility functions for curves.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Templates = require(Plugin.Src.Util.Templates)
local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local CurveUtils = {}

function CurveUtils.makeConstant(easingDirection, tickA, keyframeA, tickB, keyframeB)
	keyframeA.InterpolationMode = Enum.KeyInterpolationMode.Constant
	keyframeA.EasingStyle = nil
	keyframeA.EasingDirection = nil
	keyframeA.LeftSlope = nil
	keyframeB.RightSlope = nil

	-- No new keyframes
	return {}
end

function CurveUtils.makeLinear(easingDirection, tickA, keyframeA, tickB, keyframeB)
	local dt = tickB - tickA
	local dv = keyframeB.Value - keyframeA.Value
	local slope = dv / dt

	keyframeA.RightSlope = nil
	keyframeB.LeftSlope = nil

	-- No new keyframes
	return {}
end

function CurveUtils.makeCubic(easingDirection, tickA, keyframeA, tickB, keyframeB)
	local dt = tickB - tickA
	local dv = keyframeB.Value - keyframeA.Value

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

function CurveUtils.makeBounce(easingDirection, tickA, keyframeA, tickB, keyframeB)
	-- See https://www.desmos.com/calculator/r4ifprprpp
	-- The weight is the equation of a curve between points (0, 1) and (1, 0).
	-- After an affine scaling (translation is irrelevant) bringing the weight curve to
	-- the domain [0, dt] -> [0, dv], the initial derivative of the curve is multiplied
	-- by dv and divided by dt. We evaluate that curve on each rebound. Also, the slopes
	-- are mirrored for each curve (the curves are parabolas).

	-- The magic numbers come from KeyframeSequence.cpp:bounceEasingStyle(t)
	-- Note that Easing In and Out are inverted compared to the engine. The ACE relied
	-- on TweenService and should continue to do so.
	local dt = tickB - tickA
	local dv = keyframeB.Value - keyframeA.Value
	local factor = 2 * 7.5625 * dv / dt

	-- Each bounce is defined by the abscissa of its extremum and its halfwidth (distance to
	-- the root/rebound)
	local bounces = {
		{extremum = 0.0, halfWidth = 0.36363636},
		{extremum = 0.54545454, halfWidth = 0.18181818},
		{extremum = 0.81818181, halfWidth = 0.09090909},
		{extremum = 0.95454545, halfWidth = 0.04545454},
	}

	local prevKeyframe
	local slope
	local keyframes = {}

	if easingDirection == Enum.PoseEasingDirection.Out then
		keyframeA.RightSlope = 0
		for index, bounce in ipairs(bounces) do
			local keyframe

			slope = factor * bounce.halfWidth

			if index < #bounces then
				-- Create an intermediate keyframe
				keyframe = Templates.keyframe()
				keyframe.Value = keyframeB.Value
				keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
				keyframe.LeftSlope = slope

				-- Calculate the rebound tick
				local tick = bounce.extremum + bounce.halfWidth
				tick = KeyframeUtils.getNearestTick(tick * dt)

				keyframes[tick] = keyframe
			end

			if prevKeyframe then
				prevKeyframe.RightSlope = -slope
			end
			prevKeyframe = keyframe
		end
		keyframeB.LeftSlope = slope
	else
		keyframeB.LeftSlope = 0
		for index, bounce in ipairs(bounces) do
			local keyframe

			slope = -factor * bounce.halfWidth

			if index < #bounces then
				-- Create an intermediate keyframe
				keyframe = Templates.keyframe()
				keyframe.Value = keyframeA.Value
				keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
				keyframe.RightSlope = -slope

				-- Calculate the rebound tick
				local tick = 1 - bounce.extremum - bounce.halfWidth
				tick = KeyframeUtils.getNearestTick(tick * dt)

				keyframes[tick] = keyframe
			end

			if prevKeyframe then
				prevKeyframe.LeftSlope = slope
			end
			prevKeyframe = keyframe
		end

		keyframeA.RightSlope = -slope
	end

	return keyframes
end

function CurveUtils.makeElastic(easingDirection, tickA, keyframeA, tickB, keyframeB)
	local dt = tickB - tickA
	local dv = keyframeB.Value - keyframeA.Value

	-- The original elastic equation is:
	-- w = 1+2^(-10t) * sin(t - 0.3/4) * 2 * pi / 0.3)  [keyframeSequence.cpp again]
	-- Desmos (https://www.desmos.com/calculator/tv7kefajsi) provides the local extrema so we'll
	-- hardcode them rather than finding them analytically. Eventually this will be replaced
	-- by a generator anyway. At those extrema, by definition, the slope is zero.
	-- The only value not provided by Desmos is the slope when t = 0, which can easily
	-- be found and is 10*ln(2) ~= 6.9314718056
	local extrema = {
		{ x = 0.135, y = 1.3731 },
		{ x = 0.285, y = 0.8681 },
		{ x = 0.435, y = 1.0466 },
		{ x = 0.585, y = 0.9835 },
		{ x = 0.735, y = 1.0058 },
		{ x = 0.885, y = 0.9979 }
	}

	local keyframes = {}

	if easingDirection == Enum.PoseEasingDirection.Out then
		keyframeA.RightSlope = 6.9314718056 * dv / dt
		keyframeB.LeftSlope = 0

		for _, extremum in ipairs(extrema) do
			-- Create an intermediate keyframe
			local keyframe = Templates.keyframe()
			keyframe.Value = keyframeA.Value + extremum.y * dv
			keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
			keyframe.LeftSlope = 0
			keyframe.RightSlope = 0

			local tick = KeyframeUtils.getNearestTick(tickA + extremum.x * dt)
			keyframes[tick] = keyframe
		end
	else
		keyframeA.RightSlope = 0
		keyframeB.LeftSlope = 6.9314718056 * dv / dt

		for _, extremum in ipairs(extrema) do
			-- Create an intermediate keyframe
			local keyframe = Templates.keyframe()
			keyframe.Value = keyframeA.Value + (1 - extremum.y) * dv
			keyframe.InterpolationMode = Enum.KeyInterpolationMode.Cubic
			keyframe.LeftSlope = 0
			keyframe.RightSlope = 0

			local tick = KeyframeUtils.getNearestTick(tickA + (1 - extremum.x) * dt)
			keyframes[tick] = keyframe
		end
	end

	return keyframes
end

function CurveUtils.generateCurve(easingStyle, easingDirection, tickA, keyframeA, tickB, keyframeB)
	local func = {
		[Enum.PoseEasingStyle.Constant] = CurveUtils.makeConstant,
		[Enum.PoseEasingStyle.Linear] = CurveUtils.makeLinear,
		[Enum.PoseEasingStyle.Cubic] = CurveUtils.makeCubic,
		[Enum.PoseEasingStyle.Bounce] = CurveUtils.makeBounce,
		[Enum.PoseEasingStyle.Elastic] = CurveUtils.makeElastic
	}

	if easingDirection == Enum.PoseEasingDirection.InOut
		and (easingStyle ~= Enum.PoseEasingStyle.Constant and easingStyle ~= Enum.PoseEasingStyle.Linear) then

		-- For InOut easing, and unless we're dealing with Constant or Linear easing for which InOut is meaningless,
		-- we need to create a keyframe half way between the ends, and apply the easing In on the first half, and
		-- the easing Out on the second half.
		local tick = KeyframeUtils.getNearestTick((tickA + tickB) * 0.5)
		local keyframe = Templates.keyframe()
		keyframe.Value = (keyframeA.Value + keyframeB.Value) * 0.5

		local keyframesA = CurveUtils.generateCurve(easingStyle, Enum.PoseEasingDirection.In, tickA, keyframeA, tick, keyframe)
		local keyframesB = CurveUtils.generateCurve(easingStyle, Enum.PoseEasingDirection.Out, tick, keyframe, tickB, keyframeB)

		local keyframes = Cryo.Dictionary.join(keyframesA, keyframesB)

		-- The curve looks better if we don't include the middle tick for Elastic easing
		if easingStyle ~= Enum.PoseEasingStyle.Elastic then
			keyframes[tick] = keyframe
		end

		return keyframes
	else
		return func[easingStyle](easingDirection, tickA, keyframeA, tickB, keyframeB)
	end
end

return CurveUtils
