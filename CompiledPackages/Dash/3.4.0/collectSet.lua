local Dash = script.Parent
local Types = require(Dash.Types)

type CollectHandler<Key, Value, NewValue> = (key: Key, value: Value) -> NewValue?

--[=[
	Returns a new set built from iterating over _input_ and calling _handler_ for each `(key, value)`.

	If _handler_ is not provided, the values of _input_ are used directly. Values for which the _handler_ returns `nil` are skipped.

	@param input The table to iterate over.
	@param handler Optional function called as `(key, value)` for each entry.
	@return A new set containing each non-`nil` value returned by _handler_ (or each value of _input_ if no handler).
	@see `Dash.collectArray` to collect into an array while preserving insertion order for arrays.
]=]
local function collectSet<Key, Value, NewValue>(input: {}, handler: CollectHandler<Key, Value, NewValue>?): Types.Set<Value | NewValue>
	local result: Types.Set<Value | NewValue> = {}
	for key, child in input :: Types.Table do
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
