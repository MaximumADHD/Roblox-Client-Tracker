--[[
	LayoutValuesProvider is a simple wrapper component that injects the
	specified services into context
]]
local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LayoutValues = require(Root.Services.LayoutValues)

local LayoutValuesContext = require(script.Parent.LayoutValuesContext)

return function(props)
	local layoutValues = LayoutValues.new(props.isTenFootInterface)	
	return Roact.createElement(LayoutValuesContext.Provider, {
		value = layoutValues.layout,
	}, Roact.oneChild(props[Roact.Children]))
end
