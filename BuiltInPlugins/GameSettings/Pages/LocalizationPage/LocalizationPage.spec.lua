return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)
	local Framework = Plugin.Framework
	local ContextServices = require(Framework.ContextServices)

	local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	local LocalizationPage = require(Plugin.Pages.LocalizationPage.LocalizationPage)

	local function createTestLocalizationPage(startState)
		if not startState then
			startState = {
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
					AutoTranslationSettings = {},
					AutoTranslationTargetLanguages = {
						["es"] = true,
						["it"] = true,
					}
				},
				Changed = {},
				Warnings = {},
				Errors = {},
			}
		end

		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

		return provideMockContextForGameSettings({
			Store = ContextServices.Store.new(settingsStore)
		}, {
			place = Roact.createElement(LocalizationPage),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestLocalizationPage()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end