local getStepGridPosition = require(script.Parent.getStepGridPosition)

--[[
	Clamps a typed value to the range and, with a step, moves it to the nearest
	value on the grid `range.Min + n * step`. The range maximum counts as a grid
	value so it stays reachable when the grid does not land on it.
]]
local function snapInputSliderValue(value: number, step: number?, range: NumberRange): number
	local clamped = math.clamp(value, range.Min, range.Max)
	if step == nil then
		return clamped
	end

	local gridValue = range.Min + math.round(getStepGridPosition(clamped, step, range)) * step
	if math.abs(range.Max - clamped) < math.abs(gridValue - clamped) then
		return range.Max
	end
	return math.clamp(gridValue, range.Min, range.Max)
end

return snapInputSliderValue
