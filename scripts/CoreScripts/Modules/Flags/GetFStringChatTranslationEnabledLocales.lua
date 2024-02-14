--[[ Expected form of string is a comma separated list of locales
    ex: "en_us,ko_kr,ja_jp,de_de"
--]]
game:DefineFastString("ChatTranslationEnabledLocales", "")

return function()
    return game:GetFastString("ChatTranslationEnabledLocales")
end