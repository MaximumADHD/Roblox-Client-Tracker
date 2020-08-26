-- Performs multiple replacements on the given string.
-- replacements is a table where the keys are patterns to be replaced, and the
-- values are the replacements to be made. For example:
-- StringReplaceAll(
--     "key1 key2 key3",
--     {["%w+1"] = "value1", ["%w+2"] = "value2"}
-- )
-- becomes "value1 value2 key3".
return function(str, replacements)
	if type(str) ~= "string" then
		return ""
	end

	if type(replacements) ~= "table" then
		return str
	end

	local result = str
	for piiStr, replaceStr in pairs(replacements) do
		if type(piiStr) == "string" and type(replaceStr) == "string" then
			result = string.gsub(result, piiStr, replaceStr)
		end
	end

	return result
end