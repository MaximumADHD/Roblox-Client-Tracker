--[[
	LocalizationContextProvider is a simple wrapper component that injects the
	specified services into context
]]
local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

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