game:DefineFastFlag("UseGridPageLayoutInVR", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("UseGridPageLayoutInVR")
end
