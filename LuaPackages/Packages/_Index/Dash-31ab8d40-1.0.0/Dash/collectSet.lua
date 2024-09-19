--[[
	Build a set from the entries of the _input_ Table, calling _handler_ on each entry and using
	the returned value as an element to add to the set.

	If _handler_ is not provided, values of `input` are used as elements.
]]
local Dash = script.Parent
local Types = require(Dash.Types)

type CollectHandler<Key, Value, NewValue> = (key: Key, value: Value) -> NewValue?

local function collectSet<Key, Value, NewValue>(
	input: { [Key]: Value },
	handler: CollectHandler<Key, Value, NewValue>?
): Types.Set<Value | NewValue>
	local result: Types.Set<Value | NewValue> = {}
	for key, child in input do
		local outputValue
		if handler == nil then
			outputValue = child
		else
			outputValue = handler(key, child)
		end
		if outputValue ~= nil then
			result[outputValue] = true
		end
	end
	return result
end
return collectSet
