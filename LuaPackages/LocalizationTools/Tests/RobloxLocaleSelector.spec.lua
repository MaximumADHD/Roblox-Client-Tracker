local Roact = require(game:GetService("CorePackages").Roact)
local RobloxLocaleSelector = require(script.Parent.Parent.Components.RobloxLocaleSelector)
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
			localeCode = "en-us",
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
			Content = Roact.createElement(RobloxLocaleSelector, {
				AllLanguagesInfo = allLanguagesInfo,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("Test RobloxLocaleSelector.getTestLangInstructionText", function()
		assert(RobloxLocaleSelector.getTestLangInstructionText(allLanguagesInfo, "en-us") == "Cloud table will fetch translations for English (en)")
		assert(RobloxLocaleSelector.getTestLangInstructionText(allLanguagesInfo, "fil-ph") == "")
	end)
end
