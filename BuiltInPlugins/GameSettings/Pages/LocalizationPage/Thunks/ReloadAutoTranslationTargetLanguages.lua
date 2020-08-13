--[[
	Called when source langauge changed
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

local isCJV = require(Plugin.Src.Util.isCJV)

return function(sourceLanguage)
	return function(store, contextItems)
		local state = store:getState()
		local settings = state.Settings.Current

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
