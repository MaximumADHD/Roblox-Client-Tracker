--[[
	Pick entries in the _input_ Table which should remain in the output by calling the handler on
	each `(child, index)` tuple.

	The handler should return truthy to preserve the value in the resulting Table.
]]

export type PickHandler<Key, Value> = (Value, Key) -> boolean

local function pick<Key, Value>(input: { [Key]: Value }, handler: PickHandler<Key, Value>): { [Key]: Value }
	local result = {}
	for key, child in input do
		if handler(child, key) then
			result[key] = child
		end
	end
	return result
end
return pick
