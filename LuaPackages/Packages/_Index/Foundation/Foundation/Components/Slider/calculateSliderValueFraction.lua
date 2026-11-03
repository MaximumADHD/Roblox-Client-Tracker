local function calculateSliderValueFraction(value: number, range: NumberRange): number
	return math.clamp((value - range.Min) / (range.Max - range.Min), 0, 1)
end

return calculateSliderValueFraction
