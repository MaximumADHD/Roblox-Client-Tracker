--[[
	Collect returns a new array derived from _input_ by iterating and calling
	the handler on each `(key, child)` tuple.

	The handler should return a new value to be pushed onto the end of the result array, or `nil`
	if no value should be added.
]]

local insert = table.insert

type CollectHandler<Key, Value, NewValue> = (key: Key, value: Value) -> NewValue?

local function collectArray<Key, Value, NewValue>(input: { [Key]: Value }, handler: CollectHandler<Key, Value, NewValue>): { NewValue }
	local result = {}
	for key, child in input do
		local outputValue = handler(key, child)
		if outputValue ~= nil then
			insert(result, outputValue)
		end
	end
	return result
end
return collectArray
