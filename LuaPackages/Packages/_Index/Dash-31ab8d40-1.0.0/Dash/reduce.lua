--[[
	Iterate through the elements of the _input_ array in order 1..n.

	Call the _handler_ for each element, passing the return of the previous call as the first argument.

	The _initial_ value is passed into the first call, and the final value returned by the function.
]]

export type ReduceHandler<Key, Value, Accumulator> = (Accumulator, Value, Key) -> Accumulator

local function reduce<Key, Value, Accumulator>(
	input: { [Key]: Value },
	handler: ReduceHandler<Key, Value, Accumulator>,
	initial: Accumulator
): Accumulator
	local result = initial
	for key, value in input do
		result = handler(result, value, key)
	end
	return result
end

return reduce
