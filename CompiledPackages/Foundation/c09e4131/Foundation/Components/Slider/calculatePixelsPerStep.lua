--[[
	Calculates the number of pixels per step for a slider, taking into account the slider's length, step, and range.
]]
local function calculatePixelsPerStep(sliderWidth: number, step: number, range: NumberRange): number
	local totalSteps = (range.Max - range.Min) / step
	local pixelsPerStep = sliderWidth / totalSteps

	return pixelsPerStep
end

return calculatePixelsPerStep
