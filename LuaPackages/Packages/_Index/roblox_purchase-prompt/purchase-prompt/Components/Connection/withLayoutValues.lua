--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local LayoutValuesConsumer = require(script.Parent.LayoutValuesConsumer)

local function withLayoutValues(renderFunc)
	return Roact.createElement(LayoutValuesConsumer, {
		render = renderFunc,
	})
end

return withLayoutValues