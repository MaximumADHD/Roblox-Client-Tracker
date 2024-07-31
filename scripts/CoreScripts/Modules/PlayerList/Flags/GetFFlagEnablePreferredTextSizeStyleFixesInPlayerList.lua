game:DefineFastFlag("EnablePreferredTextSizeStyleFixesInPlayerList", false)

return function()
	return game:GetEngineFeature("EnablePreferredTextSizeSetting")
		and game:GetFastFlag("EnablePreferredTextSizeStyleFixesInPlayerList")
end