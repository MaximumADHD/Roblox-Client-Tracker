--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LayoutValuesConsumer = require(script.Parent.LayoutValuesConsumer)

local function withLayoutValues(renderFunc)
	return Roact.createElement(LayoutValuesConsumer, {
		render = renderFunc,
	})
end

return withLayoutValues
