local DISPLAY_PRECISION = 3

local function formatInputSliderValue(value: number): string
	local multiplier = 10 ^ DISPLAY_PRECISION
	local rounded = math.floor(value * multiplier + 0.5) / multiplier
	-- Rounding a small negative value produces -0, which displays as "-0".
	if rounded == 0 then
		rounded = 0
	end
	return tostring(rounded)
end

return formatInputSliderValue
