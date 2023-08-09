game:DefineFastFlag("EnableAccessibilitySettingsEffectsInCoreScripts", false)

return function()
	return game:GetEngineFeature("GameSettingsAccessibilityPropertiesEnabled") and game:GetFastFlag("EnableAccessibilitySettingsEffectsInCoreScripts")
end
