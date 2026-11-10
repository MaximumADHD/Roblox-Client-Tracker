-- The fraction of the track each thumb's knob center travels, after the knobs
-- of the other thumbs and, when contained, the half knobs at each end. `nil`
-- when the knobs don't fit, so every knob center sits on its own fraction.
local function getThumbTravel(count: number, knobFraction: number, isContained: boolean?): number?
	local knobCount = if isContained then count else count - 1
	local travel = 1 - knobCount * knobFraction
	return if travel > 0 then travel else nil
end

return getThumbTravel
