local EngineFeatureAvatarEditorServiceRecommendationsV2API =
	game:GetEngineFeature("AvatarEditorServiceRecommendationsV2API")

game:DefineFastFlag("AvatarEditorServiceInUniversalApp13", false)
return function()
	return game:GetFastFlag("AvatarEditorServiceInUniversalApp13")
		and EngineFeatureAvatarEditorServiceRecommendationsV2API
end
