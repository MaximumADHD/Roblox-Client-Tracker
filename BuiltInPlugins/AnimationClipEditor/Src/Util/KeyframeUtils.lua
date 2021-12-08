--[[
	Utilities for converting track data into interpolated values
	for rendering and exporting.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local TweenService = game:GetService("TweenService")

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagQuaternionChannels = require(Plugin.LuaFlags.GetFFlagQuaternionChannels)
local FFlagCubicEasingStyle = game:DefineFastFlag("ACECubicEasingStyle2", false)

local KeyframeUtils = {}

function KeyframeUtils.getDefaultValue(trackType)
	if trackType == Constants.TRACK_TYPES.CFrame then
		return CFrame.new()
	elseif GetFFlagChannelAnimations() and (trackType == Constants.TRACK_TYPES.Position or
		trackType == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation)) then
		return Vector3.new()
	elseif GetFFlagChannelAnimations() and (trackType == Constants.TRACK_TYPES.Number or trackType == Constants.TRACK_TYPES.Angle) then
		return 0
	elseif trackType == Constants.TRACK_TYPES.Facs then
		return 0
	elseif GetFFlagQuaternionChannels() and trackType == Constants.TRACK_TYPES.Quaternion then
		return CFrame.new()
	end
end

if GetFFlagChannelAnimations() then
	-- Gets the value of the given track at the given tick.
	-- Can also receive values between frames, for exporting at higher framerates.
	KeyframeUtils.getValue = function(track, tck)
		if track.Keyframes and not isEmpty(track.Keyframes) then
			local keyframes = track.Keyframes
			local lowIndex, highIndex = KeyframeUtils.findNearestKeyframes(keyframes, tck)
			local lowKeyframe = keyframes[lowIndex]
			local highKeyframe = highIndex and keyframes[highIndex]
			if highIndex == nil then
				return track.Data[lowKeyframe].Value
			elseif track.IsCurveTrack then
				return KeyframeUtils.blendCurveKeyframes(track, tck, lowKeyframe, highKeyframe)
			else
				return KeyframeUtils:blendKeyframes(track.Data, tck, lowKeyframe, highKeyframe)
			end
		end
		if not GetFFlagChannelAnimations() then
			assert(track.Components and not isEmpty(track.Components), "Keyframes and Components arrays cannot be empty.")
		else
			if track.Type == Constants.TRACK_TYPES.CFrame then
				local positionTrack = track.Components[Constants.PROPERTY_KEYS.Position]
				local rotationTrack = track.Components[Constants.PROPERTY_KEYS.Rotation]

				local position = positionTrack and KeyframeUtils.getValue(positionTrack, tck) or Vector3.new()

				if rotationTrack.Type == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation) then
					local rotation = rotationTrack and KeyframeUtils.getValue(rotationTrack, tck) or Vector3.new()
					return CFrame.new(position) * CFrame.fromEulerAnglesXYZ(rotation.X, rotation.Y, rotation.Z)
				else
					local rotation = rotationTrack and KeyframeUtils.getValue(rotationTrack, tck) or CFrame.new()
					return CFrame.new(position) * rotation
				end
			elseif track.Type == Constants.TRACK_TYPES.Position or track.Type == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation) then
				local XTrack = track.Components[Constants.PROPERTY_KEYS.X]
				local YTrack = track.Components[Constants.PROPERTY_KEYS.Y]
				local ZTrack = track.Components[Constants.PROPERTY_KEYS.Z]

				local x = XTrack and KeyframeUtils.getValue(XTrack, tck) or 0
				local y = YTrack and KeyframeUtils.getValue(YTrack, tck) or 0
				local z = ZTrack and KeyframeUtils.getValue(ZTrack, tck) or 0

				return Vector3.new(x, y, z)
			end

			return KeyframeUtils.getDefaultValue(track.Type)
		end
	end
else
	-- Gets the value of the given track at the given tick.
	-- Can also receive values between ticks, for exporting at higher framerates.
	KeyframeUtils.getValue = function(self, track, tck)
		local keyframes = track.Keyframes
		local lowIndex, highIndex = self.findNearestKeyframes(keyframes, tck)
		local lowKeyframe = keyframes[lowIndex]
		local highKeyframe = highIndex and keyframes[highIndex]
		if highIndex == nil then
			return track.Data[lowKeyframe].Value
		else
			return self:blendKeyframes(track.Data, tck, lowKeyframe, highKeyframe)
		end
	end
