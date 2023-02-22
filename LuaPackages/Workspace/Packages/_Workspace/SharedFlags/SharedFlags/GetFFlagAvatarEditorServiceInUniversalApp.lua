local EngineFeatureAvatarEditorServiceRecommendationsV2API =
	game:GetEngineFeature("AvatarEditorServiceRecommendationsV2API")

game:DefineFastFlag("AvatarEditorServiceInUniversalApp14", false)
return function()
	return game:GetFastFlag("AvatarEditorServiceInUniversalApp14")
		and EngineFeatureAvatarEditorServiceRecommendationsV2API
end
