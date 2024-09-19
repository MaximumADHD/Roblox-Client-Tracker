--[[
	Returns an array of the keys in the _input_ Table.

	If the input is an array, ordering is preserved.

	If the input is a Map, elements are returned in an arbitrary order.
]]

local insert = table.insert

local function keys<Key, Value>(input: { [Key]: Value }): { Key }
	local result = {}
	for key, _ in input do
		insert(result, key)
	end
	return result
end
return keys
