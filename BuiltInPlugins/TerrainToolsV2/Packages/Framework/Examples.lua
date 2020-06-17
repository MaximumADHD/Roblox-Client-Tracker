--[[
	Public interface for Examples
]]

local strict = require(script.Parent.Util.strict)

return strict({
	getComponents = require(script.getComponents),
	General = require(script.General),
	Render = require(script.Render),
})