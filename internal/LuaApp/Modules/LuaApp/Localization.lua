
local HttpService = game:GetService("HttpService")

local Localization = {}
Localization.__index = Localization

function Localization.new(stringsLocale, locale)

	local self = {
		stringsLocale = stringsLocale,
		locale = locale,
	}
	setmetatable(self, {
		__index = Localization,
	})

	local table = Instance.new("LocalizationTable")
	table.SourceLocaleId = "en-us"
	local content = HttpService:JSONEncode(self.stringsLocale.Content)
	table:SetContents(content)
	self.table = table

	self.keyToFallbackLanguage = {}
	for _, entry in ipairs(self.stringsLocale.Content) do
		self.keyToFallbackLanguage[entry.key] = self:FindFallback(locale, entry.values)
	end

	return self
end

function Localization:GetLocale(locale, languages)
	if languages[locale] then
		return locale
	end
	return nil
end

function Localization:GetDefaultDialect(locale, languages)
	local language = locale:sub(1, 2)
	for otherLanguage, _ in pairs(languages) do
		if otherLanguage == language then
			return language
		end
	end
end

function Localization:GetAlternativeDialect(locale, languages)
	for otherLanguage, _ in pairs(languages) do
		if otherLanguage:sub(1, 2) == locale then
			return otherLanguage
		end
	end
	return nil
end

function Localization:FindFallback(locale, languages)
	local language = self:GetLocale(locale, languages)
	if language ~= nil then
		return language
	end

	language = self:GetDefaultDialect(locale, languages)
	if language ~= nil then
		return language
	end

	language = self:GetAlternativeDialect(locale, languages)
	if language ~= nil then
		return language
	end

	return self.stringsLocale.DefaultLanguage
end

function Localization:Format(key, arguments)
	if not key then
		error("ERROR: NO STRING FOR KEY")
	end

	local string = self.table:GetString(self.keyToFallbackLanguage[key], key)
	if arguments ~= nil then
		for name, value in pairs(arguments) do
			string = string:gsub("{%s*"..name.."%s*}", value)
		end
	end
	return string
end

return Localization