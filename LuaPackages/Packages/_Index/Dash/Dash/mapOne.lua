export type MapHandler<Key, Value, NewValue> = (Value, Key) -> NewValue?

--[=[
	Iterates through the elements of the _input_ table in no particular order and returns the first non-nil value.

	If a _handler_ is provided, returns the first non-nil value returned by the handler.
	If no _handler_ is provided, returns the first value visited.
	If all values are `nil`, `nil` is returned.

	@param input The table to iterate over.
	@param handler Optional function called as `(value, key)` for each element.
	@return The first non-nil value, or `nil` if all values are `nil`.
]=]
local function mapOne(input: {}, handler: MapHandler<any, any, any>?): any?
	for key, child in input do
		local output
		if handler then
			output = handler(child, key)
		else
			output = child
		end
		if output ~= nil then
			return output
		end
	end
	return nil
end

return mapOne
