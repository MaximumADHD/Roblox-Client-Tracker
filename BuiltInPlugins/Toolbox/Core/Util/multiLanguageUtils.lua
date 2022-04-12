--!strict

local multiLanguageUtils = {}

local multiLanguageCheck = function(text: string, funcToExecute)
	if utf8.len(text) == string.len(text) then
		return funcToExecute(text)
	else
		for _, c in utf8.codes(text) do
			if string.len(utf8.char(c)) == 1 then
				return funcToExecute(utf8.nfdnormalize(text))
			end
		end
	end

	return text
end

multiLanguageUtils.upper = function(text: string)
	return multiLanguageCheck(text, string.upper)
end

multiLanguageUtils.lower = function(text: string)
	return multiLanguageCheck(text, string.lower)
end

return multiLanguageUtils