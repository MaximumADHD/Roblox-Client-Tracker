return function(targetString, blacklistedCharacter)
	local charactersArray = {}
	local indexArray = {}
	for index, byte in utf8.codes(targetString) do
		local graphemeCharacter = utf8.char(byte)
		table.insert(charactersArray, 1, graphemeCharacter)
		table.insert(indexArray, 1, index)
	end
	for index, graphemeCharacter in ipairs(charactersArray) do
		if graphemeCharacter ~= blacklistedCharacter then
			return targetString:sub(1, indexArray[index])
		end
	end

	return ""
end