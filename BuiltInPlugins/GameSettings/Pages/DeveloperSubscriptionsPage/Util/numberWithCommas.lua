local function addGroupDelimiters(numberStr, delimiter)
	local delimiterReplace = string.format("%%1%s%%2", delimiter)

	-- Repeat substitution until there are no more unbroken four-digit sequences
	local substitutions
	repeat
		numberStr, substitutions = string.gsub(numberStr, "^(-?%d+)(%d%d%d)", delimiterReplace)
	until substitutions == 0

	return numberStr
end

return function(number)
	return addGroupDelimiters(number, ",")
end