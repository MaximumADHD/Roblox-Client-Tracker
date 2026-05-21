local insert = table.insert

--[=[
	Returns an array of the keys in the _input_ table.

	If the input is an array, ordering is preserved.
	If the input is a Map, elements are returned in an arbitrary order.

	@param input The table to extract keys from.
	@return An array containing all keys from the input table.
]=]
local function keys(input: {})
	local result = {}
	for key, _ in input do
		insert(result, key)
	end
	return result
end

return keys
