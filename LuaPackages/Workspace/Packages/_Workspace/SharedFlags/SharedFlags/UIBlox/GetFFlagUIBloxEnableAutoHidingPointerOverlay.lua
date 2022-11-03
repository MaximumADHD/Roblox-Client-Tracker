game:DefineFastFlag("UIBloxEnableAutoHidingPointerOverlay", false)

return function()
	return if (
			game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
			or game:GetFastFlag("UIBloxEnableAutoHidingPointerOverlay")
		)
		then true
		else false
end
