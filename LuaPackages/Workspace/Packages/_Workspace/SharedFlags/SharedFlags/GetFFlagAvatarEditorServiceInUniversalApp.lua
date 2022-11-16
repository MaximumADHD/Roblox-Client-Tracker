local EngineFeatureAESEnabledForUA = game:GetEngineFeature("AESEnabledForUA")
local EngineFeatureHttpRequestWithErrorResponse =
	game:GetEngineFeature("AvatarEditorServiceHttpRequestWithErrorResponse")
local EngineFeatureAvatarEditorServiceSearchCatalogLimit30 =
	game:GetEngineFeature("AvatarEditorServiceSearchCatalogLimit30")
local EngineFeatureAESSaveRobloxSecurity = game:GetEngineFeature("AESSaveRobloxSecurity")

game:DefineFastFlag("AvatarEditorServiceInUniversalApp11", false)
return function()
	return EngineFeatureAESEnabledForUA
		and EngineFeatureHttpRequestWithErrorResponse
		and EngineFeatureAvatarEditorServiceSearchCatalogLimit30
		and EngineFeatureAESSaveRobloxSecurity
		and game:GetFastFlag("AvatarEditorServiceInUniversalApp11")
end
