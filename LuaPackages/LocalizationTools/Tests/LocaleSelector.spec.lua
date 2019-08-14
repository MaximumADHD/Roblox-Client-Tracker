local Roact = require(game:GetService("CorePackages").Roact)
local LocaleSelector = require(script.Parent.Parent.Components.LocaleSelector)
local Theming = require(script.Parent.Parent.Theming)

local allLanguagesInfo = {
	localeInfoTable = {
		["en_us"] = {
			languageName = "English",
			languageCode = "en",
		},
		["zh_cn"] = {
			languageName = "Chinese (Simplified)",
			languageCode = "zh_hans",
		}
	},
	languageInfoTable = {
		["en"] = {
			languageName = "English",
			localeCode = "en_us",
		},
		["zh_hans"] = {
			languageName = "Chinese (Simplified)",
			localeCode = "zh_cn",
		}
	},
}

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(LocaleSelector, {
				LocaleId = "en_us",
				GetLocaleId = function() end,
				SetLocaleId = function() end,
				LocaleIdChangedSignal = {
					Connect = function() end,
				},
				AllLanguagesInfo = allLanguagesInfo,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("Test LocaleSelector.getMenuTextForLocale", function()
		assert(LocaleSelector.getMenuTextForLocale(allLanguagesInfo, "en-us") == "English")
		assert(LocaleSelector.getMenuTextForLocale(allLanguagesInfo, "fil-ph") == "(Custom)")
	end)
end
