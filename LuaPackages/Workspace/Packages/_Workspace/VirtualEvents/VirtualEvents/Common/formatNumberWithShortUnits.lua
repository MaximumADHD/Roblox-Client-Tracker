--[[
	Transforms big numbers into human-readable ones.

	For thousands and millions, when there are 1-2 leading digits, decimals are
	kept. And when there are 3 leading digits, decimals are discarded. For
	example, 99,500,000 becomes 99.5M, but 999,500,000 becomes 999M

	    1000 -> "1K"
	    1500 -> "1.5K"
	    55,500 -> "55.5K"
	    999,999 -> "999K"

	    1,000,000 -> "1M"
	    1,500,000 -> "1.5M"
	    55,500,000 -> "55.5M"
	    999,999,999 -> "999M"

	For billions, the decimal place is dropped. This is because the number is so
	large that a human reader doesn't get useful information out of the extra
	precision.

	    1,000,000,000 -> "1B"
	    1,500,000,000 -> "1B"
	    55,500,000,000 -> "55B"
	    999,999,999,999 -> "999B"

	Any number between the range (-1000, 1000) is simply transformed into a
	string.
]]
local function formatNumberWithShortUnits(n: number): string
	local absN = math.abs(n)
	local short: string

	if absN >= 1e9 then
		short = ("%.0fB"):format(math.floor(n / 1e9))
	elseif absN >= 1e6 then
		if absN >= 1e8 then
			short = ("%.0fM"):format(math.floor(n / 1e6))
		else
			short = ("%.1fM"):format(n / 1e6)
		end
	elseif absN >= 1e3 then
		if absN >= 1e5 then
			short = ("%.0fK"):format(math.floor(n / 1e3))
		else
			short = ("%.1fK"):format(n / 1e3)
		end
	else
		short = tostring(n)
	end

	-- Trim trailing zero so that strings like 1.0M becomes 1M
	local lead, unit = short:match("(%d+)%.0(%w+)")
	if lead and unit then
		short = lead .. unit
	end

	return short
end

return formatNumberWithShortUnits
