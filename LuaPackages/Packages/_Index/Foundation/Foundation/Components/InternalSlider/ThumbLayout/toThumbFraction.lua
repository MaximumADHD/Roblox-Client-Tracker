local getThumbTravel = require(script.Parent.getThumbTravel)

-- The thumb fraction that puts the knob center under a pointer at
-- `trackFraction`. Inverse of `toThumbTrackFraction`.
local function toThumbFraction(trackFraction: number, index: number, count: number, knobFraction: number): number
	local travel = getThumbTravel(count, knobFraction)
	if travel == nil then
		return trackFraction
	end
	return math.clamp((trackFraction - (index - 1) * knobFraction) / travel, 0, 1)
end

return toThumbFraction
