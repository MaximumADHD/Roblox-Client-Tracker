local EngineFeatureAvatarEditorServiceRecommendationsV2API =
	game:GetEngineFeature("AvatarEditorServiceRecommendationsV2API")

game:DefineFastFlag("AvatarEditorServiceInUniversalApp12", false)
return function()
	return game:GetFastFlag("AvatarEditorServiceInUniversalApp12")
		and EngineFeatureAvatarEditorServiceRecommendationsV2API
end
