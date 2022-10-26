game:DefineFastFlag("IsVRAppEnabled3", false)

return function()
    return game:GetEngineFeature("EnableMaquettesSupport")  -- enable with FFlag: UserMaquettesSupportEnabled
        or game:GetFastFlag("IsVRAppEnabled3")
end
