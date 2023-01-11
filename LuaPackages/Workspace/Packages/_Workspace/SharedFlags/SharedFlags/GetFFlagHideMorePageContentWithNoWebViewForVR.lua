game:DefineFastFlag("HideMorePageContentWithNoWebViewForVRV2", false)

return function()
	return if game:GetFastFlag("HideMorePageContentWithNoWebViewForVRV2")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
