game:DefineFastFlag("UGCValidateMakeupSupport4", false)

return function()
	return game:GetEngineFeature("EngineUGCValidateMakeupRules") and game:GetFastFlag("UGCValidateMakeupSupport4")
end