end

-- TODO: This is awful design
-- Sometimes the first return value contains the exact key, so it's not really the previous index
-- Sometimes it contains the next index, because there is no previous index
-- From time to time, the first value will actually contain the previous index.
-- Depending on that, sometimes the next index will be available as the second return value
-- Binary search to find the nearest keyframes
-- If the tick is exactly found, the index of the tick is returned.
-- If the tick is not found, the indices of the two nearest ticks are returned.
-- If the tick is too low, the index of the first keyframe is returned.
-- If the tick is too high, the index of the last keyframe is returned.
function KeyframeUtils.findNearestKeyframes(keyframes, tck)
	if GetFFlagChannelAnimations() then
		if keyframes == nil or #keyframes == 0 then
			return nil, nil
		end
	else
		assert(#keyframes > 0, "Keyframes array cannot be empty.")
	end

	local minIndex = 1
	local maxIndex = #keyframes

	if (tck < keyframes[minIndex]) then
		return minIndex, nil
	elseif (tck > keyframes[maxIndex]) then
		return maxIndex, nil
	end

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tck == currentValue then
			return currentIndex, nil
		elseif tck > currentValue then
			minIndex = currentIndex + 1
		elseif tck < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	if keyframes[currentIndex] > tck then
		return currentIndex - 1, currentIndex
	else
		return currentIndex, currentIndex + 1
	end
end

-- Returns the exact index, the previous index, and the next index around a specific keyframe.
-- The exact index is set if the keyframe is exactly found
-- The previous and next index are returned if the keyframe is not found
function KeyframeUtils.findNearestKeyframesProperly(keyframes, tck)
	if keyframes == nil or #keyframes == 0 then
		return nil, nil, nil
	end

	local minIndex = 1
	local maxIndex = #keyframes

	if tck < keyframes[minIndex] then
		return nil, nil, minIndex
	elseif tck > keyframes[maxIndex] then
		return nil, maxIndex, nil
	end

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tck == currentValue then
			return currentIndex, nil, nil
		elseif tck > currentValue then
			minIndex = currentIndex + 1
		elseif tck < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	if keyframes[currentIndex] > tck then
		return nil, currentIndex - 1, currentIndex
	else
		return nil, currentIndex, currentIndex + 1
	end
end

-- Finds the index of the given keyframe, or returns nil if
-- the keyframe does not exist in the table.
function KeyframeUtils.findKeyframe(keyframes, tck)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tck == currentValue then
			return currentIndex
		elseif tck > currentValue then
			minIndex = currentIndex + 1
		elseif tck < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	return nil
end

-- Finds the index to insert the new frame so that the
-- Keyframes array stays sorted.
-- Returns nil if the keyframe already exists.
function KeyframeUtils.findInsertIndex(keyframes, tck)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if tck == currentValue then
			return nil
		elseif tck > currentValue then
			minIndex = currentIndex + 1
		elseif tck < currentValue then
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

function KeyframeUtils.getNearestTick(tck)
	return math.floor(tck + 0.5)
end

function KeyframeUtils.getNearestFrame(tck, frameRate)
	-- Find the closest frame
	local frame = tck * frameRate / Constants.TICK_FREQUENCY
	local snapFrame = math.floor(frame + 0.5)

	-- Convert the frame back to ticks.
	-- frameRate might not be a divisor of TICK_FREQUENCY, so we round again.
	tck = snapFrame * Constants.TICK_FREQUENCY / frameRate
	local snapTick = math.floor(tck + 0.5)

	return snapTick
end

-- Snaps a float to the nearest tick within a tolerance value
function KeyframeUtils.snapToFrame(value, tolerance)
	assert(tolerance > 0 and tolerance < 1, "Tolerance should be between 0 and 1.")
	local nearestFrame = KeyframeUtils.getNearestTick(value)
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

-- Get either the left or the right slope at a tick. The keyframe at that tick must exist.
-- This is used by auto tangents to "fill in the blanks".
-- To get the slopes anywhere, CurveUtils.getSlopes() should be used
function KeyframeUtils.getSlope(track, tck, side)
	-- This local function does the heavy work. It can be reentrant and requesting to use finiteDifferences
	-- rather than using the "other" slope. This avoids the situation where the right slope asks the value of
	-- the left slope, which in turn asks the value of the right slope, etc.
	local function getSlope(track, tck, side, useFiniteDifference)
		local keyIndex = KeyframeUtils.findNearestKeyframesProperly(track.Keyframes, tck)
		if not keyIndex then
			return 0
		end

		local keyTick = track.Keyframes[keyIndex]
		local keyframe = track.Data[keyTick]

		-- Helpers to navigate the keyframes
		local function getPrevKeyframe()
			local prevTick = track.Keyframes[keyIndex-1]
			return prevTick, prevTick and track.Data[prevTick] or nil
		end

		local function getNextKeyframe()
			local nextTick = track.Keyframes[keyIndex+1]
			return nextTick, nextTick and track.Data[nextTick] or nil
		end

		-- Finite difference. If both the previous and the next keyframe are available,
		-- return the slope. If not, return 0
		local function finiteDifference()
			local prevTick, prevKeyframe = getPrevKeyframe()
			local nextTick, nextKeyframe = getNextKeyframe()
			if prevTick and nextTick then
				if GetFFlagQuaternionChannels() and track.Type == Constants.TRACK_TYPES.Quaternion then
					return .5 * ((1 / (nextTick - tck)) + (1 / (tck - prevTick)))
				else
					return .5 * (((nextKeyframe.Value - keyframe.Value) / (nextTick - tck)) +
								((prevKeyframe.Value - keyframe.Value) / (prevTick - tck)))
				end
			else
				return 0
			end
		end

		if side == Constants.SLOPES.Right then
			-- Trivial cases: Constant and linear
			if keyframe.InterpolationMode == Enum.KeyInterpolationMode.Constant then
				return 0
			elseif keyframe.InterpolationMode == Enum.KeyInterpolationMode.Linear then
				local nextTick, nextKeyframe = getNextKeyframe()
				return nextKeyframe and ((nextKeyframe.Value - keyframe.Value) / (nextTick - tck)) or 0
			-- Cubic case
			else
				if keyframe.RightSlope then
					-- If the slope is defined, use it.
					return keyframe.RightSlope
				elseif not useFiniteDifference then
					-- If not, find the left slope in any possible way, including finite differences
					return getSlope(track, tck, Constants.SLOPES.Left, true)
				else
					-- We are here because the left side asked us to find the right side, and neither is available.
					-- Use finite differences.
					return finiteDifference()
				end
			end
		else
			local prevTick, prevKeyframe = getPrevKeyframe()
			if not prevKeyframe then
				return 0
			end
			-- Trivial cases: Constant and Linear
			if prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Constant then
				return 0
			elseif prevKeyframe.InterpolationMode == Enum.KeyInterpolationMode.Linear then
				return (prevKeyframe.Value - keyframe.Value) / (prevTick - tck)
			-- Cubic case
			else
				if keyframe.LeftSlope then
					-- If the slope is defined, use it
					return keyframe.LeftSlope
				elseif not useFiniteDifference then
					-- If not, find the right slope in any possible way, including finite differences
					return getSlope(track, tck, Constants.SLOPES.Right, true)
				else
					-- We are here because the right side asked us to find the left side, and neither is available.
					-- Use finite differences
					return finiteDifference()
				end
			end
		end
	end

	return getSlope(track, tck, side, false)
end

-- Get the left and right slopes of the given track at the given tick
-- This is called before adding a keyframe, so in the case of a quaternion track we need to scale the slopes:
-- Each segment of a quaternion curve goes from value 0 to 1 over the range (previous tick, next tick).
-- The new slopes at tick must consider that the value at tick is now 1, and not what the curve used to be.
-- Since the slope is constant for constant and linear segments, this only applies to cubic segments.
function KeyframeUtils.getSlopes(track, tck)
	if not track.Keyframes or isEmpty(track.Keyframes) then
		return nil, nil
	end

	local keyframes = track.Keyframes
	local data = track.Data

	if data[tck] then
		return KeyframeUtils.getSlope(track, tck, Constants.SLOPES.Left),
				KeyframeUtils.getSlope(track, tck, Constants.SLOPES.Right)
	end

	local lowIndex, highIndex = KeyframeUtils.findNearestKeyframes(keyframes, tck)
	if lowIndex and highIndex then
		local lowTick = keyframes[lowIndex]
		local highTick = keyframes[highIndex]
		local lowKey = data[lowTick]
		local highKey = data[highTick]

		-- Trivial: Constant or linear modes
		if lowKey.EasingSyle == Enum.KeyInterpolationMode.Constant then
			return 0, 0
		elseif lowKey.EasingStyle == Enum.KeyInterpolationMode.Linear then
			local slope
			if GetFFlagQuaternionChannels() and track.Type == Constants.TRACK_TYPES.Quaternion then
				slope = 1 / (highTick - lowTick)
			else
				slope = (highKey.Value - lowKey.Value) / (highTick - lowTick)
			end
			return slope, slope
		end

		-- Compute the slope somewhere on a cubic curve
		-- https://www.desmos.com/calculator/7zzfzpzidl
		local lowSlope = KeyframeUtils.getSlope(track, lowTick, Constants.SLOPES.Right)
		local highSlope = KeyframeUtils.getSlope(track, highTick, Constants.SLOPES.Left)
		local deltaTick = highTick - lowTick
		local t = (tck - lowTick) / deltaTick

		local g00 = 6 * t * (t - 1)
		local g10 = (t - 1) * (3 * t - 1)
		local g01 = -g00
		local g11 = t * (3 * t - 2)

		local slope
		if GetFFlagQuaternionChannels() and track.Type == Constants.TRACK_TYPES.Quaternion then
			slope = g01 / deltaTick
			+ g10 * lowSlope
			+ g11 * highSlope

			-- Scale the slope. We need to calculate the k used for the slerp at tick
			local t2 = t * t
			local h10 = ((t - 2) * t + 1) * t
			local h01 = t2 * (3 - 2 * t)
			local h11 = t2 * (t - 1)
			local k = h10 * deltaTick * lowSlope
				+ h01
				+ h11 * deltaTick * highSlope
			local sleft = slope / k
			local sright = slope / (1 - k)
			return sleft, sright
		else
			slope = (g00 * lowKey.Value + g01 * highKey.Value) / deltaTick
				+ g10 * lowSlope
				+ g11 * highSlope
			return slope, slope
		end

	end

	return 0, 0
end

function KeyframeUtils.blendCurveKeyframes(track, tck, low, high)
	assert(low < high, "Low keyframe must be less than high keyframe.")
	local dataTable = track.Data
	local lowEntry = dataTable[low]
	local highEntry = dataTable[high]
	local deltaTick = high - low
	local t = (tck - low) / deltaTick

	if lowEntry.InterpolationMode == Enum.KeyInterpolationMode.Constant then
		return lowEntry.Value
	elseif lowEntry.InterpolationMode == Enum.KeyInterpolationMode.Linear then
		return KeyframeUtils.interpolate(lowEntry.Value, highEntry.Value, t)
	else
		-- Evaluate the curve using Hermite coefficients
		local lowSlope = KeyframeUtils.getSlope(track, low, Constants.SLOPES.Right)
		local highSlope = KeyframeUtils.getSlope(track, high, Constants.SLOPES.Left)

		local t2 = t * t
		local h00 = t2 * (2 * t - 3) + 1
		local h10 = ((t - 2) * t + 1) * t
		local h01 = t2 * (3 - 2 * t)
		local h11 = t2 * (t - 1)

		if GetFFlagQuaternionChannels() and track.Type == Constants.TRACK_TYPES.Quaternion then
			-- The curve describes how the lerp coefficient evolves (always between 0 and 1)
			local k = h10 * deltaTick * lowSlope
				+ h01
				+ h11 * deltaTick * highSlope
			return KeyframeUtils.interpolate(lowEntry.Value, highEntry.Value, k)
		else
			return h00 * lowEntry.Value
				+ h10 * deltaTick * lowSlope
				+ h01 * highEntry.Value
				+ h11 * deltaTick * highSlope
		end
	end
end

-- Blends the values of two keyframes based on the current tick position
function KeyframeUtils:blendKeyframes(dataTable, tck, low, high)
	assert(low < high, "Low keyframe must be less than high keyframe.")
	local lowEntry = dataTable[low]
	local highEntry = dataTable[high]
	local distance = (tck - low) / (high - low)

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
