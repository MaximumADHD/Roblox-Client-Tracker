--[[
    A collection of Math utils.
]]

local t = require(script.Parent.Typecheck.t)

local Math = {}

--[[
	Rounds a number to a specified number of decimal places (defaulting to 0 decimal places).

	Example:
		Math.round(1.05, 1) -> 1.1
]]
function Math.round(num, numDecimalPlaces)
	assert(t.number(num), "num must be a number")
	assert(t.optional(t.number)(numDecimalPlaces), "numDecimalPlaces must be a number or nil")


	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

return Math