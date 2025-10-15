local insert = table.insert

--[=[
	Reverses the order of the elements in the _input_ array.

	@param input The array to reverse.
	@return A new array with elements in reverse order.
]=]
local function reverse<T>(input: { T }): { T }
	local output: { T } = {}
	for i = #input, 1, -1 do
		insert(output, input[i])
	end
	return output
end
return reverse
