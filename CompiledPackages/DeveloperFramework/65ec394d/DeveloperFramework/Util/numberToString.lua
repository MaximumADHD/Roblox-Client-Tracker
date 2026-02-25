--[[
	This helper method prints a number to a particular number of
	decimal places, truncating any trailing zeroes
]]
local function numberToString(n: number, precision: number)
	local roundedString = ("%." .. precision .. "f"):format(n)
	-- Match truncate trailing zeros, including dp
	local suffix = roundedString:match("%.?0+$") or ""
	return roundedString:sub(1, #roundedString - #suffix)
end

return numberToString
