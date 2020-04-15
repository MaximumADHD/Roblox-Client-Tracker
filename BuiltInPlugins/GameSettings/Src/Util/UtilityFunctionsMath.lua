-- singleton

local Math = {}

function Math.clamp(val, min, max)
	return math.max(min, math.min(max, val))
end

return Math