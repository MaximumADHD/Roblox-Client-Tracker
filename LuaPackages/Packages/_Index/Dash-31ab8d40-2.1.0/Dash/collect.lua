--[[
	Collect returns a new Table derived from _input_ by iterating and calling
	the handler on each `(key, child)` tuple.

	The handler should return a new `(newKey, value)` tuple to be inserted into the returned Table,
	or `nil` if no value should be added.
]]
local Dash = script.Parent
local Types = require(Dash.Types)

export type CollectHandler<Key, Value, NewKey, NewValue> = (key: Key, value: Value) -> (NewKey?, NewValue?)

local function collect<Key, Value, NewKey, NewValue>(
	input: Types.Map<Key, Value>,
	handler: CollectHandler<Key, Value, NewKey, NewValue>
): Types.Map<NewKey, NewValue>
	local result = {}
	for key, child in input do
		local outputKey, outputValue = handler(key, child)
		if outputKey ~= nil then
			result[outputKey] = outputValue
		end
	end
	return result
end
return collect
