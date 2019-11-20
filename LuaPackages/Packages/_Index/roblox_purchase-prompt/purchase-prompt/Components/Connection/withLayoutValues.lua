--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

local LayoutValuesConsumer_DEPRECATED = require(script.Parent.LayoutValuesConsumer_DEPRECATED)
local LayoutValuesConsumer = require(script.Parent.LayoutValuesConsumer)

local function withLayoutValues(renderFunc)
	if game:GetFastFlag("EnableRobuxABTest") then
		return Roact.createElement(LayoutValuesConsumer, {
			render = renderFunc,
		})
	else
		return Roact.createElement(LayoutValuesConsumer_DEPRECATED, {
			render = renderFunc,
		})
	end
end

return withLayoutValues