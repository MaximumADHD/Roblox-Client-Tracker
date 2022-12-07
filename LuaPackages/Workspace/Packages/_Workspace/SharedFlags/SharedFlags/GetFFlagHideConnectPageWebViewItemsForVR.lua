game:DefineFastFlag("HideConnectPageWebViewItemsForVR", false)

return function()
	return if game:GetFastFlag("HideConnectPageWebViewItemsForVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
