local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	languagesTable = {},
	languagesList = {},
}, {
	LoadLanguages = function(state, action)
		local data = action.data
		local resTable = {}
		local resList: { [number]: any } = {}
		for _, localeInfo in pairs(data) do
			resTable[localeInfo.locale.locale] = {
				localeId = localeInfo.locale.locale,
				languageCode = localeInfo.locale.language.languageCode,
				displayText = localeInfo.locale.language.name,
			}
			table.insert(resList, {
				localeId = localeInfo.locale.locale,
				displayText = localeInfo.locale.language.name,
			})
		end

		table.sort(resList, function(a, b)
			return a.displayText < b.displayText
		end)

		local customLanguage = {
			isCustom = true,
			displayTextSectionKey = "LanguageSection",
			displayTextStringKey = "CustomLanguageDisplayText",
		}

		table.insert(resList, customLanguage)

		return Cryo.Dictionary.join(state, {
			languagesTable = resTable,
			languagesList = resList,
		})
	end
})
