local function escapePatternCharacters(str: string): string
	return string.gsub(str, "([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
end

return {
	escapePatternCharacters = escapePatternCharacters,
}
