--[[
	Utilities for converting track data into interpolated values
	for rendering and exporting.
]]

local TweenService = game:GetService("TweenService")

local KeyframeUtils = {}

-- Gets the value of the given track at the given frame.
-- Can also receive values between frames, for exporting at higher framerates.
function KeyframeUtils:getValue(track, frame)
	local keyframes = track.Keyframes
	local lowIndex, highIndex = self.findNearestKeyframes(keyframes, frame)
	local lowKeyframe = keyframes[lowIndex]
	local highKeyframe = highIndex and keyframes[highIndex]
	if highIndex == nil then
		return track.Data[lowKeyframe].Value
	else
		return self:blendKeyframes(track.Data, frame, lowKeyframe, highKeyframe)
	end
end

-- Binary search to find the nearest keyframes
-- If the frame is exactly found, the index of the frame is returned.
-- If the frame is not found, the indices of the two nearest frames are returned.
-- If the frame is too low, the index of the first keyframe is returned.
-- If the frame is too high, the index of the last keyframe is returned.
function KeyframeUtils.findNearestKeyframes(keyframes, frame)
	assert(#keyframes > 0, "Keyframes array cannot be empty.")

	local minIndex = 1
	local maxIndex = #keyframes

	if (frame < keyframes[minIndex]) then
		return minIndex, nil
	elseif (frame > keyframes[maxIndex]) then
		return maxIndex, nil
	end

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if frame == currentValue then
			return currentIndex, nil
		elseif frame > currentValue then
			minIndex = currentIndex + 1
		elseif frame < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	if keyframes[currentIndex] > frame then
		return currentIndex - 1, currentIndex
	else
		return currentIndex, currentIndex + 1
	end
end

-- Finds the index of the given keyframe, or returns nil if
-- the keyframe does not exist in the table.
function KeyframeUtils.findKeyframe(keyframes, frame)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if frame == currentValue then
			return currentIndex
		elseif frame > currentValue then
			minIndex = currentIndex + 1
		elseif frame < currentValue then
			maxIndex = currentIndex - 1
		end
	end

	return nil
end

-- Finds the index to insert the new frame so that the
-- Keyframes array stays sorted.
function KeyframeUtils.findInsertIndex(keyframes, frame)
	local minIndex = 1
	local maxIndex = #keyframes

	local currentIndex
	while minIndex <= maxIndex do
		currentIndex = math.floor((maxIndex + minIndex) / 2)
		local currentValue = keyframes[currentIndex]

		if frame == currentValue then
			return nil
		elseif frame > currentValue then
			minIndex = currentIndex + 1
		elseif frame < currentValue then
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

-- Rounds a float to the nearest frame.
function KeyframeUtils.getNearestFrame(value)
	return math.floor(value + 0.5)
end

-- Snaps a float to the nearest frame within a tolerance value
function KeyframeUtils.snapToFrame(value, tolerance)
	assert(tolerance > 0 and tolerance < 1, "Tolerance should be between 0 and 1.")
	local nearestFrame = KeyframeUtils.getNearestFrame(value)
	if math.abs(value - nearestFrame) < tolerance then
		return nearestFrame
	else
		return value
	end
end

-- TODO: AVBURST-877 We need to have an equivalent for Cubic easing
local function convertEasingStyle(poseEasingStyle)
	if poseEasingStyle == Enum.PoseEasingStyle.Cubic then
		return Enum.EasingStyle.Quad
	else
		return Enum.EasingStyle[poseEasingStyle.Name]
	end
end

-- Blends the values of two keyframes based on the current frame position
function KeyframeUtils:blendKeyframes(dataTable, frame, low, high)
	assert(low < high, "Low keyframe must be less than high keyframe.")
	local lowEntry = dataTable[low]
	local highEntry = dataTable[high]
	local distance = (frame - low) / (high - low)

	local alpha
	if lowEntry.EasingStyle == Enum.PoseEasingStyle.Constant then
		return lowEntry.Value
	elseif lowEntry.EasingStyle == Enum.PoseEasingStyle.Linear then
		alpha = distance
	else
		alpha = TweenService:GetValue(distance,
			convertEasingStyle(lowEntry.EasingStyle),
			Enum.EasingDirection[lowEntry.EasingDirection.Name])
	end

	return self.interpolate(lowEntry.Value, highEntry.Value, alpha)
end

return KeyframeUtils