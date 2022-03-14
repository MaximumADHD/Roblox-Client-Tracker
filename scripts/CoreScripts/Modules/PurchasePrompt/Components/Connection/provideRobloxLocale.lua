--[[
	Helper for supplying the current Roblox Locale to the Roact
	tree via context using the LocalizationContextProvider
]]
local Root = script.Parent.Parent.Parent

local LocalizationService = game:GetService("LocalizationService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local getLocalizationContext = require(Root.Localization.getLocalizationContext)

local LocalizationContextProvider = require(script.Parent.LocalizationContextProvider)

return function(renderFunc)
	return Roact.createElement(LocalizationContextProvider, {
		localizationContext = getLocalizationContext(LocalizationService.RobloxLocaleId),
	}, {
		PurchasePromptApp = renderFunc(),
	})
end
