--[[
	Pure helper that maps an experience's source language code to its display name
	using the locale metadata returned by the Locale API's `v1/locales` endpoint.

	Kept separate from the network call so the mapping logic can be unit tested
	without hitting HttpService. Returns nil when no matching language is found.
]]
export type LocaleEntry = {
	locale: {
		locale: string,
		language: {
			languageCode: string,
			name: string,
			id: number?,
		},
	},
}

return function(localesData: { LocaleEntry }?, sourceLanguageCode: string?): string?
	if localesData == nil or sourceLanguageCode == nil then
		return nil
	end

	for _, entry in pairs(localesData) do
		local locale = entry.locale
		if locale and locale.language and locale.language.languageCode == sourceLanguageCode then
			return locale.language.name
		end
	end

	return nil
end
