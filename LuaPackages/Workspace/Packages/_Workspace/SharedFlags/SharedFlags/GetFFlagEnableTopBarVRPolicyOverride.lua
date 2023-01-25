game:DefineFastFlag("EnableTopBarVRPolicyOverride", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("EnableTopBarVRPolicyOverride")
end