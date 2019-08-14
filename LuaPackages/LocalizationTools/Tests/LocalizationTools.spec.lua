local Roact = require(game:GetService("CorePackages").Roact)
local LocalizationTools = require(script.Parent.Parent.Components.LocalizationTools)
local Promise = require(script.Parent.Parent.Promise)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(LocalizationTools, {
			StudioSettings = {
				Theme = {
					GetColor = function() return Color3.new(0,0,0) end,
				},
				ThemeChanged = {
					Connect = function() return {Disconnect = function() end} end,
				},
			},
			CheckTableAvailability = function()
				return Promise.new(function() end)
			end,
			GameIdChangedSignal = {
				Connect = function() end,
			},
			RobloxLocaleIdChangedSignal = {
				Connect = function() end,
			},
			AllLanguagesInfo = {
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
			},
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
