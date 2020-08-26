local function formatCharacter(character)
	return string.format("%%%02X", character:byte(1,1))
end

return function(stringToEncode)
    return stringToEncode:gsub("[^%w_%-%!%.%~%*%'%(%)]", formatCharacter)
end