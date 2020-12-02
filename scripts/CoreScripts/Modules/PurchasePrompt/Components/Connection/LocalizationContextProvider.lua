--[[
	LocalizationContextProvider is a simple wrapper component that injects the
	specified services into context
]]
local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")

local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LocalizationContextKey = require(Root.Symbols.LocalizationContextKey)

local LocalizationContextProvider = Roact.Component:extend("LocalizationContextProvider")

function LocalizationContextProvider:init(props)
	assert(props.localizationContext, "Missing required prop 'localizationContext'")
	assert(props.render, "Missing required prop 'render'")

	self._context[LocalizationContextKey] = props.localizationContext
end

function LocalizationContextProvider:render()
	return self.props.render(LocalizationContextKey)
end

return LocalizationContextProvider
