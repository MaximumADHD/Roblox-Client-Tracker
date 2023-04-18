--[[
	Locale-specific group delimiters for displaying numbers. Used to
	format values like 100000 to strings like "100,000". This table
	does not provide any info regarding decimal separators
]]
local groupDelimiterByLocale = {
	["en-us"] = ",",
	["en-gb"] = ",",
	["es-mx"] = ",",
	["es-es"] = ".",
	["fr-fr"] = " ",
	["de-de"] = " ",
	["pt-br"] = ".",
	["zh-cn"] = ",",
	["zh-cjv"] = ",",
	["zh-tw"] = ",",
	["ko-kr"] = ",",
	["ja-jp"] = ",",
	["it-it"] = " ",
	["ru-ru"] = ".",
	["id-id"] = ".",
	["vi-vn"] = ".",
	["th-th"] = ",",
	["tr-tr"] = ".",
}

--[[
	Separates digits in a number into groups of three using the given
	delimiter and ignoring anything after a decimal point

	This function is not locale-aware, and will not be useful for
	formatting numbers in languages that use inconsistent group sizes like
	Indian numbering systems and myriad-based Chinese numbering systems
]]
local function addGroupDelimiters(numberStr: str, delimiter: str)
	local delimiterReplace = string.format("%%1%s%%2", delimiter)

	-- Repeat substitution until there are no more unbroken four-digit sequences
	local substitutions
	repeat
		numberStr, substitutions = string.gsub(numberStr, "^(-?%d+)(%d%d%d)", delimiterReplace)
	until substitutions == 0

	return numberStr
end

return function(locale: str, number: number)
	local delimiter = groupDelimiterByLocale[locale] or ","
	return addGroupDelimiters(number, delimiter)
end
