--[[
	Calculates a new number input value by applying a delta scaled by the step size to the starting value
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Flags = require(Foundation.Utility.Flags)

local function calculateNumberInputValueFromPositions(
	startingValue: number,
	startingXPosition: number,
	dragXPosition: number,
	step: number,
	sensitivity: number?
): number
	local delta = if Flags.FoundationNumberInputBeta
		then math.floor((dragXPosition - startingXPosition) * (sensitivity or 1))
		else dragXPosition - startingXPosition
	local newValue = startingValue + (delta * step)

	return newValue
end

return calculateNumberInputValueFromPositions
