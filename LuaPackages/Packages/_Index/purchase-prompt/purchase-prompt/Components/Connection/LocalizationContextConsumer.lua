--[[
	LocalizationContextConsumer will extract the localization context
	object from Roact context and provide it to the given render callback

	Used for components that need to perform localization using this
	project's LocalizationService
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

local LocalizationContextKey = require(script.Parent.Parent.Parent.LocalizationContextKey)

local LocalizationContextConsumer = Roact.Component:extend("LocalizationContextConsumer")

function LocalizationContextConsumer:render()
	local localizationContext = self._context[LocalizationContextKey]

	return self.props.render(localizationContext)
end

return LocalizationContextConsumer
