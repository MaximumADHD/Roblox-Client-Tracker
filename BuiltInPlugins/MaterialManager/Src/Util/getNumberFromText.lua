return function(text: string) : number?
	if utf8.len(text) == 0 then
		return nil
	end
	local numberFromText = tonumber(text)
	if numberFromText and numberFromText > 0 then
		return numberFromText
	end
	return nil
end
