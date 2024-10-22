--[[
	Iterates through the elements of the _input_ Table.

	If the table is an array, it iterates in order 1..n.

	If the table is a Map, the keys are visited in an arbitrary order.

	Calls the _handler_ for each entry.
]]

export type ForEachHandler<Key, Value> = (Value, Key) -> ()

local function forEach<Key, Value>(input: { [Key]: Value }, handler: ForEachHandler<Key, Value>)
	for key, value in input do
		handler(value, key)
	end
end
return forEach
