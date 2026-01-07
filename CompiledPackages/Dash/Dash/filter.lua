--[[
	Filter the _input_ Table by calling the handler on each `(child, index)` tuple.

	For an array input, the order of elements is prevered in the output.

	The handler should return truthy to preserve the value in the resulting Table.
]]

export type FilterHandler<Key, Value> = (Value, Key) -> boolean

local function filter<Key, Value>(input: { [Key]: Value }, handler: FilterHandler<Key, Value>): { Value }
	local result = {}
	for index, child in input do
		if handler(child, index) then
			table.insert(result, child)
		end
	end
	return result
end
return filter
