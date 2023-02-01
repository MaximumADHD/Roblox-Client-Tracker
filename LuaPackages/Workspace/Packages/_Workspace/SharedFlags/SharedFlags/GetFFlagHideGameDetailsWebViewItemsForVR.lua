game:DefineFastFlag("HideGameDetailsWebViewItemsForVR", false)

return function()
	return if game:GetFastFlag("HideGameDetailsWebViewItemsForVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
