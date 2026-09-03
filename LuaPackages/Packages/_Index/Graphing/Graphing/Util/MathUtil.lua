--!strict

local MathUtil = {}

function MathUtil.lerp(a: number, b: number, t: number): number
	return b * t + a * (1 - t)
end

function MathUtil.inverseLerp(min: number, max: number, val: number): number
	return if max - min ~= 0 then (val - min) / (max - min) else 0
end

function MathUtil.signedPow(value: number, pow: number): number
	return math.pow(math.abs(value), pow) * math.sign(value)
end

function MathUtil.log(base: number, value: number): number
	if base == 10 then
		return math.log10(value)
	end

	return math.log(value) / math.log(base)
end

function MathUtil.roundToNearest(n: number, unit: number): number
	return math.round(n / unit) * unit
end

return MathUtil
