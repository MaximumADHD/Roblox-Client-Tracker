game:DefineFastFlag("EnableToastForDisabledWebViewItemsInVR", false)

return function()
	return if game:GetFastFlag("EnableToastForDisabledWebViewItemsInVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
