game:DefineFastFlag("IsVRSkyboxStatic", false)

return function()
    return game:GetEngineFeature("EnableMaquettesSupport")  -- enable with FFlag: UserMaquettesSupportEnabled
        or game:GetFastFlag("IsVRSkyboxStatic")
end
