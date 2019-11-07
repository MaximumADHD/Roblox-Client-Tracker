--[[
	Helper for supplying the current Roblox Locale to the Roact
	tree via context using the LocalizationContextProvider
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(LuaPackages.Roact)

local LocalizationContextProvider = require(script.Parent.LocalizationContextProvider)

local getLocalizationContext = require(script.Parent.Parent.Parent.Localization.getLocalizationContext)

local function provideRobloxLocale(renderFunc)
	return Roact.createElement(LocalizationContextProvider, {
		localizationContext = getLocalizationContext(LocalizationService.RobloxLocaleId),
		render = renderFunc
	})
end

return provideRobloxLocale