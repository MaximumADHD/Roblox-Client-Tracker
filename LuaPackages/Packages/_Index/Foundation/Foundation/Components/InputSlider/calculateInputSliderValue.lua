local getStepGridPosition = require(script.Parent.getStepGridPosition)

--[[
	Calculates a scrubbed value from pointer travel. Sensitivity sets how many
	increments each pixel of travel is worth, independently of the step size.

	With a step, values land on the grid `range.Min + n * step`, and the first
	increment moves an off-grid starting value to the adjacent grid line in the
	direction of travel. Without one, each increment adds 1 to the starting value.
]]
local function calculateInputSliderValue(
	startingValue: number,
	travel: number,
	sensitivity: number,
	step: number?,
	range: NumberRange
): number
	-- Truncate toward zero so leftward travel needs the same distance per step as rightward travel.
	local increments = travel * sensitivity
	local steps = math.sign(increments) * math.floor(math.abs(increments))
	if steps == 0 then
		return math.clamp(startingValue, range.Min, range.Max)
	end

	local value = startingValue + steps
	if step ~= nil then
		local position = getStepGridPosition(startingValue, step, range)
		local gridLine = if steps > 0 then math.floor(position) else math.ceil(position)
		value = range.Min + (gridLine + steps) * step
	end

	return math.clamp(value, range.Min, range.Max)
end

return calculateInputSliderValue
