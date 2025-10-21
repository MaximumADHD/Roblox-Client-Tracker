local Dash = script.Parent
local collectSet = require(Dash.collectSet)
local forEach = require(Dash.forEach)
local Types = require(Dash.Types)

--[=[
	Returns a new table made from entries in the _input_ table whose key is not in the _keys_ array.

	If the input is an array, ordering is preserved.
	If the input is a Map, elements are returned in an arbitrary order.

	@param input The table to filter.
	@param keys Array of keys to exclude from the result.
	@return A new table with the specified keys omitted.
]=]
local function omit(input: {}, keys: { any }): Types.Table
	local output = {}
	local keySet = collectSet(keys)
	forEach(input, function(_, key)
		if not keySet[key] then
			output[key] = input[key]
		end
	end)
	return output
end

return omit
