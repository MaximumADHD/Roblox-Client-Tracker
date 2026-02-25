--[[
	Returns an element in the _input_ Table that the handler returns `true` for, when passed the
	`(child, key)` entry.

	Returns nil if no entries satisfy the condition.

	For an array, this first matching element is returned.

	For a Map, an arbitrary matching element is returned if it exists.
]]

export type FindHandler<Key, Value> = (Value, Key) -> boolean

local function find<Key, Value>(input: { [Key]: Value }, handler: FindHandler<Key, Value>): Value?
	for key, child in input do
		if handler(child, key) then
			return child
		end
	end
	return nil
end
return find
