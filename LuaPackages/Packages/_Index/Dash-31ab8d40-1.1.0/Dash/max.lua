--[[
	Returns the maximum value in the _input_ [Table](#table). By default, this returns the greatest value in the table as defined by the `>` operator.

	If a _handler_ is provided, elements will first be transformed by `handler(value, key)` before being used for comparison.

	Elements will be compared using the _comparator_ if it is provided. The comparator should take two elements and return `true` if the first one is greater than the second one, and `false` otherwise.

	If the provided _input_ has no elements, return `nil`.

	@example
		Dash.max({1, 2, 3}) --> 3

	@example
		Dash.max({"1", "2", "10"}) --> "2"

	@example
		Dash.max({1, 2, 3}, function(num) return -num end) --> 1

	@example
		Dash.max(
			{"blue", "red", "orange"},
			nil,
			function(word1, word2) return word1:len() > word2:len() end
		) --> "orange"
]]

local Dash = script.Parent
local Types = require(Dash.Types)
local reduce = require(Dash.reduce)

-- Return true if a > b
type MaxComparator = (any, any) -> boolean
type MaxHandler = (any, any) -> any

local defaultComparator = function(a, b)
	return a > b
end

local function max(input: Types.Table, handler: MaxHandler?, comparator: MaxComparator?): number
	local comparatorFn = comparator or defaultComparator

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

return max
