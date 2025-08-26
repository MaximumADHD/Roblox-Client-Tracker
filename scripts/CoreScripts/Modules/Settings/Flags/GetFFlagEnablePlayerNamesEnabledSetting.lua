game:DefineFastFlag("EnablePlayerNamesEnabledSetting", false)

return function()
	return game:GetEngineFeature("EnablePlayerNamesEnabledSettingEngineFeature") and game:GetFastFlag("EnablePlayerNamesEnabledSetting")
end
