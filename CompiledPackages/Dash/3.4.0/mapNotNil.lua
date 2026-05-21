local Dash = script.Parent
local Types = require(Dash.Types)

export type MapHandler<Key, Value, NewValue> = (Value, Key) -> NewValue

--[=[
	Returns a new table by applying the _handler_ to each element of _input_.

	For a Map input, the elements are visited in an arbitrary order.

	If a nil value is returned from the handler, the associated key is _not_ added
	to the new table.

	@param input The table to iterate over.
	@param handler Function called as `(value, key)` for each entry.
	@return A new table with the same keys but values replaced by handler results.
	Nil results are deleted from the table.
]=]
local function mapNotNil(input: {}, handler: MapHandler<any, any, any>): Types.Table
	local result = {}
	for key, child in input do
		local value = handler(child, key)
		if value ~= nil then
			result[key] = value
		end
	end
	return result
end

return mapNotNil
