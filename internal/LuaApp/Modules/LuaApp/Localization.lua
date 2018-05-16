local Modules = game:GetService("CoreGui").RobloxGui.Modules

local LocaleTables = Modules.LuaApp.Locales
local LocalizationContext = require(Modules.LuaApp.LocalizationContext)


local function loadTables(locale)
	local relevantLanguages = LocalizationContext.getRelevantLanguages(locale)
	local translations = {}
	for _,language in ipairs(relevantLanguages) do
		local languageTable = LocaleTables:FindFirstChild(language)
		if languageTable then
			translations[language] = require(languageTable)
		end
	end
	return translations
end

local Localization = {}
Localization.__index = Localization

function Localization.new(locale)

	local self = {
		locale = locale,
	}
	setmetatable(self, {
		__index = Localization,
	})

	local translations = loadTables(locale)
	self.localizationContext = LocalizationContext.new(translations)
	return self
end

function Localization.mock()
	-- when running tests, use a mock object to get off the ground quickly
	return Localization.new("en-us")
end

function Localization:SetLocale(locale)
	self.locale = locale
	local translations = loadTables(locale)
	self.localizationContext:addTranslations(translations)
end

function Localization:Format(key, arguments)
	if not key then
		error("ERROR: NO STRING FOR KEY")
	end

	local string = self.localizationContext:getString(self.locale, key, arguments)
	return string
end

return Localization