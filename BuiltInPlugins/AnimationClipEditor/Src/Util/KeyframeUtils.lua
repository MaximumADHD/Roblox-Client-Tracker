--[[
	Utilities for converting track data into interpolated values
	for rendering and exporting.
]]

local TweenService = game:GetService("TweenService")
local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)
local FFlagCubicEasingStyle = game:DefineFastFlag("ACECubicEasingStyle2", false)

local KeyframeUtils = {}

-- Gets the value of the given track at the given tick.
-- Can also receive values between ticks, for exporting at higher framerates.
function KeyframeUtils:getValue(track, tick)
	local keyframes = track.Keyframes
	local lowIndex, highIndex = self.findNearestKeyframes(keyframes, tick)
	local lowKeyframe = keyframes[lowIndex]
	local highKeyframe = highIndex and keyframes[highIndex]
	if highIndex == nil then
		return track.Data[lowKeyframe].Value
	else
		return self:blendKeyframes(track.Data, tick, lowKeyframe, highKeyframe)
	end
end

-- Binary search to find the nearest keyframes
-- If the tick is exactly found, the index of the tick is returned.
-- If the tick is not found, the indices of the two nearest ticks are returned.
-- If the tick is too low, the index of the first keyframe is returned.
-- If the tick is too high, the index of the last keyframe is returned.
function KeyframeUtils.findNearestKeyframes(keyframes, tick)
	assert(#keyframes > 0, "Keyframes array cannot be empty.")

	local minIndex = 1
	local maxIndex = #keyframes

	if (tick < keyframes[minIndex]) then
		return minIndex, nil
	elseif (tick > keyframes[maxIndex]) then
		return maxIndex, nil
	end

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tick == currentValue then
			return currentIndex, nil
		elseif tick > currentValue then
			minIndex = currentIndex + 1
		elseif tick < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	if keyframes[currentIndex] > tick then
		return currentIndex - 1, currentIndex
	else
		return currentIndex, currentIndex + 1
	end
end

-- Finds the index of the given keyframe, or returns nil if
-- the keyframe does not exist in the table.
function KeyframeUtils.findKeyframe(keyframes, tick)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tick == currentValue then
			return currentIndex
		elseif tick > currentValue then
			minIndex = currentIndex + 1
		elseif tick < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	return nil
end

-- Finds the index to insert the new frame so that the
-- Keyframes array stays sorted.
function KeyframeUtils.findInsertIndex(keyframes, tick)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tick == currentValue then
			return nil
		elseif tick > currentValue then
			minIndex = currentIndex + 1
		elseif tick < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	return minIndex
end

-- Interpolates between two values based on type
function KeyframeUtils.interpolate(a, b, alpha)
	if typeof(a) == "CFrame" or typeof(a) == "Vector3" then
		return a:Lerp(b, alpha)
	elseif typeof(a) == "number" then
		return a + ((b - a) * alpha)
	else
		assert(false, "Attempted to interpolate an unsupported value.")
	end
end

function KeyframeUtils.getNearestTick(tick)
	return math.floor(tick + 0.5)
end

-- Rounds a float to the nearest frame.
-- Deprecated when GetFFlagUseTicks() is ON
function KeyframeUtils.getNearestFrame_deprecated(value)
	return math.floor(value + 0.5)
end

function KeyframeUtils.getNearestFrame(tick, frameRate)
	-- Find the closest frame
	local frame = tick * frameRate / Constants.TICK_FREQUENCY
	local snapFrame = math.floor(frame + 0.5)

	-- Convert the frame back to ticks.
	-- frameRate might not be a divisor of TICK_FREQUENCY, so we round again.
	tick = snapFrame * Constants.TICK_FREQUENCY / frameRate
	local snapTick = math.floor(tick + 0.5)

	return snapTick
end

-- Snaps a float to the nearest tick within a tolerance value
function KeyframeUtils.snapToFrame(value, tolerance)
	assert(tolerance > 0 and tolerance < 1, "Tolerance should be between 0 and 1.")
	local nearestFrame = GetFFlagUseTicks() and KeyframeUtils.getNearestTick(value) or KeyframeUtils.getNearestFrame_deprecated(value)
	if math.abs(value - nearestFrame) < tolerance then
		return nearestFrame
	else
		return value
	end
end

-- TODO: AVBURST-877 We need to have an equivalent for Cubic easing
-- Deprecated with FFlagCubicEasingStyle
local function convertEasingStyle(poseEasingStyle)
	if poseEasingStyle == Enum.PoseEasingStyle.Cubic then
		return Enum.EasingStyle.Quad
	else
		return Enum.EasingStyle[poseEasingStyle.Name]
	end
end

-- Blends the values of two keyframes based on the current tick position
function KeyframeUtils:blendKeyframes(dataTable, tick, low, high)
	assert(low < high, "Low keyframe must be less than high keyframe.")
	local lowEntry = dataTable[low]
	local highEntry = dataTable[high]
	local distance = (tick - low) / (high - low)

	local alpha
	if lowEntry.EasingStyle == Enum.PoseEasingStyle.Constant then
		return lowEntry.Value
	elseif lowEntry.EasingStyle == Enum.PoseEasingStyle.Linear then
		alpha = distance
	else
		alpha = TweenService:GetValue(distance,
			FFlagCubicEasingStyle and Enum.EasingStyle[lowEntry.EasingStyle.Name] or convertEasingStyle(lowEntry.EasingStyle),
			Enum.EasingDirection[lowEntry.EasingDirection.Name])
	end

	return self.interpolate(lowEntry.Value, highEntry.Value, alpha)
end

return KeyframeUtils
