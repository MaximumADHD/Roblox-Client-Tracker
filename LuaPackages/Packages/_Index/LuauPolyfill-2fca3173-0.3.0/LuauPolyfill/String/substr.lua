--!strict
return function(s: string, startIndex: number, numberOfCharacters: number?): string
	if numberOfCharacters and numberOfCharacters <= 0 then
		return ""
	end
	return string.sub(s, startIndex, numberOfCharacters and startIndex + numberOfCharacters - 1 or nil)
end
