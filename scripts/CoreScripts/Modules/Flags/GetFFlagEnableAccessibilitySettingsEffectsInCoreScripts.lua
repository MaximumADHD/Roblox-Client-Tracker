game:DefineFastFlag("EnableAccessibilitySettingsEffectsInCoreScripts2", false)

return function()
	return game:GetEngineFeature("GameSettingsAccessibilityPropertiesEnabled") and game:GetFastFlag("EnableAccessibilitySettingsEffectsInCoreScripts2")
end
