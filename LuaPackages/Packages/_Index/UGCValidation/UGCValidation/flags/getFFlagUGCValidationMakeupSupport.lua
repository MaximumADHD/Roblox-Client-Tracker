game:DefineFastFlag("UGCValidateMakeupSupport3", false)

return function()
	return game:GetEngineFeature("EngineUGCValidateMakeupRules") and game:GetFastFlag("UGCValidateMakeupSupport3")
end
