local Dash = script.Parent
local Types = require(Dash.Types)
local reduce = require(Dash.reduce)

type FrequenciesHandler<Key, Value, NewKey> = (Value, Key) -> NewKey

--[=[
	Returns a map counting the frequency of unique values in the _input_ table.

	If no _handler_ is provided, counts occurrences of each unique value.
	If a _handler_ is provided, counts occurrences of each unique mapped key.

	@param input The table to count frequencies from.
	@param handler Optional function called as `(value, key)` to map values to keys before counting.
	@return A map with keys as unique values/mapped keys and values as their counts.
	@example
	```luau
		Dash.frequencies({"Red", "Black", "Orange", "Red"}) --> {["Black"] = 1, ["Orange"] = 1, ["Red"] = 2}
	```
	@example
	```luau
		-- Count colors by neutral vs non-neutral
		function toNeutral(color)
			return if Dash.includes({ "Black", "Gray", "White" }, color) then "Neutral" else "Non-neutral"
		end
		Dash.frequencies({ "Black", "Orange", "Blue", "Gray", "White" }, function(color)
			return toNeutral(color)
		end) --> {["Neutral"] = 3, ["Non-neutral"] = 2}
	```
]=]
local function frequencies(input: {}, handler: FrequenciesHandler<any, any, any>?): Types.Table
	return reduce(input, function(acc, value, key)
		local newKey = if handler then handler(value, key) else value
		if acc[newKey] == nil then
			acc[newKey] = 1
		else
			acc[newKey] += 1
		end
		return acc
	end, {})
end

return frequencies
