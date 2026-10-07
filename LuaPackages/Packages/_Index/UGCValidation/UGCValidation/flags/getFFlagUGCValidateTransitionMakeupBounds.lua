game:DefineFastFlag("UGCValidateTransitionMakeupBounds", false)

return function()
	return game:GetEngineFeature("EngineUGCValidationUseFIntsInUVMinMaxBounds")
		and game:GetFastFlag("UGCValidateTransitionMakeupBounds")
end
