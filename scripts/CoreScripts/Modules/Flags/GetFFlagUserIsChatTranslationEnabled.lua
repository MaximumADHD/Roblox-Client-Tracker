local success, flagValue = pcall(function ()
    return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)

return function()
    return success and flagValue
end
