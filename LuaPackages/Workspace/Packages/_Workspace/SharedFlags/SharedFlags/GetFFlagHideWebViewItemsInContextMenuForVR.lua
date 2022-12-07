game:DefineFastFlag("HideWebViewItemsInContextMenuForVR", false)

return function()
	return if game:GetFastFlag("HideWebViewItemsInContextMenuForVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
