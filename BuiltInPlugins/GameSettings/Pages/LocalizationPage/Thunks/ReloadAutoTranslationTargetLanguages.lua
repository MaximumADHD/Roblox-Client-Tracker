--[[
	Called when source langauge changed
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local getAutoTranslatedLanguages = require(Plugin.Src.Util.GameSettingsUtilities).getAutoTranslatedLanguages

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

return function(sourceLanguage)
	return function(store, contextItems)
		local state = store:getState()
		local settings = state.Settings.Current

		local targetLanguages = getAutoTranslatedLanguages()[sourceLanguage]

		if not targetLanguages then
			local localizationPageController = contextItems.localizationPageController
			targetLanguages = localizationPageController:getAutoTranslationTargetLanguages(sourceLanguage)
		end
		settings = Cryo.Dictionary.join(settings, {
			AutoTranslationTargetLanguages = targetLanguages,
		})
		store:dispatch(SetCurrentSettings(settings))
	end
end
