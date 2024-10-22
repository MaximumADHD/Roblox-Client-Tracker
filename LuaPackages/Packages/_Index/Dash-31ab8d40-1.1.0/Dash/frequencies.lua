--[[
	If no handler is provided, returns a [Map](#map) with keys as unique values of the _input_ [Table](#table) and values as the count of each value.

	If a handler is provided, returns a [Map](#map) with keys as unique elements given by the _handler_ and values as the count of each mapped key.

	@example
		Dash.frequencies({"Red", "Black", "Orange", "Red"})
		Output: {
			["Black"] = 1,
			["Orange"] = 1,
			["Red"] = 2
		}

	@example
		-- Count colors by simple definition of neutral and non-neutral
		function toNeutral(color)
			return if Dash.includes({ "Black", "Gray", "White" }, color) then "Neutral" else "Non-neutral"
		end

		Dash.frequencies({ "Black", "Orange", "Blue", "Gray", "White" }, function(color)
			return toNeutral(color)
		end)

		Output: {
			["Neutral"] = 3,
			["Non-neutral"] = 2
		}
]]
local Dash = script.Parent
local reduce = require(Dash.reduce)

type FrequenciesHandler<Key, Value, NewKey> = (Value, Key) -> NewKey

local function frequencies<Key, Value, NewKey>(
	input: { [Key]: Value },
	handler: FrequenciesHandler<Key, Value, NewKey>?
): { [NewKey | Value]: number }
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
