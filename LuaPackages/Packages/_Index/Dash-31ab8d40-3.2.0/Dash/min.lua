local Dash = script.Parent
local reduce = require(Dash.reduce)

-- Return true if a < b
type MinComparator = (any, any) -> boolean
type MinHandler = (any, any) -> any

local defaultComparator = function(a, b)
	return a < b
end

-- TODO (AleksandrSl 03/06/2024): Can be further "optimized" by writing a compare function that will do all the stuff and pass default comparator
--[=[
	Returns the minimum value in the _input_ table. By default, this returns the least value in the table as defined by the `<` operator.

	If a _handler_ is provided, elements will first be transformed by `handler(value, key)` before being used for comparison.

	Elements will be compared using the _comparator_ if it is provided. The comparator should take two elements and return `true` if the first one is less than the second one, and `false` otherwise.

	If the provided _input_ has no elements, returns `nil`.

	@param input The table to find the minimum value from.
	@param handler Optional function called as `(value, key)` to transform values before comparison.
	@param comparator Optional function called as `(a, b)` to compare two values.
	@return The minimum value, or `nil` if the input is empty.

	@example
	```luau
		Dash.min({1, 2, 3}) --> 1
	```
	@example
	```luau
		Dash.min({"2", "20", "10"}) --> "10"
	```
	@example
	```luau
		Dash.min({3, 2, 1}, function(num) return -num end) --> 3
	```
	@example
	```luau
		Dash.min(
			{"blue", "red", "orange"},
			nil,
			function(word1, word2) return word1:len() < word2:len() end
		) --> "red"
	```
]=]
local function min<T>(input: { T }, handler: MinHandler?, comparator: MinComparator?): T
	local comparatorFn: MinComparator = comparator or defaultComparator

	if handler then
		local accumulator = reduce(input, function(acc, value, key)
			local newValue = handler(value, key)
			if not acc then
				return { value = newValue, original = value }
			end
			return if comparatorFn(newValue, acc.value) then { value = newValue, original = value } else acc
		end, nil)
		return accumulator.original
	end

	return reduce(input, function(acc, value)
		if not acc then
			return value
		end
		return if comparatorFn(value, acc) then value else acc
	end, nil)
end

return min
