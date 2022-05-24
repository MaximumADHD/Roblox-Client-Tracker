local Plugin = script.Parent.Parent
local StudioService = game:GetService("StudioService")

local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings
local translator = LocalizedStrings:GetTranslator(StudioService.StudioLocaleId)
local fallbackTranslator = SourceStrings:GetTranslator("en-us")

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
