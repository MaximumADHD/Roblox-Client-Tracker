--[[
	Calculates a new slider value by applying a normalized delta to the current value,
	scaled by the slider's range and clamped to the range bounds.
]]

local function calculateSliderValueFromDelta(currentValue: number, delta: number, range: NumberRange): number
	local rangeSpan = range.Max - range.Min
	local scaledDelta = delta * rangeSpan
	local newValue = math.clamp(currentValue + scaledDelta, range.Min, range.Max)

	return newValue
end

return calculateSliderValueFromDelta
