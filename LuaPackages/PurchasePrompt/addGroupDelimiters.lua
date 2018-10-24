--[[
	Separates digits in a number into groups of three using the given
	delimiter and ignoring anything after a decimal point

	This function is not locale-aware, and will not be useful for
	formatting numbers in languages that use inconsistent group sizes like
	Indian numbering systems and myriad-based Chinese numbering systems
]]
local function addGroupDelimiters(numberStr, delimiter)
	local delimiterReplace = string.format("%%1%s%%2", delimiter)

	-- Repeat substitution until there are no more unbroken four-digit sequences
	local substitutions
	repeat
		numberStr, substitutions = string.gsub(numberStr, "^(-?%d+)(%d%d%d)", delimiterReplace)
	until substitutions == 0

	return numberStr
end

return addGroupDelimiters