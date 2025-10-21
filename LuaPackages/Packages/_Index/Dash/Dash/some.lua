export type SomeHandler<Key, Value> = (Value, Key) -> boolean

--[=[
	Iterates through the elements of the _input_ table in no particular order.

	Calls the _handler_ for each entry and returns `true` if the handler returns truthy for any element which it is called with.

	@param input The table to iterate over.
	@param handler Function called as `(value, key)` for each entry; return truthy to indicate a match.
	@return `true` if any element matches the handler, `false` otherwise.
]=]
local function some(input: {}, handler: SomeHandler<any, any>): boolean
	for key, child in input do
		if handler(child, key) then
			return true
		end
	end
	return false
end

return some
