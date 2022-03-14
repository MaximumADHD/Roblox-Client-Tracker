--[[
	LocalizationContextConsumer will extract the localization context
	object from Roact context and provide it to the given render callback

	Used for components that need to perform localization using this
	project's LocalizationService
]]
local LocalizationContext = require(script.Parent.LocalizationContext)

return LocalizationContext.Consumer
