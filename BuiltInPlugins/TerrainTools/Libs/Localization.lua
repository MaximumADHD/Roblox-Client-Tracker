-- Hack week 2018: a generic module for i18n.
-- Currently hardwired for Chinese.

local module = {}

local gLocalizationTable
local gTranslator
local gFallbackTranslator

module.SetLocalizationTable = function(table)
	gLocalizationTable = table

	local localeId
    local instance = game:GetService("StudioService");
    localeId = instance.StudioLocaleId;
	
	gTranslator = gLocalizationTable:GetTranslator(localeId)
	if (localeId ~= "en-us") then 
		gFallbackTranslator = gLocalizationTable:GetTranslator("en-us")
	end
end

module.GetTranslator = function()
	return gTranslator
end

module.TranslateId = function(stringId)
	local retVal
	local success = pcall(function()
		retVal = gTranslator:FormatByKey(stringId)
	end)
	if (not success and gFallbackTranslator) then 
		pcall(function()
			retVal = gFallbackTranslator:FormatByKey(stringId)
		end)
	end
	return retVal
end


return module
