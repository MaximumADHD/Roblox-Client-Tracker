game:DefineFastFlag("HideSystemAppBarForVRLogin", false)

return function()
	return if game:GetEngineFeature("EnableMaquettesSupport") or game:GetFastFlag("HideSystemAppBarForVRLogin")
		then true
		else false
end
