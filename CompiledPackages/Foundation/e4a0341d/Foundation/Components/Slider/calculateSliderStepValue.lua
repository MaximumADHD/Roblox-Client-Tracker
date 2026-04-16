local function calculateSliderStepValue(unsteppedValue: number, step: number, range: NumberRange)
	if step > 0 then
		-- Calculate steps from the range minimum to handle non-zero ranges
		local stepsFromMin = math.floor((unsteppedValue - range.Min) / step + 0.5)
		local steppedValue = math.clamp(range.Min + stepsFromMin * step, range.Min, range.Max)

		return steppedValue
	else
		return unsteppedValue
	end
end

return calculateSliderStepValue
