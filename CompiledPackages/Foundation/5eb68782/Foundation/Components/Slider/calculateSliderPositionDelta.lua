--[[
	Calculates the raw position delta between two drag positions,
	normalized by the slider length.
]]

local function calculateSliderPositionDelta(
	currentPosition: Vector2,
	lastPosition: Vector2,
	sliderLength: number
): number
	return (currentPosition - lastPosition).X / sliderLength
end

return calculateSliderPositionDelta
