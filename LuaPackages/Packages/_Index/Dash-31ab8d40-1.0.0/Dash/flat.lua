--[[
	Flattens the input array by a single level.

	Outputs a new array of elements merged from the _input_ array arguments in left-to-right order.
]]
local Dash = script.Parent
local append = require(Dash.append)
local forEach = require(Dash.forEach)

-- TODO Luau: Support function generics
local function flat(input: { any }): { any }
	local result = {}
	forEach(input, function(childArray: { any })
		append(result, childArray)
	end)
	return result
end

return flat
