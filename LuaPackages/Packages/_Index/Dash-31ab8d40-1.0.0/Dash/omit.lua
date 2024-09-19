--[[
	Return a new Table made from entries in the _input_ Table whose key is not in the _keys_ array.

	If the input is an array, ordering is preserved.

	If the input is a Map, elements are returned in an arbitrary order.
]]
local Dash = script.Parent
local collectSet = require(Dash.collectSet)
local forEach = require(Dash.forEach)

local function omit<Key, Value>(input: { [Key]: Value }, keys: { Key }): { [Key]: Value }
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
