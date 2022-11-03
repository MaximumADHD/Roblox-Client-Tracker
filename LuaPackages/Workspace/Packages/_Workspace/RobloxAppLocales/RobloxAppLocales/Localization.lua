local RobloxAppLocales = script:FindFirstAncestor("RobloxAppLocales")
local Package = RobloxAppLocales.Parent
local LocalizationContext = require(Package.Localization).LocalizationContext
local AppCommonLib = require(Package.AppCommonLib)
local Signal = AppCommonLib.Signal

local LocaleTables = script.Parent.Locales

type Arguments = {
	[string]: any,
}

export type Localization = {
	new: (string) -> Localization,
	mock: () -> Localization,
	SetLocale: (Localization, string) -> (),
	GetLocale: (Localization) -> string,
	Format: (Localization, string, Arguments?) -> string,

	locale: string,
	changed: AppCommonLib.Signal,
	localizationContext: any, -- LUAU TODO: Implement this type
}

local function loadTables(locale: string)
	local relevantLanguages = LocalizationContext.getRelevantLanguages(locale)
	local translations = {}
	for _, language in ipairs(relevantLanguages) do
		local languageTable = LocaleTables:FindFirstChild(language)
		if languageTable then
			translations[language] = require(languageTable) :: any
		end
	end
	return translations
end

local Localization: Localization = {} :: Localization;
(Localization :: any).__index = Localization

function Localization.new(locale: string): Localization
	local self = {
		locale = locale,
		changed = Signal.new(),
		localizationContext = LocalizationContext.new(loadTables(locale)),
	}
	setmetatable(self, Localization)
	return (self :: any) :: Localization
end

function Localization.mock()
	-- when running tests, use a mock object to get off the ground quickly
	return Localization.new("en-us")
end

function Localization:SetLocale(locale: string): ()
	self.locale = locale
	local translations = loadTables(locale)
	self.localizationContext:addTranslations(translations)
	self.changed:fire()
end

function Localization:GetLocale(): string
	return self.locale
end

function Localization:Format(key: string, arguments: Arguments?): string
	if not key then
		error("ERROR: NO STRING FOR KEY")
	end

	local string = self.localizationContext:getString(self.locale, key, arguments)
	return string
end

return Localization
