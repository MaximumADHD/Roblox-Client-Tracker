game:DefineFastFlag("EnablePreferredTextSizeStyleFixesInExperienceMenu", false)

return function()
	return game:GetEngineFeature("EnablePreferredTextSizeSetting") and game:GetFastFlag("EnablePreferredTextSizeStyleFixesInExperienceMenu")
end