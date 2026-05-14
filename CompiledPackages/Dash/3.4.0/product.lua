local Dash = script.Parent
local reduce = require(Dash.reduce)

--[=[
	Multiplies all numbers in the _input_ array.

	If the _input_ has no elements, returns `1`.

	@param input The array of numbers to multiply.
	@return The product of all numbers in the array.
	@example
	```luau
		Dash.product({3, 3, 2}) --> 18
	```
]=]
local function product(input: { number }): number
	return reduce(input, function(acc: number, num)
		return acc * num
	end, 1)
end

return product
