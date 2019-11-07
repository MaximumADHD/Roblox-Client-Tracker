--[[
	LocalizationContextProvider is a simple wrapper component that injects the
	specified services into context
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

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