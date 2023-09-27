game:DefineFastFlag("EnableAccessibilitySettingsEffectsInExperienceChat", false)

return function()
	return game:GetEngineFeature("GameSettingsAccessibilityPropertiesEnabled")
		and game:GetFastFlag("EnableAccessibilitySettingsEffectsInExperienceChat")
end
