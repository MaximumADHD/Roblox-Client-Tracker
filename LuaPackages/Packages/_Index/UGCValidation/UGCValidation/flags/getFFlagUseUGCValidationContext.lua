--!strict

game:DefineFastFlag("UseUGCValidationContext", false)

return function()
	return game:GetFastFlag("UseUGCValidationContext")
		and game:GetEngineFeature("EngineUGCValidateEditableMeshAndImage")
end
