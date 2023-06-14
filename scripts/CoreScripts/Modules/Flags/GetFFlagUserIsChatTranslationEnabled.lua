local success, flagValue = pcall(function ()
    return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled")
end)

return function()
    return success and flagValue
end
