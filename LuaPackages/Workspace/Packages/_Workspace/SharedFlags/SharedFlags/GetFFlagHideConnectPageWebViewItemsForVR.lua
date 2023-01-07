game:DefineFastFlag("HideConnectPageWebViewItemsForVRV2", false)

return function()
	return if game:GetFastFlag("HideConnectPageWebViewItemsForVRV2")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
