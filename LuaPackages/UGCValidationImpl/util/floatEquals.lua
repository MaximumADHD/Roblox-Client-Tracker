local EPSILON = 1e-12

local function floatEquals(a, b)
	return math.abs(a - b) <= EPSILON
end

return floatEquals
