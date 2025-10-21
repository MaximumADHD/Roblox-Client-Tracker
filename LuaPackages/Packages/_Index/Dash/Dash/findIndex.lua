export type FindHandler<Value> = (Value, number) -> boolean

--[=[
	Returns the index of the first element in the _input_ array that satisfies the _handler_ predicate.

	@param input The array to search.
	@param handler Function called as `(value, index)` for each element; return `true` to select the index.
	@return The index of the first matching element, or `nil` if no elements satisfy the condition.
]=]
local function findIndex<Value>(input: { Value }, handler: FindHandler<Value>): number?
	for key, child in ipairs(input) do
		if handler(child, key) then
			return key
		end
	end
	return nil
end

return findIndex
