game:DefineFastFlag("DeactivateGamepadForVRAvatarEditor", false)

return function()
	return if game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("DeactivateGamepadForVRAvatarEditor") then true else false
end
