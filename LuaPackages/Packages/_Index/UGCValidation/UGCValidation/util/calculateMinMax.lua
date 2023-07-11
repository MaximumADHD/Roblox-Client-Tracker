--!strict

--[[
	calculateMinMax() returns the minimum of currMin and candidateMin, and the maximum of currMax and candidateMax
]]

local function compare(a: Vector3?, b: Vector3?, comparisonFunc: (cmpLhs: number, cmpRhs: number) -> number): Vector3?
	if a and b then
		local lhs = a :: Vector3
		local rhs = b :: Vector3
		return Vector3.new(comparisonFunc(lhs.X, rhs.X), comparisonFunc(lhs.Y, rhs.Y), comparisonFunc(lhs.Z, rhs.Z))
	end
	return a or b
end

local function calculateMinMax(
	currMin: Vector3?,
	currMax: Vector3?,
	candidateMin: Vector3?,
	candidateMax: Vector3?
): Vector3?
	return compare(currMin, candidateMin, math.min), compare(currMax, candidateMax, math.max)
end

return calculateMinMax
