local function getArgs(text: string): string?
	if string.sub(text, 1, 3):lower() == "/w " then
		return string.sub(text, 4)
	elseif string.sub(text, 1, 9):lower() == "/whisper " then
		return string.sub(text, 10)
	end

	return nil
end

return function(text: string): string?
	local args = getArgs(text)
	if args then
		local words = string.split(args, " ")
		return words[1]
	end

	return nil
end
