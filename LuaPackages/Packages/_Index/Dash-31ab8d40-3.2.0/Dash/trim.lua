--[=[
	Removes any whitespace at the start and end of the _input_ string.

	@param input The string to trim.
	@return A new string with leading and trailing whitespace removed.
]=]
local function trim(input: string): string
	return input:match("^%s*(.-)%s*$") :: string
end

return trim
