--[[
	Iterates through a table and returns a list of keys
]]
local function SetToList(tableAsSet)
	local result = {}
	for key in pairs(tableAsSet) do
		table.insert(result, key)
	end
	return result
end

local function SetToSortedList(tableAsSet)
	local result = SetToList(tableAsSet)
	table.sort(result)
	return result
end

--[[
	Converts a list of entries (as returned by LocalizationTalbe:GetEntries())
	into a list of entries (the kind that the web understands)

	Returns an info object including the list of entries (called entries) and also
	some stats gathered during the conversion process:
	totalRows = number of rows converted
	totalTranslations = number of translated entries converted
	supportedLocales = a list of all locales encountered
		joined with spaces into a string, i.e. "en es"
	unsupportedLocales = a list of all unsupported locales encountered
		joined with spaces into a string, i.e. "en-gb es-mx"
]]
return function(rbxEntries, allSupportedLanguageSet, gameSupportedLanguageSet)
	local entries = {}
	local totalRows = 0
	local totalTranslations = 0
	local supportedSet = {}
	local unsupportedSet = {}
	local newSet = {}

	--[[
		Takes a translation map as given by LocalizationTable:GetEntries()
		and creates an entry in the translations list in the object that the web understands

		Notes any locales it encounters in supportedList
		Unless the locale isn't supported, in which case it goes in unsupportedlist, and does not
		get included in the result.
	]]

	local function IsLanguageSupported(languageCode)
		return allSupportedLanguageSet[languageCode] or false
	end

	local function RbxEntriesToTranslationEntries(translationMap)
		local result = {}

		for locale, text in pairs(translationMap) do
			local languageCode = locale:lower()
			if IsLanguageSupported(languageCode) then
				table.insert(result, {
					-- this is actually language instead of locale
					locale = languageCode,
					translationText = text,
				})
				supportedSet[languageCode] = true
				totalTranslations = totalTranslations + 1

				if gameSupportedLanguageSet ~= nil and not gameSupportedLanguageSet[languageCode] then
					newSet[languageCode] = true
				end
			else
				unsupportedSet[locale] = true
			end
		end

		return result
	end

	for _, entry in ipairs(rbxEntries) do
		local translations = RbxEntriesToTranslationEntries(entry.Values)
		table.insert(entries,
			{
				identifier = {
					key = entry.Key or "",
					context = entry.Context or "",
					source = entry.Source or "",
				},
				metadata = {
					example = entry.Example or ""
				},
				translations = translations,
				delete = false,
			}
		)

		totalRows = totalRows + 1
	end

	return {
		entries = entries,

		totalRows = totalRows,
		totalTranslations = totalTranslations,
		supportedLocales = table.concat(SetToSortedList(supportedSet), ", "),
		unsupportedLocales = table.concat(SetToSortedList(unsupportedSet), ", "),
		newLanguages = table.concat(SetToSortedList(newSet), ", "),
		newLanguagesSet = newSet,
	}
end
