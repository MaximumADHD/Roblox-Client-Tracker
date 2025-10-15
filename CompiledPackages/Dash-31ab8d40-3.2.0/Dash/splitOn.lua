local insert = table.insert

--[=[
	Splits _input_ into parts based on a _pattern_ delimiter and returns a table of the parts, followed by a table of the matched delimiters.

	@param input The string to split.
	@param pattern The delimiter pattern to split on.
	@return A tuple containing the parts array and delimiters array.
]=]
local function splitOn(input: string, pattern: string): ({ string }, { string }?)
	local parts = {}
	local delimiters = {}
	local from = 1
	if not pattern then
		for i = 1, #input do
			insert(parts, input:sub(i, i))
		end
		return parts
	end
	local delimiterStart, delimiterEnd = input:find(pattern, from)
	while delimiterStart do
		insert(delimiters, input:sub(delimiterStart, delimiterEnd))
		insert(parts, input:sub(from, delimiterStart - 1))
		from = delimiterEnd + 1
		delimiterStart, delimiterEnd = input:find(pattern, from)
	end
	insert(parts, input:sub(from))
	return parts, delimiters
end

return splitOn
