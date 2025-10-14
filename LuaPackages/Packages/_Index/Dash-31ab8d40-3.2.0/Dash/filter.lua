local Dash = script.Parent
local Types = require(Dash.Types)

export type FilterHandler<Key, Value> = (Value, Key) -> boolean

--[=[
	Returns a new array containing the elements of the _input_ table for which _handler_ returns truthy.

	For an array input, the order of elements is preserved in the output.
	For a Map/table input, elements are visited in an arbitrary order.

	@param input The table to filter.
	@param handler Function called as `(value, key)` for each entry; return truthy to include the value.
	@return A new array with only the values for which _handler_ returned truthy.
]=]
local function filter(input: {}, handler: FilterHandler<any, any>): Types.Table
	local result = {}
	for index, child in input do
		if handler(child, index) then
			table.insert(result, child)
		end
	end
	return result
end

return filter
