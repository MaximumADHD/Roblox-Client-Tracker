game:DefineFastFlag("VRAppScreenSize", false)

return function()
    return game:GetEngineFeature("EnableMaquettesSupport")  -- enable with FFlag: UserMaquettesSupportEnabled
        or game:GetFastFlag("VRAppScreenSize")
end
