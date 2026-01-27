game:DefineFastFlag("UGCValidateMakeupSupport", false)

return function()
	return game:GetEngineFeature("EngineUGCValidateMakeupRules") and game:GetFastFlag("UGCValidateMakeupSupport")
end
