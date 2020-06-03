--[[
	Helper for supplying the current Roblox Locale to the Roact
	tree via context using the LocalizationContextProvider
]]
local Root = script.Parent.Parent.Parent

local LocalizationService = game:GetService("LocalizationService")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local getLocalizationContext = require(Root.Localization.getLocalizationContext)

local LocalizationContextProvider = require(script.Parent.LocalizationContextProvider)

local function provideRobloxLocale(renderFunc)
	return Roact.createElement(LocalizationContextProvider, {
		localizationContext = getLocalizationContext(LocalizationService.RobloxLocaleId),
		render = renderFunc
	})
end

return provideRobloxLocale