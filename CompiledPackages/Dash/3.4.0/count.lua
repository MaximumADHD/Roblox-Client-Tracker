type CountHandler<Key, Value> = (Value, Key) -> boolean

local defaultHandler = function()
	return true
end

--[=[
	Returns the number of elements in _input_, optionally counting only those for which _handler_ returns true on the `(value, key)` pair.

	If _handler_ is not provided, all elements are counted. Iteration order over tables is unordered.

	@param input The table to count elements from.
	@param handler Optional function called as `(value, key)` for each element; return `true` to count the element.
	@return The count of elements that match the handler (or total count if no handler).

	@example
	```luau
		Dash.count({1, 2, 3, 4, 5}) --> 5
	```

	@example
	```luau
		-- Count the number of ids that start with 1
		Dash.count(
			{[12] = true, [24] = true, [153] = true, [199] = true},
			function(value, id) return tostring(id):sub(1, 1) == "1" end
		) --> 3
	```

	@example
	```luau
		-- Count the numbers divisible by 5
		Dash.count(
			{1, 1, 2, 3, 5, 8, 13, 21, 34, 55},
			function(num) return num % 5 == 0 end
		) --> 2
	```
]=]
local function count(input: {}, handler: CountHandler<any, any>?): number
	local counter = 0
	local countHandler: CountHandler<any, any> = handler or defaultHandler
	for key, value in input do
		if countHandler(value, key) then
			counter += 1
		end
	end
	return counter
end

return count
