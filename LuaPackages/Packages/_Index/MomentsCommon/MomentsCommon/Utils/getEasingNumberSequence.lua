local TweenService = game:GetService("TweenService")

local function linearInterpolate(a: number, b: number, t: number): number
	return a + (b - a) * t
end

local function getEasingNumberSequence(
	initialValue: number,
	finalValue: number,
	steps: number,
	easingStyle: Enum.EasingStyle,
	easingDirection: Enum.EasingDirection
): { NumberSequenceKeypoint }
	local keypoints = {}
	for i = 0, steps do
		local t = i / steps
		local alpha = TweenService:GetValue(t, easingStyle, easingDirection)
		local value = linearInterpolate(initialValue, finalValue, alpha)
		local keypoint = NumberSequenceKeypoint.new(t, value)
		table.insert(keypoints, keypoint)
	end

	return keypoints
end

return getEasingNumberSequence
