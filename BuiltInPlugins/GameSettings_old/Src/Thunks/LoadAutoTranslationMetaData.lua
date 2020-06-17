--[[
	Load and cache target auto translation languages given source languages
]]

local Plugin = script.Parent.Parent.Parent
local LoadedAutoTranslationTargetLanguages = require(Plugin.Src.Actions.LoadedAutoTranslationTargetLanguages)
local GetAutoTranslationTargetLanguages =
	require(Plugin.Src.Networking.Requests.LocalizationSettings.AutoTranslationTargetLanguages).Get
local isCJV = require(Plugin.Src.Util.isCJV)

return function(sourceLanguage)
	return function(store)
		local state = store:getState()
		if state.AutoTranslationMetaData[sourceLanguage] ~= nil then
			return
		end
		if isCJV() and sourceLanguage == "en" then
			store:dispatch(LoadedAutoTranslationTargetLanguages("en", {["zh-hans"] = true}))
		else
			spawn(function()
				local success, targetLanguages = GetAutoTranslationTargetLanguages(sourceLanguage):await()
				if success then
					store:dispatch(LoadedAutoTranslationTargetLanguages(sourceLanguage, targetLanguages))
				end
			end)
		end
	end
end