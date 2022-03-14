--[[
	Helpful wrapper around LayoutValuesConsumer to make it a
	little less verbose to use
]]
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LayoutValuesContext = require(script.Parent.LayoutValuesContext)

return function(callback)
	assert(type(callback) == "function", "Expect withLayoutValues callback to be a function.")
	return Roact.createElement(LayoutValuesContext.Consumer, {
		render = callback
	})
end
