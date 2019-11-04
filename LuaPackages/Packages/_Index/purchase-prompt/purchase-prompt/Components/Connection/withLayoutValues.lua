--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

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