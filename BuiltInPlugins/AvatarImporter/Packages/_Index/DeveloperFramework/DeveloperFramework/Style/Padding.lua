--[[
	Uniform access for number and table padding types.
]]

local Framework = script.Parent.Parent
local strict = require(Framework.Util.strict)

local Dash = require(Framework.packages.Dash)
local collect = Dash.collect
local join = Dash.join
local map = Dash.map

local ZERO = {
	Left = 0,
	Top = 0,
	Right = 0,
	Bottom = 0,
}

local function expandPadding(value)
	if type(value) == "number" then
		return map(ZERO, function()
			return value
		end)
	elseif type(value) == "table" then
		return join(ZERO, collect(value, function(key, value)
			if ZERO[key] == nil then
				return nil
			else
				return key, value
			end
		end))
	elseif value == nil then
		return join(ZERO, {})
	else
		return nil
	end
end

return function(value)
	assert(value == nil or type(value) == "number" or type(value) == "table")

	local padding = expandPadding(value)
	return strict(join(padding, {
		Horizontal = padding.Left + padding.Right,
		Vertical = padding.Top + padding.Bottom,
	}))
end
