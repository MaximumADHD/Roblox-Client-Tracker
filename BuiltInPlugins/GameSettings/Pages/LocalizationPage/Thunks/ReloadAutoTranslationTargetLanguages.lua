--[[
	Called when source langauge changed
]]

local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)

local getAutoTranslatedLanguages = require(Plugin.Src.Util.GameSettingsUtilities).getAutoTranslatedLanguages

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

-- TODO: jbousellam - 3/16/21 - remove with FFlagStudioCreatePluginPolicyService
local isCJV = require(Plugin.Src.Util.isCJV)

return function(sourceLanguage)
	return function(store, contextItems)
		local state = store:getState()
		local settings = state.Settings.Current

		if FFlagStudioCreatePluginPolicyService then
			local targetLanguages = getAutoTranslatedLanguages()[sourceLanguage]

			if not targetLanguages then
				local localizationPageController = contextItems.localizationPageController
				targetLanguages = localizationPageController:getAutoTranslationTargetLanguages(sourceLanguage)
			end
			settings = Cryo.Dictionary.join(settings, {
				AutoTranslationTargetLanguages = targetLanguages,
			})
			store:dispatch(SetCurrentSettings(settings))
		else
			if isCJV() and sourceLanguage == "en" then
				settings = Cryo.Dictionary.join(settings, {
					AutoTranslationTargetLanguages = {["zh-hans"] = true},
				})
				store:dispatch(SetCurrentSettings(settings))
			else
				local localizationPageController = contextItems.localizationPageController
				local targetLanguages = localizationPageController:getAutoTranslationTargetLanguages(sourceLanguage)
				settings = Cryo.Dictionary.join(settings, {
					AutoTranslationTargetLanguages = targetLanguages,
				})
				store:dispatch(SetCurrentSettings(settings))
			end
		end
	end
end
