--[[
	Returns an array of the values in the _input_ Map.

	If the input is an array, ordering is preserved.

	If the input is a Map, elements are returned in an arbitrary order.
]]

local insert = table.insert

local function values<Key, Value>(input: { [Key]: Value }): { Value }
	local result: { Value } = {}
	for _, value in input do
		insert(result, value)
	end
	return result
end
return values
