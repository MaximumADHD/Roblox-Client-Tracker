game:DefineFastFlag("EnableAccessibilitySettingsInExperienceMenu", false)

return function()
	return game:GetEngineFeature("GameSettingsAccessibilityPropertiesEnabled") and game:GetFastFlag("EnableAccessibilitySettingsInExperienceMenu")
end
