return function()
	return game:GetEngineFeature("UniversalAppOnWindows") or
		game:GetEngineFeature("UniversalAppOnMac") or
		game:GetEngineFeature("UniversalAppOnUWP")
end
