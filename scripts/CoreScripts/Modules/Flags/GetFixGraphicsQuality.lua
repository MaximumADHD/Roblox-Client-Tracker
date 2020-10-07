game:DefineFastFlag("FixGraphicsQuality", false)

return function()
	return game:GetFastFlag("FixGraphicsQuality") and game:GetEngineFeature("MatchingGraphicsQualityLevels")
end
