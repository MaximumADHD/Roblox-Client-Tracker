--[[
	Returns a shallow copy of the _input_ Table.
]]
local Dash = script.Parent
local Types = require(Dash.Types)
local assign = require(Dash.assign)

local function copy(input: Types.Table): Types.Table
	return assign({}, input)
end
return copy
