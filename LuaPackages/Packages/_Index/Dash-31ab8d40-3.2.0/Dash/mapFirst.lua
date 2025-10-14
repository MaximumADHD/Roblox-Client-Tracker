export type MapHandler<Value, NewValue> = (Value, number) -> NewValue?

--[=[
	Iterates through the elements of the _input_ array in order 1..n and returns the first non-nil value from the _handler_.

	If all values returned by the _handler_ are `nil`, `nil` is returned.

	@param input The array to iterate over.
	@param handler Function called as `(value, index)` for each element.
	@return The first non-nil value returned by the handler, or `nil` if all return `nil`.
]=]
local function mapFirst<Value, NewValue>(input: { Value }, handler: MapHandler<Value, NewValue>): NewValue?
	for index, child in ipairs(input) do
		local output = handler(child, index)
		if output ~= nil then
			return output
		end
	end
	return nil
end

return mapFirst
