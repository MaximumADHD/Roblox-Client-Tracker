game:DefineFastFlag("HideMorePageContentWithNoWebViewForVR", false)

return function()
	return if game:GetFastFlag("HideMorePageContentWithNoWebViewForVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
