game:DefineFastFlag("AvatarEditorMaquettes3", false)

return function()
	return game:GetFastFlag("AvatarEditorMaquettes3") or game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
end
