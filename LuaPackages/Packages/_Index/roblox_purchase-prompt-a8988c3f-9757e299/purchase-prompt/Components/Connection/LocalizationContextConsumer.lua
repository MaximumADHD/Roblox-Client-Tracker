--[[
	LocalizationContextConsumer will extract the localization context
	object from Roact context and provide it to the given render callback

	Used for components that need to perform localization using this
	project's LocalizationService
]]
local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local LocalizationContextKey = require(Root.Symbols.LocalizationContextKey)

local LocalizationContextConsumer = Roact.Component:extend("LocalizationContextConsumer")

function LocalizationContextConsumer:render()
	local localizationContext = self._context[LocalizationContextKey]

	return self.props.render(localizationContext)
end

return LocalizationContextConsumer
