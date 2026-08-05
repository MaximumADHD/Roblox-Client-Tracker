local SliderStepDirection = require(script.Parent.SliderStepDirection)
type SliderStepDirection = SliderStepDirection.SliderStepDirection

local SliderStepSize = require(script.Parent.SliderStepSize)
type SliderStepSize = SliderStepSize.SliderStepSize

local DEFAULT_STEP_FRACTION = 0.01
-- A page step (L1/R1) moves ten times farther than a fine step for fast traversal.
local PAGE_STEP_FRACTION = 0.1

local function calculateDirectionalStepValue(
	currentValue: number,
	direction: SliderStepDirection,
	range: NumberRange,
	step: number?,
	size: SliderStepSize?
): number
	local span = range.Max - range.Min
	local magnitude
	if size == SliderStepSize.Page then
		-- A page step must clear at least one grid position, otherwise onStep's
		-- nearest-step rounding snaps a coarse-stepped slider back into place.
		magnitude = math.max(PAGE_STEP_FRACTION * span, step or 0)
	elseif step and step > 0 then
		magnitude = step
	else
		magnitude = DEFAULT_STEP_FRACTION * span
	end
	local delta = if direction == SliderStepDirection.Increment then magnitude else -magnitude
	return math.clamp(currentValue + delta, range.Min, range.Max)
end

return calculateDirectionalStepValue
