game:DefineFastFlag("UseCurvedPanel3D", false)

return function()
    return game:GetEngineFeature("EnableMaquettesSupport")  -- enable with FFlag: UserMaquettesSupportEnabled
        or game:GetFastFlag("UseCurvedPanel3D")
end
