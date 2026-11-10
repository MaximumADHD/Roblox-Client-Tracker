local getThumbTravel = require(script.Parent.getThumbTravel)

-- Where a thumb's knob center sits for pointer input, as a fraction of the
-- track. `knobFraction` is the knob length over the track length.
--
-- Pointer input always maps through the uncontained layout, so a single thumb
-- reads the track the same way whether or not it is contained.
local function toThumbTrackFraction(fraction: number, index: number, count: number, knobFraction: number): number
	local travel = getThumbTravel(count, knobFraction)
	if travel == nil then
		return fraction
	end
	return fraction * travel + (index - 1) * knobFraction
end

return toThumbTrackFraction
