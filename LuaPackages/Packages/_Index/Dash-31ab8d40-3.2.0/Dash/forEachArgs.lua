export type ForEachArgsHandler<Value> = (Value, number) -> ()

--[=[
	Iterates through the tail arguments in order, including nil values up to the argument list length.

	@param handler Function called as `(value, index)` for each argument.
	@param ... Variable arguments to iterate over.
]=]
local function forEachArgs<Value>(handler: ForEachArgsHandler<Value>, ...: Value)
	for index = 1, select("#", ...) do
		handler(select(index, ...), index)
	end
end

return forEachArgs
