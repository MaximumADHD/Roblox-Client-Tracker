-- Float division leaves grid values such as 0.57 at 56.99999999999999 steps, which would floor to the wrong line.
local GRID_TOLERANCE = 1e-9

--[[
	Returns how many steps `value` sits above `range.Min`, rounded to a whole
	number when float error is all that separates it from a grid line.
]]
local function getStepGridPosition(value: number, step: number, range: NumberRange): number
	local position = (value - range.Min) / step
	local nearest = math.round(position)
	if math.abs(position - nearest) < GRID_TOLERANCE then
		return nearest
	end
	return position
end

return getStepGridPosition
