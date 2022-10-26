game:DefineFastFlag("MaquettesCentralOverlay", false)

return function()
    return game:GetEngineFeature("EnableMaquettesSupport")  -- enable with FFlag: UserMaquettesSupportEnabled
        or game:GetFastFlag("MaquettesCentralOverlay")
end
