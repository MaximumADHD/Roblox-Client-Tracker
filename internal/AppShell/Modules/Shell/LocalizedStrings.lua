-- Written by Kip Turner, Copyright Roblox 2015
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))
local enUS = require(Modules:FindFirstChild('en-US'))

local defaultLocale = nil
local success = false
local LocaleId = nil
success, LocaleId = pcall(function() return game:GetService("LocalizationService").RobloxLocaleId end)

local this = {}

function this:GetLocale()
	local localeModule = Modules:FindFirstChild(LocaleId)
	if success and localeModule then
		defaultLocale = require(localeModule)
	else
		-- we don't have a country code for the module, so find it by language
		-- ex. we store Spanish as "es.lua"
		local languageCode = nil
		for lang in string.gmatch(LocaleId ,"([^-]+)") do
			local module = Modules:FindFirstChild(lang)
			if module then
				defaultLocale = require(module)
				break
			end
		end
	end

	if defaultLocale == nil then
		defaultLocale = enUS
	end

	return defaultLocale
end

function this:LocalizedString(stringKey)
	local locale = defaultLocale and defaultLocale or self:GetLocale()
	local result = locale and locale[stringKey]
	if not result then
		Utility.DebugLog("LocalizedString: Could not find string for:" , stringKey , "using locale:" , locale)
		result = enUS[stringKey] or stringKey
	end
	return result
end


return this
