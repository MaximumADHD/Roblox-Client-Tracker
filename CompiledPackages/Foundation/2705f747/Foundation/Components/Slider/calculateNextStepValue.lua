local function calculateNextStepValue(
	displacementX: number,
	currentValue: number,
	step: number,
	range: NumberRange
): number
	-- Determine direction from pixel movement
	local direction = if displacementX > 0 then 1 elseif displacementX < 0 then -1 else 0
	return math.clamp(currentValue + (direction * step), range.Min, range.Max)
end

return calculateNextStepValue
