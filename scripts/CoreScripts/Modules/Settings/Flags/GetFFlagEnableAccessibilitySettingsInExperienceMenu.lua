game:DefineFastFlag("EnableAccessibilitySettingsInExperienceMenu2", false)

return function()
	return game:GetEngineFeature("GameSettingsAccessibilityPropertiesEnabled") and game:GetFastFlag("EnableAccessibilitySettingsInExperienceMenu2")
end
