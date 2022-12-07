game:DefineFastFlag("HideTopbarWebviewItemsForVR", false)

return function()
	return if game:GetFastFlag("HideTopbarWebviewItemsForVR") or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
