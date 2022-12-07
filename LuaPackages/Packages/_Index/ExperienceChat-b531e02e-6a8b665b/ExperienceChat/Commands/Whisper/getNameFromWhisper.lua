local function getArgs(text: string, aliasList: { aliasType: string }): string?
	for _, alias: string in pairs(aliasList) do
		local aliasCall: string = alias .. " "
		local strLen: number = string.len(aliasCall)

		if string.sub(text, 1, strLen):lower() == aliasCall then
			return string.sub(text, strLen + 1)
		end
	end

	return nil
end

return function(text: string, aliasList: { aliasType: string }): string?
	local args = getArgs(text, aliasList)
	if args then
		local words = string.split(args, " ")
		return words[1]
	end

	return nil
end
