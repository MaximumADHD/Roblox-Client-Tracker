export type ReduceHandler<Key, Value, Accumulator> = (Accumulator, Value, Key) -> Accumulator

--[=[
	Iterates through the elements of the _input_ table and calls the _handler_ for each element,
	passing the return of the previous call as the first argument.

	The _initial_ value is passed into the first call, and the final value is returned by the function.

	@param input The array to iterate over.
	@param handler Function called as `(accumulator, value, key)` for each element.
	@param initial The initial value for the accumulator.
	@return The final accumulated value.
]=]
local function reduce<Accumulator>(input: {}, handler: ReduceHandler<any, any, Accumulator>, initial: any): Accumulator
	local result = initial
	for key, value in input do
		result = handler(result, value, key)
	end
	return result
end

return reduce
