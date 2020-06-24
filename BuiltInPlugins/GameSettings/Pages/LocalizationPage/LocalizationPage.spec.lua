return function()
	SKIP()

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local LocalizationPage = require(Plugin.Pages.LocalizationPage.LocalizationPage)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local function createTestLocalizationPage(startState)
		local settingsStore = Rodux.Store.new(
			MainReducer,
			startState,
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
			plugin = {},
			pluginGui = {},
			mouse = {},
		}, {
			localizationPage = Roact.createElement(LocalizationPage),
		})
	end

	local settings = {
		AutoTranslationMetaData = {
			["en"] = {
				["es"] = false,
				["zh-hans"] = true,
			},
			["zh-hans"] = {},
		},
		Settings = {
			Current = {
				SupportedLanguages = {
					["en"] = "English",
					["zh-hans"] = "Chinese(Simplified)",
				},
				LanguageCodeToNames = {
					["en"] = "English",
					["zh-hans"] = "Chinese(Simplified)",
				},
				IsAutomaticTranslationAllowed = true,
				SourceLanguage = "en",
				AutoTextCaptureEnabled = "true",
				UseTranslatedContentEnabled = "false",
				AutoTranslationSettings = {}
			},
			Changed = {}
		}
	}

	it("should create and destroy without errors", function()
		local element = createTestLocalizationPage()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with settings without errors", function()
		local element = createTestLocalizationPage(settings)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end