--[[
	If no _handler_ is provided, return the number of elements in the _input_ [Table](#table).

	If the _handler_ is provided, increase the count for each element for which the handler returns true on the `(value, key)` pair.

	@example
	Dash.count({1, 2, 3, 4, 5}) --> 5

	@example
	-- Count the number of ids that start with 1
	Dash.count(
		{[12] = true, [24] = true, [153] = true, [199] = true},
		function(value, id) return tostring(id):sub(1, 1) == "1"
	end)
	-- Output: 3

	@example
	-- Count the number of numbers divisible by 5
	Dash.count(
		{1, 1, 2, 3, 5, 8, 13, 21, 34, 55},
		function(num) return num % 5 == 0
	end)

	-- Output: 2
]]

type CountHandler<Key, Value> = (Value, Key) -> boolean

local defaultHandler = function()
	return true
end

local function count<Key, Value>(input: { [Key]: Value }, handler: CountHandler<Key, Value>?): number
	local counter = 0
	local countHandler = handler or defaultHandler
	for key, value in input do
		if countHandler(value, key) then
			counter += 1
		end
	end
	return counter
end

return count
