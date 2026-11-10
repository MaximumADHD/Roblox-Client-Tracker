local getThumbTravel = require(script.Parent.getThumbTravel)

-- The offset, as a fraction of the track along the value axis, from a thumb's
-- fraction to the center of its knob. `knobFraction` is the knob length over
-- the track length. Each thumb travels the track minus the knobs of the other
-- thumbs, so thumbs that share a value render edge to edge while the first and
-- last thumbs still reach the same endpoints as a single thumb.
local function getThumbOffset(
	fraction: number,
	index: number,
	count: number,
	knobFraction: number,
	isContained: boolean?
): number
	if getThumbTravel(count, knobFraction, isContained) == nil then
		return 0
	end
	if isContained then
		return (index - 0.5 - fraction * count) * knobFraction
	end
	return (index - 1 - fraction * (count - 1)) * knobFraction
end

return getThumbOffset
