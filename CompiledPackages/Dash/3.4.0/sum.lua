local Dash = script.Parent
local reduce = require(Dash.reduce)

--[=[
	Sums all numbers in the _input_ array.

	If the input array has no elements, returns `0`.

	@param input The array of numbers to sum.
	@return The sum of all numbers in the array.
	@example
	```luau
		Dash.sum({3, 2, 1}) --> 6
	```
]=]
local function sum(input: { number }): number
	return reduce(input, function(acc: number, num)
		return acc + num
	end, 0)
end

return sum
