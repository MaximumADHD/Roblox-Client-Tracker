--!strict

return function(text: string)
	if utf8.len(text) == string.len(text) then
		return string.upper(text)
	else
		for _, c in utf8.codes(text) do
			if string.len(utf8.char(c)) == 1 then
				return string.upper(utf8.nfdnormalize(text))
			end
		end
	end

	return text
end
