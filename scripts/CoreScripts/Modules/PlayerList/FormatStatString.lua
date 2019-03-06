-- Formats a number by adding commas seperation.
-- e.g -1000000.57 -> -1,000,000.57
local function formatNumber(value)
	local _,_,minusSign, int, fraction = tostring(value):find("([-]?)(%d+)([.]?%d*)")
	-- Reverses the int then adds a , every 3 digits.
	int = int:reverse():gsub("%d%d%d", "%1,")
	-- Reverses the int and removes any extra , at the start.
	int = int:reverse():gsub("^,", "")
	return minusSign .. int .. fraction
end

return function(statValue)
	if statValue == nil then
		return "-"
	elseif type(statValue) == "number" then
		return formatNumber(statValue)
	end
	return tostring(statValue)
end
