return function(s: string, startIndex: number, numberOfCharacters: number?): string
	if numberOfCharacters and (numberOfCharacters :: number) <= 0 then
		return ""
	end
	return string.sub(
		s,
		startIndex,
		(function()
			if not numberOfCharacters then
				return numberOfCharacters
			end
			return startIndex + (numberOfCharacters :: number) - 1
		end)()
	)
end
