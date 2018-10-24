--[[
	LocalizationContextProvider is a simple wrapper component that injects the
	specified services into context
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local LocalizationContextKey = require(script.Parent.Parent.Parent.LocalizationContextKey)

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