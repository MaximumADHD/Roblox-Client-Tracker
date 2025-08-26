local Dash = script.Parent
local Types = require(Dash.Types)
local assertEqual = require(Dash.assertEqual)

export type MapHandler<Key, Value, NewValue> = (Value, Key) -> NewValue

--[=[
	Returns a new table by applying the _handler_ to each element of _input_.

	For an array input, the elements are visited in order 1..n.
	For a Map input, the elements are visited in an arbitrary order.

	Values returned by _handler_ must be defined.

	@param input The table to iterate over.
	@param handler Function called as `(value, key)` for each entry.
	@return A new table with the same keys but values replaced by handler results.
	@see `Dash.collectArray` if you want to return nil values.
]=]
local function map(input: {}, handler: MapHandler<any, any, any>): Types.Table
	local result = {}
	for key, child in input do
		local value = handler(child, key)
		assertEqual(value == nil, false, [[Returned nil from a Dash.map handler]])
		result[key] = value
	end
	return result
end

return map
