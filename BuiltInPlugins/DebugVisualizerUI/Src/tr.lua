local Plugin = script.Parent.Parent
local StudioService = game:GetService("StudioService")

local translationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local translationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local translator = translationReferenceTable:GetTranslator(StudioService.StudioLocaleId)
local fallbackTranslator = translationDevelopmentTable:GetTranslator("en-us")

return function(key, ...)

    local success, translation
    local args = {...}    

    success,translation = pcall(function()
        return translator:FormatByKey(key, args)
    end)

    if success then
        return translation
    end
    
    success,translation = pcall(function()
        return fallbackTranslator:FormatByKey(key, args)
    end)

    if success then
        return translation
    end

    return key
end