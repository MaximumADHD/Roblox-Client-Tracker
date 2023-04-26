game:DefineFastFlag("EnableIGMv2VoiceReportFlows", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("EnableIGMv2VoiceReportFlows")
end
