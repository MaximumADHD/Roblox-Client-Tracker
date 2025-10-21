export type FindHandler<Value> = (Value, number) -> boolean

--[=[
	Returns the last element in the _input_ array that satisfies the _handler_ predicate.

	If no _handler_ is provided, returns the last element of the array.
	If no entries satisfy the condition, returns `nil`.

	@param input The array to search.
	@param handler Optional function called as `(value, index)` for each element; return `true` to select the value.
	@return The last matching value, or `nil` if no elements satisfy the condition.
]=]
local function last<Value>(input: { Value }, handler: FindHandler<Value>?): Value?
	for index = #input, 1, -1 do
		local child = input[index]
		if not handler then
			return child
		end
		if handler and handler(child, index) then
			return child
		end
	end
	return nil
end

return last
