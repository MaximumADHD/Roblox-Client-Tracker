game:DefineFastFlag("AvatarEditorMaquettes2", false)

return function()
	return game:GetFastFlag("AvatarEditorMaquettes2") or game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
end
