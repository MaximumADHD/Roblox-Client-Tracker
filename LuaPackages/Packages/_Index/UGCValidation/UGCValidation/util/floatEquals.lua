local EPSILON = 1e-12

local function floatEquals(a: number, b: number, tolInput: number?): boolean
	local tolVal = if tolInput then tolInput else EPSILON
	return math.abs(a - b) <= tolVal
end

return floatEquals
