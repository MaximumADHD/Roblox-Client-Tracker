--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local LayoutValuesConsumer = require(script.Parent.LayoutValuesConsumer)

local function withLayoutValues(renderFunc)
	return Roact.createElement(LayoutValuesConsumer, {
		render = renderFunc,
	})
end

return withLayoutValues