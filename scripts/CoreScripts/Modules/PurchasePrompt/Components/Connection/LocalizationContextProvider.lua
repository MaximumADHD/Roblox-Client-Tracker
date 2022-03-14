--[[
	LocalizationContextProvider is a simple wrapper component that injects the
	specified services into context
]]
local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LocalizationContext = require(script.Parent.LocalizationContext)

return function(props)
	return Roact.createElement(LocalizationContext.Provider, {
		value = props.localizationContext,
	}, Roact.oneChild(props[Roact.Children]))
end
