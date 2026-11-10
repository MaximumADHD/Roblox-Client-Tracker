--[[
	Calculates a new number input value by applying a delta scaled by the step size to the starting value
]]

local function calculateNumberInputValueFromPositions(
	startingValue: number,
	startingXPosition: number,
	dragXPosition: number,
	step: number,
	sensitivity: number?
): number
	local delta = math.floor((dragXPosition - startingXPosition) * (sensitivity or 1))
	local newValue = startingValue + (delta * step)

	return newValue
end

return calculateNumberInputValueFromPositions
